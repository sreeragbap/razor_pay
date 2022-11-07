// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CalendarModels _$$_CalendarModelsFromJson(Map<String, dynamic> json) =>
    _$_CalendarModels(
      notedescription: json['notedescription'] as String,
      notedate: DateTime.parse(json['notedate'] as String),
      noteid: json['noteid'] as int,
      employeeId: json['employeeId'] as int,
    );

Map<String, dynamic> _$$_CalendarModelsToJson(_$_CalendarModels instance) =>
    <String, dynamic>{
      'notedescription': instance.notedescription,
      'notedate': instance.notedate.toIso8601String(),
      'noteid': instance.noteid,
      'employeeId': instance.employeeId,
    };
