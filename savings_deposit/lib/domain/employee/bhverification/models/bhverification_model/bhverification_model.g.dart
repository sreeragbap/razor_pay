// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bhverification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BhverificationDatamodel _$$_BhverificationDatamodelFromJson(
        Map<String, dynamic> json) =>
    _$_BhverificationDatamodel(
      firmId: (json['firmId'] as num?)?.toDouble(),
      branchId: json['branchId'] as int?,
      chequeno: json['chequeno'] as String?,
      customerName: json['customerName'] as String?,
      customerBank: json['customerBank'] as String?,
      chqSubmiteDate: json['chqSubmiteDate'] == null
          ? null
          : DateTime.parse(json['chqSubmiteDate'] as String),
      amount: (json['amount'] as num?)?.toDouble(),
      depositId: json['depositId'] as String?,
      depositBank: (json['depositBank'] as num?)?.toDouble(),
      branchname: json['branchname'] as String?,
      employeeCode: json['employeeCode'] as int?,
      employeeVerifyDate: json['employeeVerifyDate'] == null
          ? null
          : DateTime.parse(json['employeeVerifyDate'] as String),
      statusId: (json['statusId'] as num?)?.toDouble(),
      realizationDate: json['realizationDate'] == null
          ? null
          : DateTime.parse(json['realizationDate'] as String),
      bhStatus: (json['bhStatus'] as num?)?.toDouble(),
      bhVerifyDate: json['bhVerifyDate'] == null
          ? null
          : DateTime.parse(json['bhVerifyDate'] as String),
      chequeSeq: json['chequeSeq'] as int?,
      chequeCleardt: json['chequeCleardt'] == null
          ? null
          : DateTime.parse(json['chequeCleardt'] as String),
    );

Map<String, dynamic> _$$_BhverificationDatamodelToJson(
        _$_BhverificationDatamodel instance) =>
    <String, dynamic>{
      'firmId': instance.firmId,
      'branchId': instance.branchId,
      'chequeno': instance.chequeno,
      'customerName': instance.customerName,
      'customerBank': instance.customerBank,
      'chqSubmiteDate': instance.chqSubmiteDate?.toIso8601String(),
      'amount': instance.amount,
      'depositId': instance.depositId,
      'depositBank': instance.depositBank,
      'branchname': instance.branchname,
      'employeeCode': instance.employeeCode,
      'employeeVerifyDate': instance.employeeVerifyDate?.toIso8601String(),
      'statusId': instance.statusId,
      'realizationDate': instance.realizationDate?.toIso8601String(),
      'bhStatus': instance.bhStatus,
      'bhVerifyDate': instance.bhVerifyDate?.toIso8601String(),
      'chequeSeq': instance.chequeSeq,
      'chequeCleardt': instance.chequeCleardt?.toIso8601String(),
    };
