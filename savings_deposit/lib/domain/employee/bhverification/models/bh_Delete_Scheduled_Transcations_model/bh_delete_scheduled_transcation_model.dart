import 'package:freezed_annotation/freezed_annotation.dart';
part 'bh_delete_scheduled_transcation_model.freezed.dart';
part 'bh_delete_scheduled_transcation_model.g.dart';

@freezed
class BhDeleteScheduledTranscationsDataModel
    with _$BhDeleteScheduledTranscationsDataModel {
  const factory BhDeleteScheduledTranscationsDataModel({
    required int? rtId,
    required List<BhDeletedScheduledTranscationDetailsDatamodel> detail,
  }) = _BhDeleteScheduledTranscationsDataModel;

  factory BhDeleteScheduledTranscationsDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$BhDeleteScheduledTranscationsDataModelFromJson(json);
}

@freezed
class BhDeletedScheduledTranscationDetailsDatamodel
    with _$BhDeletedScheduledTranscationDetailsDatamodel {
  const factory BhDeletedScheduledTranscationDetailsDatamodel({
    required String? customerName,
    required String? depositNumber,
    required DateTime? date,
    required double? amount,
    required int? rtid,
    required int? statusid,
  }) = _BhDeletedScheduledTranscationDetailsDatamodel;

  factory BhDeletedScheduledTranscationDetailsDatamodel.fromJson(
          Map<String, dynamic> json) =>
      _$BhDeletedScheduledTranscationDetailsDatamodelFromJson(json);
}
