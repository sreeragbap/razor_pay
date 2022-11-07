part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  const factory CalendarState({
    required bool isLoading,
    required DateTime selectedDay,
    required DateTime focusedDay,
    required String currentDay,
    required String currentMonth,
    required String currentYear,
    required bool togglevalue,
    required List<CalendarModels> calendarModels,
    required Option<Either<MainFailure, Success>>
        fetchNotesFailureOrSuccessOption,
    required Option<Either<MainFailure, Unit>> notesUnitFailureORSuccessOption,
  }) = _CalendarState;
  factory CalendarState.initial() {
    return CalendarState(
      isLoading: false,
      selectedDay: DateTime.now(),
      focusedDay: DateTime.now(),
      currentDay: DateTime.now().day.toString(),
      currentMonth: DateTime.now().month.toString(),
      currentYear: DateTime.now().year.toString(),
      togglevalue: false,
      calendarModels: [],
      fetchNotesFailureOrSuccessOption: const None(),
      notesUnitFailureORSuccessOption: const None(),
    );
  }
}
