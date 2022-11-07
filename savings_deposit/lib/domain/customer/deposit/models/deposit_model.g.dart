// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DepositModel _$$_DepositModelFromJson(Map<String, dynamic> json) =>
    _$_DepositModel(
      status: json['status'] as String,
      type: json['type'] as String,
      transId: json['transId'] as int,
    );

Map<String, dynamic> _$$_DepositModelToJson(_$_DepositModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'type': instance.type,
      'transId': instance.transId,
    };
