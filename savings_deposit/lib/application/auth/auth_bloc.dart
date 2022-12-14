import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const EmployeePageState()) {
    on<_EmployeePageEvent>((event, emit) {
      emit(const AuthState.employeePageState());
    });
    on<_CustomerPageEvent>((event, emit) {
      emit(const AuthState.customerPageState());
    });
  }
}
