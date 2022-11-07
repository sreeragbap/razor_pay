// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cheque_recouncilation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChequeRecouncilationDataModel _$$_ChequeRecouncilationDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_ChequeRecouncilationDataModel(
      employeeCode: json['employeeCode'] as int?,
      customerName: json['customerName'] as String?,
      chqSubmiteDate: json['chqSubmiteDate'] == null
          ? null
          : DateTime.parse(json['chqSubmiteDate'] as String),
      statusId: json['statusId'] as int?,
      chequeno: json['chequeno'] as String?,
      customerBank: json['customerBank'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      depositId: json['depositId'] as String?,
      chequeSeq: json['chequeSeq'] as int?,
    );

Map<String, dynamic> _$$_ChequeRecouncilationDataModelToJson(
        _$_ChequeRecouncilationDataModel instance) =>
    <String, dynamic>{
      'employeeCode': instance.employeeCode,
      'customerName': instance.customerName,
      'chqSubmiteDate': instance.chqSubmiteDate?.toIso8601String(),
      'statusId': instance.statusId,
      'chequeno': instance.chequeno,
      'customerBank': instance.customerBank,
      'amount': instance.amount,
      'depositId': instance.depositId,
      'chequeSeq': instance.chequeSeq,
    };
