// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SplashModel _$$_SplashModelFromJson(Map<String, dynamic> json) =>
    _$_SplashModel(
      appNo: json['appNo'] as int,
      firmId: json['firmId'] as int,
      moduleId: json['moduleId'] as int,
      versionNo: json['versionNo'] as String,
      created: json['created'] as String,
      buildDate: DateTime.parse(json['buildDate'] as String),
      splashToken: json['splashToken'] as String,
    );

Map<String, dynamic> _$$_SplashModelToJson(_$_SplashModel instance) =>
    <String, dynamic>{
      'appNo': instance.appNo,
      'firmId': instance.firmId,
      'moduleId': instance.moduleId,
      'versionNo': instance.versionNo,
      'created': instance.created,
      'buildDate': instance.buildDate.toIso8601String(),
      'splashToken': instance.splashToken,
    };
