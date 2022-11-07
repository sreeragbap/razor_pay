// ignore_for_file: avoid_print, unnecessary_brace_in_string_interps

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/employee/reports/customerwise_report/models/customerwise_report.dart';
import 'package:savings_deposit/domain/employee/reports/growth_report/models/growth_report.dart';
import 'package:savings_deposit/domain/employee/reports/i_report.dart';
import 'package:savings_deposit/infrastructure/core/api_end_points.dart';

@Injectable(as: IReportRepo)
@prod
class CustomerwiseRepo implements IReportRepo {
  @override
  Future<Either<MainFailure, List<CustomerwiseReportModel>>>
      customerwiseReportDetails(
          {required int firmId, required int branchId}) async {
    try {
      final response = await http.get(
        Uri.parse(
            "${ApiEndPoints.customerwiseReportDetails}?firmId=${firmId}&branchId=${branchId}&page=0&pagesize=70"),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var models = jsonDecode(response.body);

        print(response.body);

        final List<CustomerwiseReportModel> customerwisereports = [];

        for (var model in models) {
          CustomerwiseReportModel dataModel =
              CustomerwiseReportModel.fromJson(model);
          customerwisereports.add(dataModel);
        }
        print(response.statusCode);
        print(response.body);
        return Right(customerwisereports);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<GrowthReportDataModel>>>
      branchwiseReportDetails({required int flag, required int firmId}) async {
    try {
      final response = await http.get(
        Uri.parse(
            "${ApiEndPoints.branchwiseReportDetails}?firmId=${firmId}&flag=$flag&page=1&pagesize=10"),
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        var models = jsonDecode(response.body);

        final List<GrowthReportDataModel> branchwisereports = [];

        for (var model in models) {
          GrowthReportDataModel dataModel =
              GrowthReportDataModel.fromJson(model);
          branchwisereports.add(dataModel);
        }
        print(response.statusCode);
        print(response.body);
        return Right(branchwisereports);
      } else {
        return const Left(MainFailure.serverError());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
