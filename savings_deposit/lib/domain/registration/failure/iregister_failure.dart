import 'package:freezed_annotation/freezed_annotation.dart';
part 'iregister_failure.freezed.dart';

@freezed
class RegistrationFailure with _$RegistrationFailure {
  const factory RegistrationFailure.serverFailure() = _ServerFailure;
  const factory RegistrationFailure.clientFilure() = _ClientFilure;

  const factory RegistrationFailure.userAlreadyRegistered({required String userAlreadyRegistered}) =
      _UserAlreadyRegistered;

  const factory RegistrationFailure.mobileNumberIsNotValid(
      {required String mobileNumberIsNotValid}) = _MobileNumberIsNotValid;

  const factory RegistrationFailure.mobileNumberIsNotLinked(
      {required String mobileNumberIsNotLinked}) = _MobileNumberIsNotLinked;

  const factory RegistrationFailure.invalidCustomerId({required String invalidCustomerId}) =
      _InvalidCustomerId;

  const factory RegistrationFailure.invalidToken({required String invalidToken}) =
      _InvalidToken;

  const factory RegistrationFailure.userNameAlreadyExistOrNot(
      {required String userNameAlreadyExist}) = _UserNameAlreadyExistOrNot;
}
