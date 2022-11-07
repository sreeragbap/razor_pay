import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';

abstract class IRemoveCustomerNotification {
  Future<Either<MainFailure, Unit>> removeCustomerNotification(
      {required String userId,
      required int alertId,
      required String loginToken});
}
