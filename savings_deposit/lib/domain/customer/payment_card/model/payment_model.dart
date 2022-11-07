import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_model.freezed.dart';
part 'payment_model.g.dart';

@freezed
class PaymentCardModel with _$PaymentCardModel {
  const factory PaymentCardModel({
    required String paymentgatewayname,
    required String providerid,
    required String paymentgatewaytype,
    required String commissionflatdescription,
  }) = _PaymentCardModel;
  factory PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardModelFromJson(json);
}
