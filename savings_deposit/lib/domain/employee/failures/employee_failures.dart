import 'package:freezed_annotation/freezed_annotation.dart';
part 'employee_failures.freezed.dart';

@freezed
class EmployeeFailures with _$EmployeeFailures {
  const factory EmployeeFailures() = _EmployeeFailures;
  const factory EmployeeFailures.panNotFound() = _PanNotFound;
  const factory EmployeeFailures.phoneNotFound() = _PhoneNotFound;
  const factory EmployeeFailures.documentNotFound() = _DocumentNotFound;
  const factory EmployeeFailures.customerIdNotFound() = _CustomerIdNotFound;
  const factory EmployeeFailures.customerNameNotFound() = _CustomerNameNotFound;
  const factory EmployeeFailures.clientFailure() = _ClientFailure;
  const factory EmployeeFailures.serverFailure() = _ServerFailure;
}
