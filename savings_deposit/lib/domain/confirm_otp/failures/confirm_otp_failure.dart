import 'package:freezed_annotation/freezed_annotation.dart';
part 'confirm_otp_failure.freezed.dart';

@freezed
class ConfirmOtpFailure with _$ConfirmOtpFailure {
  const factory ConfirmOtpFailure.clientFailure() = _ClientFailure;
  const factory ConfirmOtpFailure.serverFailure() = _ServerFailure;

  const factory ConfirmOtpFailure.otpExpired(String otpExpired) = _OtpExpired;
  const factory ConfirmOtpFailure.otpAlredyUsed(String otpAlredyUsed) =
      _OtpAlredyUsed;

  const factory ConfirmOtpFailure.otpIsWrong(String wrongOtp) = _OtpIsWrong;
}
