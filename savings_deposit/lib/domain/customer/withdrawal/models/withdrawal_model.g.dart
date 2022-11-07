// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdrawal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SdAccountSearchDataModel _$$_SdAccountSearchDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_SdAccountSearchDataModel(
      customerName: json['customerName'] as String,
      mobileNumber: json['mobileNumber'] as String,
    );

Map<String, dynamic> _$$_SdAccountSearchDataModelToJson(
        _$_SdAccountSearchDataModel instance) =>
    <String, dynamic>{
      'customerName': instance.customerName,
      'mobileNumber': instance.mobileNumber,
    };

_$_GoldLoanSearchDataModel _$$_GoldLoanSearchDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_GoldLoanSearchDataModel(
      customername: json['customername'] as String,
      branchId: json['branchId'] as int,
      branchName: json['branchName'] as String,
    );

Map<String, dynamic> _$$_GoldLoanSearchDataModelToJson(
        _$_GoldLoanSearchDataModel instance) =>
    <String, dynamic>{
      'customername': instance.customername,
      'branchId': instance.branchId,
      'branchName': instance.branchName,
    };

_$_RdDataModel _$$_RdDataModelFromJson(Map<String, dynamic> json) =>
    _$_RdDataModel(
      customername: json['customername'] as String,
      branchName: json['branchName'] as String,
      branchId: json['branchId'] as int,
    );

Map<String, dynamic> _$$_RdDataModelToJson(_$_RdDataModel instance) =>
    <String, dynamic>{
      'customername': instance.customername,
      'branchName': instance.branchName,
      'branchId': instance.branchId,
    };

_$_PostwithdrawalResponseDatamodel _$$_PostwithdrawalResponseDatamodelFromJson(
        Map<String, dynamic> json) =>
    _$_PostwithdrawalResponseDatamodel(
      status: json['status'] as String,
      type: json['type'] as String,
      transId: json['transId'] as int,
    );

Map<String, dynamic> _$$_PostwithdrawalResponseDatamodelToJson(
        _$_PostwithdrawalResponseDatamodel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
      'transId': instance.transId,
    };
