import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/employee/failures/employee_failures.dart';
import '../models/customer_search/customer_search_model.dart';

abstract class ICustomerSearchRepo {
  Future<Either<EmployeeFailures, List<CustomerSearchModel>>> searchCustomers({
    required String searchValue,
      required String searchType,
      required int currentPage,
      required String loginToken
  });
}
