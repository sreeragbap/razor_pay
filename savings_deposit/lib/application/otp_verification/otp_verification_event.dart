part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationEvent with _$OtpVerificationEvent {
  const factory OtpVerificationEvent.otpChanged(String otp) = _OtpChanged;
  const factory OtpVerificationEvent.otpBUttonPressed(String transactionid) =
      _OtpBUttonPressed;
  const factory OtpVerificationEvent.activeResendOtp() = _ActiveResendOtp;
  const factory OtpVerificationEvent.resendOTP(String mobilenumber) =
      _ResendOTP;
  const factory OtpVerificationEvent.updateCustomerId({required String customerId}) =
      _UpdateCustomerId;
      const factory OtpVerificationEvent.saveSplashToken({required String splashToken}) = _SaveSplashToken;
      
}
