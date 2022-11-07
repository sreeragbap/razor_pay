import 'package:freezed_annotation/freezed_annotation.dart';
part 'deposit_failure.freezed.dart';

@freezed
class DepositFailure with _$DepositFailure {
  const factory DepositFailure.chequeNumberValidOrNot() =
      _ChequeNumberValidOrNot;

  const factory DepositFailure.clientFailure() = _ClientFailure;
  const factory DepositFailure.serverFailure() = _ServerFailure;
}
