// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';
import '../../../domain/employee/customer_search/i_customer_search_repo/i_customer_search_repo.dart';
import '../../../domain/employee/customer_search/models/customer_search/customer_search_model.dart';
import '../../../domain/employee/failures/employee_failures.dart';

@Injectable(as: ICustomerSearchRepo)
@prod
class CustomerSearchRepo implements ICustomerSearchRepo {
  @override
  Future<Either<EmployeeFailures, List<CustomerSearchModel>>> searchCustomers({
    required String searchValue,
    required String searchType,
    required int currentPage,
    required String loginToken,
  }) async {
    try {
      Map<String, dynamic> parameters = {
        "Type": "SearchCustomerRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "Search": searchValue,
            "Type": searchType,
            "Page": currentPage,
            "Pagesize": 10
          }
        }
      };
      final requstJson = jsonEncode(parameters);

      Map<String, dynamic> queryparameter = {"RequestJson": requstJson};

      Uri uri = Uri.http(authority, "/SearchCustomer", queryparameter);

      print(currentPage);
      // final String _url =
      //     "${ApiEndPoints.searchCustomers}?search=$searchValue&type=$searchType&page=$currentPage&pagesize=10";
      final response = await http.get(uri);
      // final response = await http.get(Uri.parse(_url));
      // var decoded = jsonDecode(response.body);
      final List<CustomerSearchModel> customerSearchModels = [];
      final List<CustomerSearchModel> customerSearchModels2 = [];
      if (searchValue.length < 10) {
        return Right(customerSearchModels2);
      } else {
        if (response.statusCode == 200 || response.statusCode == 201) {
          var models = jsonDecode(response.body);

          for (var model in models) {
            final customerSearchModel = CustomerSearchModel.fromJson(model);
            customerSearchModels.add(customerSearchModel);
          }

          // print(response.statusCode);
          // print(response.body);
          // print(customerSearchModels);

          return Right(customerSearchModels);
        } else {
          final decode = jsonDecode(response.body);
          if (decode["status"] == "Pan Not Found") {
            return const Left(EmployeeFailures.panNotFound());
          } else if (decode["status"] == "Phone Not Found") {
            return const Left(EmployeeFailures.phoneNotFound());
          } else if (decode["status"] == "CustomerName Not Found") {
            return const Left(EmployeeFailures.customerNameNotFound());
          } else if (decode["status"] == "CustomerId Not Found") {
            return const Left(EmployeeFailures.customerIdNotFound());
          } else if (decode["status"] == "Document Number not Found") {
            return const Left(EmployeeFailures.documentNotFound());
          } else {
            return const Left(EmployeeFailures.serverFailure());
          }
        }
      }
    } catch (e) {
      print(e);
      return const Left(EmployeeFailures.clientFailure());
    }
  }
}
