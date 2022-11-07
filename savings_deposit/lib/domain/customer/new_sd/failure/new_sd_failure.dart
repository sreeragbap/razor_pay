import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_sd_failure.freezed.dart';

@freezed
class NewSdFailure with _$NewSdFailure {
  const factory NewSdFailure.noEligibleSchemes() = _NoEligibleSchemes;
  const factory NewSdFailure.postNewsdFailed() = _PostNewsdFailed;
  const factory NewSdFailure.customerNotFound() = _CustomerNotFound;
  const factory NewSdFailure.employeeNotFound() = _EmployeeNotFound;
  const factory NewSdFailure.clientFailure() = _ClientFailure;
  const factory NewSdFailure.serverFailure() = _ServerFailure;
}
