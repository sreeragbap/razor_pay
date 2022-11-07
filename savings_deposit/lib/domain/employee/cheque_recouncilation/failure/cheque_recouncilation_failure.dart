import 'package:freezed_annotation/freezed_annotation.dart';
part 'cheque_recouncilation_failure.freezed.dart';

@freezed
class ChequeRecouncilationFailure with _$ChequeRecouncilationFailure {
  const factory ChequeRecouncilationFailure.clientFailure() = _ClientFailure;
  const factory ChequeRecouncilationFailure.serverFailure() = _ServerFailure;
  const factory ChequeRecouncilationFailure.notFound() = _NotFound;
}
