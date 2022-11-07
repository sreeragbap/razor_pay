import 'package:freezed_annotation/freezed_annotation.dart';
part 'cheque_recouncilation_model.freezed.dart';
part 'cheque_recouncilation_model.g.dart';

@freezed
class ChequeRecouncilationDataModel with _$ChequeRecouncilationDataModel {
  const factory ChequeRecouncilationDataModel({
    required int? employeeCode,
    required String? customerName,
    required DateTime? chqSubmiteDate,
    required int? statusId,
    required String? chequeno,
    required String? customerBank,
    required double? amount,
    required String? depositId,
    required int? chequeSeq,
  }) = _ChequeRecouncilationDataModel;

  factory ChequeRecouncilationDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChequeRecouncilationDataModelFromJson(json);
}
