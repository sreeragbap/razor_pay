part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({
    required bool confrimOtp,
    String? customerId,
    String? otp,
    String? splashToken,
    required int countDown,
    required bool activeResendOtp,
    required Option<Either<ConfirmOtpFailure, String>>
        confirmOtpFailureOrSucessOption,
    required Option<Either<ConfirmOtpFailure, String>>
        resendOTPFailureOrSucessOption,
    String? transactionid,
  }) = _OtpVerificationState;
  factory OtpVerificationState.initialState() {
    return OtpVerificationState(
      confrimOtp: false,
      confirmOtpFailureOrSucessOption: none(),
      countDown: 3,
      otp: '',
      activeResendOtp: false,
      resendOTPFailureOrSucessOption: none(),
      splashToken: '',
    );
  }
}
