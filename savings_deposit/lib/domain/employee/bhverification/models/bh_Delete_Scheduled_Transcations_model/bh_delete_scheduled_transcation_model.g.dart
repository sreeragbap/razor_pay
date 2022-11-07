// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bh_delete_scheduled_transcation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BhDeleteScheduledTranscationsDataModel
    _$$_BhDeleteScheduledTranscationsDataModelFromJson(
            Map<String, dynamic> json) =>
        _$_BhDeleteScheduledTranscationsDataModel(
          rtId: json['rtId'] as int?,
          detail: (json['detail'] as List<dynamic>)
              .map((e) =>
                  BhDeletedScheduledTranscationDetailsDatamodel.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_BhDeleteScheduledTranscationsDataModelToJson(
        _$_BhDeleteScheduledTranscationsDataModel instance) =>
    <String, dynamic>{
      'rtId': instance.rtId,
      'detail': instance.detail,
    };

_$_BhDeletedScheduledTranscationDetailsDatamodel
    _$$_BhDeletedScheduledTranscationDetailsDatamodelFromJson(
            Map<String, dynamic> json) =>
        _$_BhDeletedScheduledTranscationDetailsDatamodel(
          customerName: json['customerName'] as String?,
          depositNumber: json['depositNumber'] as String?,
          date: json['date'] == null
              ? null
              : DateTime.parse(json['date'] as String),
          amount: (json['amount'] as num?)?.toDouble(),
          rtid: json['rtid'] as int?,
          statusid: json['statusid'] as int?,
        );

Map<String, dynamic> _$$_BhDeletedScheduledTranscationDetailsDatamodelToJson(
        _$_BhDeletedScheduledTranscationDetailsDatamodel instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'depositNumber': instance.depositNumber,
      'date': instance.date?.toIso8601String(),
      'amount': instance.amount,
      'rtid': instance.rtid,
      'statusid': instance.statusid,
    };
