import 'package:freezed_annotation/freezed_annotation.dart';
part 'customer_bank_model.freezed.dart';
part 'customer_bank_model.g.dart';

@freezed
class CustomerBankModel with _$CustomerBankModel {
  const factory CustomerBankModel({
    required String accountName,
    required int accountNo,
  }) = _CustomerBankModel;

  factory CustomerBankModel.fromJson(Map<String, dynamic> json) =>
      _$CustomerBankModelFromJson(json);
}
