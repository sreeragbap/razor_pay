part of 'registration_bloc.dart';

@freezed
class RegistrationEvent with _$RegistrationEvent {
  const factory RegistrationEvent.started() = _Started;
  const factory RegistrationEvent.findMobileAndSendOtp({
    required String customerId,
  }) = _FindMobileAndSendOtp;
  const factory RegistrationEvent.getEmployeeDetails({
    required String customerId,
  }) = _GetEmployeeDetails;
  const factory RegistrationEvent.postRegistration({
    required String userName,
    required String password,
  }) = _PostRegistration;

  const factory RegistrationEvent.loginid({
    required int loginId,
  }) = _Loginid;
  const factory RegistrationEvent.updateUserName({
    required String userName,
  }) = _UpdateUserName;
  const factory RegistrationEvent.userNameAlreadyExistOrNot(
      {required String userName}) = _UserNameAlreadyExistOrNot;
  const factory RegistrationEvent.updateResponse({required String response}) =
      _UpdateResponse;
  const factory RegistrationEvent.updateCustomerId(
      {required String customerId}) = _UpdateCustomerId;
       const factory RegistrationEvent.saveSplashToken({required String splashToken}) =
      _SaveSplashToken;
}
