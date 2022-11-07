import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_notification_datamodel.freezed.dart';
part 'employee_notification_datamodel.g.dart';

@freezed
class EmployeeNotificationModel with _$EmployeeNotificationModel {
  const factory EmployeeNotificationModel({
    required String? userId,
    required int? alertId,
    required String? type,
    required String? subject,
    required String? date,
    required String? description,
    required String? image,
  }) = _EmployeeNotificationModel;

  factory EmployeeNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$EmployeeNotificationModelFromJson(json);
}
