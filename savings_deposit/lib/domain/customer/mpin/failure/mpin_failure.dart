import 'package:freezed_annotation/freezed_annotation.dart';
part 'mpin_failure.freezed.dart';

@freezed
class MpinFailure with _$MpinFailure {
  const factory MpinFailure.incorrectPin() = _IncorrectPin;
  const factory MpinFailure.clientFailure() = _ClientFailure;
  const factory MpinFailure.serverFailure() = _ServerFailure;
  const factory MpinFailure.usernotRegistered() = _UsernotRegistered;
}
