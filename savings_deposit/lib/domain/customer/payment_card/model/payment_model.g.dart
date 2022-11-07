// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentCardModel _$$_PaymentCardModelFromJson(Map<String, dynamic> json) =>
    _$_PaymentCardModel(
      paymentgatewayname: json['paymentgatewayname'] as String,
      providerid: json['providerid'] as String,
      paymentgatewaytype: json['paymentgatewaytype'] as String,
      commissionflatdescription: json['commissionflatdescription'] as String,
    );

Map<String, dynamic> _$$_PaymentCardModelToJson(_$_PaymentCardModel instance) =>
    <String, dynamic>{
      'paymentgatewayname': instance.paymentgatewayname,
      'providerid': instance.providerid,
      'paymentgatewaytype': instance.paymentgatewaytype,
      'commissionflatdescription': instance.commissionflatdescription,
    };
