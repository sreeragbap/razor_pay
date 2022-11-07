import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/login/models/login_model.dart';

abstract class ILoginRepo {
  Future<Either<MainFailure, LoginDetails>> loginWithIdAndPassword(
      {required String userId,
      required String password,
      required int firmId,
      required int moduleId,
      required String splashToken});
}
