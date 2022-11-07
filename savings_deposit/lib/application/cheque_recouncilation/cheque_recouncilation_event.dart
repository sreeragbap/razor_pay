part of 'cheque_recouncilation_bloc.dart';

@freezed
class ChequeRecouncilationEvent with _$ChequeRecouncilationEvent {
  const factory ChequeRecouncilationEvent.verifyButtonPressed({
    required String chequeNo,
    required String depositId,
    required DateTime clearDate,
  }) = _VerifyButtonPressed;
  const factory ChequeRecouncilationEvent.bounceButtonPressed({
    required String empId,
    required String chequeNo,
    required String rejectedReason,
    required String depositId,
    required DateTime clearDt,
  }) = _BounceButtonPressed;
  const factory ChequeRecouncilationEvent.getChequeRecounciledList() =
      _GetChequeRecounciledList;
  factory ChequeRecouncilationEvent.updateClearDate(DateTime? clearDate) =
      _UpdateClearDate;
  const factory ChequeRecouncilationEvent.updateBounceDate(DateTime clearDt) =
      _UpdateBounceDate;
}
