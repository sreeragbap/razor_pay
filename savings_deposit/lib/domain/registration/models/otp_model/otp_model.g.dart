// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OtpModel _$$_OtpModelFromJson(Map<String, dynamic> json) => _$_OtpModel(
      transactionId: json['transactionId'] as int?,
      phone1: json['phone1'] as String?,
      branchId: json['branchId'] as int?,
      firmId: json['firmId'] as int?,
    );

Map<String, dynamic> _$$_OtpModelToJson(_$_OtpModel instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'phone1': instance.phone1,
      'branchId': instance.branchId,
      'firmId': instance.firmId,
    };
