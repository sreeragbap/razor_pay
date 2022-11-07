import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:savings_deposit/domain/calendar/models/calendar_models.dart';
part 'success.freezed.dart';

@freezed
class Success with _$Success {
  const factory Success.hadListOfModels(List<CalendarModels> calendarModels) =
      _HadListOfModels;
  const factory Success.noData(String status) = _NoData;
}
