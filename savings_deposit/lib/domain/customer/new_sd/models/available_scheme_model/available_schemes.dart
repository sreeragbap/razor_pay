// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'available_schemes.freezed.dart';
part 'available_schemes.g.dart';

@freezed
class AvailableSchemesDataModel with _$AvailableSchemesDataModel {
  const factory AvailableSchemesDataModel({
    required int? schemeId,
    required String? SD,
    required int? minimumAmount,
    required int? maxAmount,
    required double? interestRate,
  }) = _AvailableSchemesDataModel;
  factory AvailableSchemesDataModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableSchemesDataModelFromJson(json);
}
