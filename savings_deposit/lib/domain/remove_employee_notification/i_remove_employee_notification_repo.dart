import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';

abstract class IRemoveEmployeeNotification {
  Future<Either<MainFailure, Unit>> removeEmployeeNotification(
      String userId, int alertId);
}
