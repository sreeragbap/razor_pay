import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/remove_scheduled_transaction/failure/remove_scheduled_transaction_failure.dart';

abstract class IRemoveScheduledTransactionRepo {
  Future<Either<RemoveScheduledTransactionFailure, String>>
      removeScheduledTransaction({
    required int rtid,
    required String transactionDate,
    required int flag,
    required String userType,
    required String loginToken,
  });
}
