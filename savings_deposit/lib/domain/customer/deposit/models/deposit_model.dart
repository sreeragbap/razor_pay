import 'package:freezed_annotation/freezed_annotation.dart';
part 'deposit_model.freezed.dart';
part 'deposit_model.g.dart';

@freezed
class DepositModel with _$DepositModel {
  const factory DepositModel({
    required String status,
    required String type,
    required int transId,
  }) = _DepositModel;
  factory DepositModel.fromJson(Map<String, dynamic> json) =>
      _$DepositModelFromJson(json);
}
