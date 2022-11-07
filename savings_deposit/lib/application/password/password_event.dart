part of 'password_bloc.dart';

@freezed
class PasswordEvent with _$PasswordEvent {
  const factory PasswordEvent.checkPasswordEvent(double value) =
      _CheckPasswordEvent;
  const factory PasswordEvent.newPassword({
    required String newPassword,
  }) = _NewPassword;

  const factory PasswordEvent.confirmPassword({required String confirmPassword}) = _ConfirmPassword;
  
  const factory PasswordEvent.updateStrengthValue(double strength) =
      _UpdateStrengthValue;
  const factory PasswordEvent.reset() = _Reset;
}
