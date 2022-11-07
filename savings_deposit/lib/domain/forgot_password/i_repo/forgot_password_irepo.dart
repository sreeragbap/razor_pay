import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/forgot_password/failure/forgot_password_failure.dart';
import 'package:savings_deposit/domain/registration/models/otp_model/otp_model.dart';

abstract class IForgotPassword {
  Future<Either<ForgotPasswordFailure, OtpModel>> checkMobileNumberAndSendOTP({
    required String customerId,
    required String splashToken,
  });
  Future<Either<ForgotPasswordFailure, String>> changePassword({
    required String mobileNumber,
    required String password,
    required String customerId,
    required String splashToken,
  });
}
