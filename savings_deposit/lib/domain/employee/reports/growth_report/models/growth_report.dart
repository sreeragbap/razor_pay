import 'package:freezed_annotation/freezed_annotation.dart';

part 'growth_report.freezed.dart';

part 'growth_report.g.dart';

@freezed
class GrowthReportDataModel with _$GrowthReportDataModel {
  const factory GrowthReportDataModel({
    required String? regionName,
    required String? area,
    required int? branchId,
    required String? branchName,
    required int? count,
    required double? amount,
    required double? dailyGrowth,
    required double? monthlyGrowth,
    required double? outStanding,
  }) = _GrowthReportDataModel;

  factory GrowthReportDataModel.fromJson(Map<String, dynamic> json) =>
      _$GrowthReportDataModelFromJson(json);
}
