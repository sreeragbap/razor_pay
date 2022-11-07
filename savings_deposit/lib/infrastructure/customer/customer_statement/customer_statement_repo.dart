// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/customer/customer_statements/i_customer_statement_repo.dart';
import 'package:savings_deposit/domain/customer/customer_statements/models/customer_statement_model.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: ICustomerStatementRepo)
@prod
class CustomerStatementRepo implements ICustomerStatementRepo {
  @override
  Future<Either<MainFailure, CustomerStatementDetails>>
      getCustomerStatementDetails({
    required String loginToken,
    required String customerId,
    required String accountNumber,
    required String fromDate,
    required String toDate,
  }) async {
    print("entered to statement details");
    try {
      Map<String, dynamic> parameters = {
        "Type": "StatementDetailsRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "CustomerID": customerId,
            "AccountNumber": accountNumber,
            "fromDate": fromDate,
            "toDate": toDate
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      print(parameters);
      Map<String, dynamic> queryparameter = {"RequestJson": requestedJson};
      print(queryparameter);
      final uri = Uri.http(authority, "/GetStatementDetails", queryparameter);
      print(uri);
      final response = await http.get(uri);
      print(response);
      print(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final model = jsonDecode(response.body);
        final statementDetails = CustomerStatementDetails.fromJson(model);
        print(">>>>>>>>>>>>>>$statementDetails");
        return Right(statementDetails);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<CustomerStatementTransactions>>>
      getCustomerStatementTransactions(
          {required String loginToken,
          required String customerId,
          required String accountNumber,
          required String fromDate,
          required String toDate}) async {
    print("entered to statement transaction");
    try {
      Map<String, dynamic> parameters = {
        "Type": "StatementTransactionDetailsRequest",
        "Ver": apiVersion,
        "JwtToken": loginToken,
        "Data": {
          "Data": {
            "CustomerID": customerId,
            "AccountNumber": accountNumber,
            "fromDate": fromDate,
            "toDate": toDate,
          }
        }
      };
      final requestedJson = jsonEncode(parameters);
      Map<String, dynamic> queryParameter = {"RequestJson": requestedJson};
      print(requestedJson);
      final uri = Uri.http(
          authority, "/GetStatementTransatctionDetails", queryParameter);
      print(uri);

      final response = await http.get(uri);
      print(response);
      print(response.body);

      List<CustomerStatementTransactions> customerStatementTransactions = [];
      if (response.statusCode == 200 || response.statusCode == 201) {
        var models = jsonDecode(response.body);
        for (var model in models) {
          CustomerStatementTransactions customerStatementTransaction =
              CustomerStatementTransactions.fromJson(model);
          customerStatementTransactions.add(customerStatementTransaction);
        }
        return Right(customerStatementTransactions);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
