// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customerwise_report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerwiseReportModel _$$_CustomerwiseReportModelFromJson(
        Map<String, dynamic> json) =>
    _$_CustomerwiseReportModel(
      type: json['type'] as String?,
      docId: json['docId'] as String?,
      customerName: json['customerName'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      intDate: json['intDate'] as String?,
      intRate: json['intRate'] as int?,
      intAcured: (json['intAcured'] as num?)?.toDouble(),
      intPayable: (json['intPayable'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CustomerwiseReportModelToJson(
        _$_CustomerwiseReportModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'docId': instance.docId,
      'customerName': instance.customerName,
      'amount': instance.amount,
      'intDate': instance.intDate,
      'intRate': instance.intRate,
      'intAcured': instance.intAcured,
      'intPayable': instance.intPayable,
    };
