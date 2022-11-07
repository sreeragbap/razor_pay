import 'package:freezed_annotation/freezed_annotation.dart';
part 'settlement.freezed.dart';
part 'settlement.g.dart';

@freezed
class SettlementModel with _$SettlementModel {
  const factory SettlementModel(
      {required String? accountType,
      required String? accountNumber,
      required double? balance,
      required double? interest,
      required double? roundindDifference,
      required double? intrestRate,
      required double? settleAmount}) = _SettlementModel;

  factory SettlementModel.fromJson(Map<String, dynamic> json) =>
      _$SettlementModelFromJson(json);
}
