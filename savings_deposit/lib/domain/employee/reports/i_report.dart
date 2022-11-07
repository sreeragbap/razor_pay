import 'package:dartz/dartz.dart';
import 'package:savings_deposit/domain/core/failure/main_failure.dart';
import 'package:savings_deposit/domain/employee/reports/customerwise_report/models/customerwise_report.dart';
import 'package:savings_deposit/domain/employee/reports/growth_report/models/growth_report.dart';

abstract class IReportRepo {
  Future<Either<MainFailure, List<CustomerwiseReportModel>>>
      customerwiseReportDetails({required int firmId, required int branchId});

  Future<Either<MainFailure, List<GrowthReportDataModel>>>
      branchwiseReportDetails({required int flag, required int firmId});
}
