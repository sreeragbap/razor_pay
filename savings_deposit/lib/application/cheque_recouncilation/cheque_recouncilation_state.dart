part of 'cheque_recouncilation_bloc.dart';

@freezed
class ChequeRecouncilationState with _$ChequeRecouncilationState {
  const factory ChequeRecouncilationState({
    required bool isLoading,
    DateTime? clearDate,
    required List<ChequeRecouncilationDataModel> result,
    required Option<
            Either<ChequeRecouncilationFailure,
                List<ChequeRecouncilationDataModel>>>
        chequeFailureORSuccessOption,
    required Option<Either<ChequeRecouncilationFailure, String>> statusOption,
  }) = _ChequeRecouncilationState;
  factory ChequeRecouncilationState.initial() {
    return ChequeRecouncilationState(
      isLoading: false,
      chequeFailureORSuccessOption: none(),
      statusOption: none(),
      result: [],
    );
  }
}
