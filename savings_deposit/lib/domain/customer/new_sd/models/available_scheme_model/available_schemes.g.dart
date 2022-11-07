// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'available_schemes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AvailableSchemesDataModel _$$_AvailableSchemesDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_AvailableSchemesDataModel(
      schemeId: json['schemeId'] as int?,
      SD: json['SD'] as String?,
      minimumAmount: json['minimumAmount'] as int?,
      maxAmount: json['maxAmount'] as int?,
      interestRate: (json['interestRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_AvailableSchemesDataModelToJson(
        _$_AvailableSchemesDataModel instance) =>
    <String, dynamic>{
      'schemeId': instance.schemeId,
      'SD': instance.SD,
      'minimumAmount': instance.minimumAmount,
      'maxAmount': instance.maxAmount,
      'interestRate': instance.interestRate,
    };
