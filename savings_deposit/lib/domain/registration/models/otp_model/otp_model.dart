import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_model.freezed.dart';
part 'otp_model.g.dart';

@freezed
class OtpModel with _$OtpModel {
  const factory OtpModel({
    required int? transactionId,
    required String? phone1,
    required int? branchId,
    required int? firmId,
  }) = _OtpModel;

  factory OtpModel.fromJson(Map<String, dynamic> json) =>
      _$OtpModelFromJson(json);
}
