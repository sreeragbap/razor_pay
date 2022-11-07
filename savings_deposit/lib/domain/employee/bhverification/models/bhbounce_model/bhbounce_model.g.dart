// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bhbounce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BhverificationBounceDatamodel _$$_BhverificationBounceDatamodelFromJson(
        Map<String, dynamic> json) =>
    _$_BhverificationBounceDatamodel(
      firmId: (json['firmId'] as num?)?.toDouble(),
      branchId: json['branchId'] as int?,
      chequeNumber: json['chequeNumber'] as String?,
      customerName: json['customerName'] as String?,
      chequeSubmitDate: json['chequeSubmitDate'] == null
          ? null
          : DateTime.parse(json['chequeSubmitDate'] as String),
      amount: (json['amount'] as num?)?.toDouble(),
      depositId: json['depositId'] as String?,
      employeecode: json['employeecode'] as int?,
      bounceedDate: json['bounceedDate'] == null
          ? null
          : DateTime.parse(json['bounceedDate'] as String),
      customerBank: json['customerBank'] as String?,
    );

Map<String, dynamic> _$$_BhverificationBounceDatamodelToJson(
        _$_BhverificationBounceDatamodel instance) =>
    <String, dynamic>{
      'firmId': instance.firmId,
      'branchId': instance.branchId,
      'chequeNumber': instance.chequeNumber,
      'customerName': instance.customerName,
      'chequeSubmitDate': instance.chequeSubmitDate?.toIso8601String(),
      'amount': instance.amount,
      'depositId': instance.depositId,
      'employeecode': instance.employeecode,
      'bounceedDate': instance.bounceedDate?.toIso8601String(),
      'customerBank': instance.customerBank,
    };
