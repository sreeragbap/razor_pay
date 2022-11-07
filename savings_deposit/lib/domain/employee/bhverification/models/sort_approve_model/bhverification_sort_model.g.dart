// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bhverification_sort_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BhverificationSortDataModel _$$_BhverificationSortDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_BhverificationSortDataModel(
      employeeCode: json['employeeCode'] as int?,
      customerName: json['customerName'] as String?,
      chequeNumber: json['chequeNumber'] as String?,
      chequeSubmitDate: json['chequeSubmitDate'] == null
          ? null
          : DateTime.parse(json['chequeSubmitDate'] as String),
      firmId: json['firmId'] as int?,
      branchId: json['branchId'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      depositid: json['depositid'] as String?,
      bhVerifiedDate: json['bhVerifiedDate'] == null
          ? null
          : DateTime.parse(json['bhVerifiedDate'] as String),
      customerBank: json['customerBank'] as String?,
    );

Map<String, dynamic> _$$_BhverificationSortDataModelToJson(
        _$_BhverificationSortDataModel instance) =>
    <String, dynamic>{
      'employeeCode': instance.employeeCode,
      'customerName': instance.customerName,
      'chequeNumber': instance.chequeNumber,
      'chequeSubmitDate': instance.chequeSubmitDate?.toIso8601String(),
      'firmId': instance.firmId,
      'branchId': instance.branchId,
      'amount': instance.amount,
      'depositid': instance.depositid,
      'bhVerifiedDate': instance.bhVerifiedDate?.toIso8601String(),
      'customerBank': instance.customerBank,
    };
