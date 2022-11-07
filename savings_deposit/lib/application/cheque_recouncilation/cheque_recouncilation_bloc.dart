import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/employee/cheque_recouncilation/i_cheque_recouncilation_repo.dart';

import '../../domain/employee/cheque_recouncilation/failure/cheque_recouncilation_failure.dart';
import '../../domain/employee/cheque_recouncilation/models/cheque_recouncilation_model.dart';

part 'cheque_recouncilation_event.dart';
part 'cheque_recouncilation_state.dart';
part 'cheque_recouncilation_bloc.freezed.dart';

@injectable
@prod
class ChequeRecouncilationBloc
    extends Bloc<ChequeRecouncilationEvent, ChequeRecouncilationState> {
  final IChequeRecouncilationRepo chequeRecouncilationRepo;
  ChequeRecouncilationBloc(this.chequeRecouncilationRepo)
      : super(ChequeRecouncilationState.initial()) {
    on<_GetChequeRecounciledList>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          chequeFailureORSuccessOption: none(),
          statusOption: none(),
        ),
      );
      final chequeOption =
          await chequeRecouncilationRepo.getChequeRecounciledList();
      emit(
        chequeOption.fold(
          (l) => state.copyWith(
            isLoading: false,
            chequeFailureORSuccessOption: Some(Left(l)),
            statusOption: none(),
          ),
          (r) => state.copyWith(
            isLoading: false,
            chequeFailureORSuccessOption: Some(Right(r)),
            statusOption: none(),
            result: r,
          ),
        ),
      );
    });
    on<_VerifyButtonPressed>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          chequeFailureORSuccessOption: none(),
          statusOption: none(),
        ),
      );
      final chequeOption =
          await chequeRecouncilationRepo.chequeEmployeeVerification(
        depositid: event.depositId,
        chequeno: event.chequeNo,
        clearDate: event.clearDate,
      );
      emit(
        chequeOption.fold(
          (l) => state.copyWith(
            isLoading: false,
            chequeFailureORSuccessOption: Some(Left(l)),
            statusOption: none(),
          ),
          (r) => state.copyWith(
            isLoading: false,
            chequeFailureORSuccessOption: none(),
            statusOption: Some(Right(r)),
          ),
        ),
      );
    });
    on<_BounceButtonPressed>((event, emit) async {
      emit(
        state.copyWith(
          isLoading: true,
          chequeFailureORSuccessOption: none(),
          statusOption: none(),
        ),
      );
      final chequeOption = await chequeRecouncilationRepo.chequeEmployeeBounce(
        employeeCode: int.parse(event.empId),
        rejectReason: event.rejectedReason,
        depositid: event.depositId,
        chequeno: event.chequeNo,
        clearDt: event.clearDt,
      );
      emit(
        chequeOption.fold(
          (l) => state.copyWith(
            isLoading: false,
            chequeFailureORSuccessOption: Some(Left(l)),
            statusOption: none(),
          ),
          (r) => state.copyWith(
            isLoading: false,
            chequeFailureORSuccessOption: none(),
            statusOption: Some(Right(r)),
          ),
        ),
      );
    });
    on<_UpdateClearDate>((event, emit) async {
      log("UpdateClearDate event called at bloc");
      emit(state.copyWith(clearDate: event.clearDate));
      log("Event process completed and the value is ${state.clearDate}");
    });
  }
}
