part of 'registration_bloc.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    required bool isLoading,
    required String mobileNumber,
    required String userName,
    required int id,
    required String response,
    required String registrationPostResponse,
    required String userNameResponse,
    required String customerId,
    required String splashToken,
    required Option<Either<RegistrationFailure, OtpModel>>
        mobileNumberSearchFailureOrSucces,
    required Option<Either<RegistrationFailure, GetCustomerDetails>>
        getEmployeeFailureOrSucces,
    GetCustomerDetails? getCustomerDetails,
    OtpModel? otpModel,
    required Option<Either<RegistrationFailure, String>>
        registerEmployeeSuccessOrFailure,
    required Option<Either<RegistrationFailure, String>>
        userNameAlreadyExistOrNot,
  }) = _RegistrationState;
  factory RegistrationState.initial() {
    return RegistrationState(
      isLoading: false,
      mobileNumber: "",
      userName: "",
      userNameAlreadyExistOrNot: none(),
      getEmployeeFailureOrSucces: none(),
      registerEmployeeSuccessOrFailure: none(),
      mobileNumberSearchFailureOrSucces: none(),
      response: '',
      registrationPostResponse: '',
      id: 0,
      userNameResponse: '',
      customerId: '',
      splashToken: '',
    );
  }
}
