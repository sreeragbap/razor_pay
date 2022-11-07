import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/customer/customer_statements/models/customer_statement_model.dart';

abstract class ICustomerStatementRepo {
  Future<Either<MainFailure, CustomerStatementDetails>>
      getCustomerStatementDetails({
    required String customerId,
    required String loginToken,
    required String accountNumber,
    required String fromDate,
    required String toDate,
  });
  Future<Either<MainFailure, List<CustomerStatementTransactions>>>
      getCustomerStatementTransactions({
    required String loginToken,
    required String customerId,
    required String accountNumber,
    required String fromDate,
    required String toDate,
  });
}
