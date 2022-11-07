import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/splash/models/splash_model.dart';

abstract class ISplashRepo {
  Future<Either<MainFailure, SplashModel>> getApplicationDetails(
    String applicationNumber,
  );
}
