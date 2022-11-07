import 'package:freezed_annotation/freezed_annotation.dart';
part 'forgot_password_failure.freezed.dart';

@freezed
class ForgotPasswordFailure with _$ForgotPasswordFailure {
  const factory ForgotPasswordFailure.serverFailure() = _ServerFailure;
  const factory ForgotPasswordFailure.clientFailure() = _ClientFailure;
  const factory ForgotPasswordFailure.notARegisteredUser() =
      _NotARegisteredUser;
  const factory ForgotPasswordFailure.passwordNotChanged() =
      _PasswordNotChanged;
}
