import 'package:freezed_annotation/freezed_annotation.dart';
part 'calendar_models.freezed.dart';
part 'calendar_models.g.dart';

@freezed
class CalendarModels with _$CalendarModels {
  const factory CalendarModels({
    required String notedescription,
    required DateTime notedate,
    required int noteid,
    required int employeeId,
  }) = _CalendarModels;

  factory CalendarModels.fromJson(Map<String, dynamic> json) =>
      _$CalendarModelsFromJson(json);
}
