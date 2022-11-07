// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_notification_datamodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeNotificationModel _$$_EmployeeNotificationModelFromJson(
        Map<String, dynamic> json) =>
    _$_EmployeeNotificationModel(
      userId: json['userId'] as String?,
      alertId: json['alertId'] as int?,
      type: json['type'] as String?,
      subject: json['subject'] as String?,
      date: json['date'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_EmployeeNotificationModelToJson(
        _$_EmployeeNotificationModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'alertId': instance.alertId,
      'type': instance.type,
      'subject': instance.subject,
      'date': instance.date,
      'description': instance.description,
      'image': instance.image,
    };
