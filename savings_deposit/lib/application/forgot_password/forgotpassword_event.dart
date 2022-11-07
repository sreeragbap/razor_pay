part of 'forgotpassword_bloc.dart';

@freezed
class ForgotpasswordEvent with _$ForgotpasswordEvent {
  const factory ForgotpasswordEvent.started() = _Started;
  const factory ForgotpasswordEvent.forgotPasswordApiCall({
    required String customerId,
  }) = _ForgotPasswordApiCall;
  const factory ForgotpasswordEvent.passwordChnage({
    required String password,
    required String mobileNumber,
  }) = _PasswordChange;

  const factory ForgotpasswordEvent.findMobileAndSendOtp({required String customerId}) = _FindMobileAndSendOtp;
  
   const factory ForgotpasswordEvent.saveSplashToken({required String splashToken}) = _SaveSplashToken;
}