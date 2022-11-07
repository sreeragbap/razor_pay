part of 'calendar_bloc.dart';

@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.onDaySelected({
    required DateTime selectDay,
    required DateTime focusDay,
  }) = _OnDaySelected;
  const factory CalendarEvent.addNote({
    required String firmId,
    required String branchId,
    required String employeeId,
    required String noteDate,
    required String description,
  }) = _AddNote;
  const factory CalendarEvent.deleteNote({
    required String employeeId,
    required String noteDate,
    required String description,
    required String noteId,
  }) = _DeleteNote;
  const factory CalendarEvent.fetchNotes({
    required String employeeId,
    required String noteDate,
  }) = _FetchNotes;
}
