part of 'forgotpassword_bloc.dart';

@freezed
class ForgotpasswordState with _$ForgotpasswordState {
  const factory ForgotpasswordState({
    required bool isLoading,
    required String customerId,
    required String response,
    required String passwordChnageResponse,
    OtpModel? otpModel,
    String? splashToken,
    required Option<Either<ForgotPasswordFailure, String>>
        passwordChnageFilureOrSuccess,
    required Option<Either<ForgotPasswordFailure, OtpModel>>
        forgotPasswordFailureOrSucces,
  }) = _ForgotpasswordState;
  factory ForgotpasswordState.initial() {
    return ForgotpasswordState(
      isLoading: false,
      customerId: "",
      forgotPasswordFailureOrSucces: none(),
      response: '',
      passwordChnageFilureOrSuccess: none(),
      passwordChnageResponse: '',
      splashToken: '',
    );
  }
}
