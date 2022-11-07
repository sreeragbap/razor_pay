// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/calendar/i_calendar_repo.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/calendar/models/calendar_models.dart';
import 'package:http/http.dart' as http;
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

import '../../domain/calendar/success/success.dart';

@Injectable(as: ICalendarRepo)
@prod
class CalendarRepo implements ICalendarRepo {
  @override
  Future<Either<MainFailure, Unit>> addNote({
    required String firmId,
    required String branchId,
    required String employeeId,
    required String noteDate,
    required String description,
  }) async {
    final url =
        "${ApiEndPoints.addNote}?firmId=$firmId&BranchId=$branchId&employeeid=$employeeId&notedate=$noteDate&description=$description";
    final result = await http.Client().post(Uri.parse(url));

    try {
      if (result.statusCode == 200 || result.statusCode == 201) {
        return const Right(unit);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      print(e.toString());

      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, Unit>> deleteNote({
    required String employeeId,
    required String noteDate,
    required String description,
    required String noteId,
  }) async {
    final url =
        "${ApiEndPoints.deleteNote}?Employeeid=$employeeId&NoteDate=$noteDate&NoteDescription=$description&Noteid=$noteId";
    final result = await http.Client().delete(Uri.parse(url));

    try {
      if (result.statusCode == 200 || result.statusCode == 201) {
        return const Right(unit);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, Success>> getNote({
    required String employeeId,
    required String noteDate,
  }) async {
    final url =
        "${ApiEndPoints.getNote}?notedate=$noteDate&employeeId=$employeeId";
    final result = await http.Client().get(Uri.parse(url));

    try {
      if (result.statusCode == 200 || result.statusCode == 201) {
        final models = jsonDecode(result.body);
        List<CalendarModels> calendarModels = [];
        for (var model in models) {
          final dataModel = CalendarModels.fromJson(model);
          calendarModels.add(dataModel);
        }

        return Right(Success.hadListOfModels(calendarModels));
      } else {
        final models = jsonDecode(result.body);
        if (models["status"] == "There is No Notes") {
          return const Right(Success.noData("There is No Notes"));
        }
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      print(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
