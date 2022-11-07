import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/confirm_otp/failures/confirm_otp_failure.dart';

abstract class IConfirmOtpRepo {
  Future<Either<ConfirmOtpFailure, String>> confirmOtp({
    required int transactionId,
    required int otp,
    required String splashToken,
  });
  Future<Either<ConfirmOtpFailure, String>> resendOtp({
    required String mobileNumber,
  });
}
