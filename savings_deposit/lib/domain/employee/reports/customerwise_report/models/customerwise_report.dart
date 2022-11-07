import 'package:freezed_annotation/freezed_annotation.dart';
part 'customerwise_report.freezed.dart';
part 'customerwise_report.g.dart';

@freezed
class CustomerwiseReportModel with _$CustomerwiseReportModel {
  const factory CustomerwiseReportModel({
    required String? type,
    required String? docId,
    required String? customerName,
    required double? amount,
    required String? intDate,
    required int? intRate,
    required double? intAcured,
    required double? intPayable,
  }) = _CustomerwiseReportModel;

  factory CustomerwiseReportModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerwiseReportModelFromJson(json);
}
