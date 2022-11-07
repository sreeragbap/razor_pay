import 'package:dartz/dartz.dart';

import 'package:savings_deposit/domain/calendar/success/success.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';

abstract class ICalendarRepo {
  Future<Either<MainFailure, Unit>> addNote({
    required String firmId,
    required String branchId,
    required String employeeId,
    required String noteDate,
    required String description,
  });
  Future<Either<MainFailure, Success>> getNote({
    required String employeeId,
    required String noteDate,
  });
  Future<Either<MainFailure, Unit>> deleteNote({
    required String employeeId,
    required String noteDate,
    required String description,
    required String noteId,
  });
}
