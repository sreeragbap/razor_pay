import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/calendar/success/success.dart';

import '../../domain/calendar/i_calendar_repo.dart';
import '../../domain/calendar/models/calendar_models.dart';
import '../../domain/core/failure/main_failure.dart';

part 'calendar_event.dart';
part 'calendar_state.dart';
part 'calendar_bloc.freezed.dart';

@injectable
@prod
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final ICalendarRepo calendarRepo;
  CalendarBloc(this.calendarRepo) : super(CalendarState.initial()) {
    on<_OnDaySelected>((event, emit) {
      emit(state.copyWith(
        selectedDay: event.selectDay,
        focusedDay: event.focusDay,
        fetchNotesFailureOrSuccessOption: none(),
        notesUnitFailureORSuccessOption: none(),
      ));
    });
    on<_AddNote>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        fetchNotesFailureOrSuccessOption: none(),
        notesUnitFailureORSuccessOption: none(),
      ));
      final noteOption = await calendarRepo.addNote(
        firmId: event.firmId,
        branchId: event.branchId,
        employeeId: event.employeeId,
        noteDate: event.noteDate,
        description: event.description,
      );
      emit(noteOption.fold(
          (l) => state.copyWith(
                isLoading: false,
                fetchNotesFailureOrSuccessOption: none(),
                notesUnitFailureORSuccessOption: Some(Left(l)),
              ),
          (r) => state.copyWith(
                isLoading: false,
                fetchNotesFailureOrSuccessOption: none(),
                notesUnitFailureORSuccessOption: Some(Right(r)),
              )));
    });
    on<_FetchNotes>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        fetchNotesFailureOrSuccessOption: none(),
        notesUnitFailureORSuccessOption: none(),
      ));
      final noteOption = await calendarRepo.getNote(
        employeeId: event.employeeId,
        noteDate: event.noteDate,
      );
      emit(noteOption.fold(
          (l) => state.copyWith(
                isLoading: false,
                fetchNotesFailureOrSuccessOption: Some(Left(l)),
                notesUnitFailureORSuccessOption: none(),
              ),
          (r) => r.map(
                hadListOfModels: (l) {
                  return state.copyWith(
                    isLoading: false,
                    fetchNotesFailureOrSuccessOption: Some(Right(r)),
                    notesUnitFailureORSuccessOption: none(),
                    calendarModels: l.calendarModels,
                  );
                },
                noData: (r) {
                  return state.copyWith(
                    isLoading: false,
                    fetchNotesFailureOrSuccessOption: Some(Right(r)),
                    notesUnitFailureORSuccessOption: none(),
                    calendarModels: [],
                  );
                },
              )));
    });
    on<_DeleteNote>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        fetchNotesFailureOrSuccessOption: none(),
        notesUnitFailureORSuccessOption: none(),
      ));
      final noteOption = await calendarRepo.deleteNote(
        employeeId: event.employeeId,
        noteDate: event.noteDate,
        description: event.description,
        noteId: event.noteId,
      );
      emit(noteOption.fold(
          (l) => state.copyWith(
                isLoading: false,
                fetchNotesFailureOrSuccessOption: none(),
                notesUnitFailureORSuccessOption: Some(Left(l)),
              ),
          (r) => state.copyWith(
                isLoading: false,
                fetchNotesFailureOrSuccessOption: none(),
                notesUnitFailureORSuccessOption: Some(Right(r)),
              )));
    });
  }
}
