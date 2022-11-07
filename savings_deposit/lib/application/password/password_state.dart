part of 'password_bloc.dart';

@freezed
class PasswordState with _$PasswordState {
  const factory PasswordState({
    required String displayText,
    required double strength,
    required String newPassword,
    required String confirmPassword,
  }) = _PasswordState;
  factory PasswordState.initial() {
    return const PasswordState(
      displayText: "",
      strength: 0.0,
      newPassword: '',
      confirmPassword: '',
    );

  }
}
