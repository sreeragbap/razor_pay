// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettlementModel _$$_SettlementModelFromJson(Map<String, dynamic> json) =>
    _$_SettlementModel(
      accountType: json['accountType'] as String?,
      accountNumber: json['accountNumber'] as String?,
      balance: (json['balance'] as num?)?.toDouble(),
      interest: (json['interest'] as num?)?.toDouble(),
      roundindDifference: (json['roundindDifference'] as num?)?.toDouble(),
      intrestRate: (json['intrestRate'] as num?)?.toDouble(),
      settleAmount: (json['settleAmount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_SettlementModelToJson(_$_SettlementModel instance) =>
    <String, dynamic>{
      'accountType': instance.accountType,
      'accountNumber': instance.accountNumber,
      'balance': instance.balance,
      'interest': instance.interest,
      'roundindDifference': instance.roundindDifference,
      'intrestRate': instance.intrestRate,
      'settleAmount': instance.settleAmount,
    };
