part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.employeePageState() = EmployeePageState;
  const factory AuthState.customerPageState() = CustomerPageState;
}
