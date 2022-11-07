// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderResponse _$$_OrderResponseFromJson(Map<String, dynamic> json) =>
    _$_OrderResponse(
      id: json['id'] as String,
      entity: json['entity'] as String,
      amount: json['amount'] as int,
      amountPaid: json['amount_paid'] as int,
      currency: json['currency'] as String,
      receipt: json['receipt'] as String,
      offerId: json['offer_id'],
      status: json['status'] as String?,
      attempts: json['attempts'] as int?,
      notes: json['notes'] as List<dynamic>?,
      createdAt: json['created_at'] as int?,
    );

Map<String, dynamic> _$$_OrderResponseToJson(_$_OrderResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'entity': instance.entity,
      'amount': instance.amount,
      'amount_paid': instance.amountPaid,
      'currency': instance.currency,
      'receipt': instance.receipt,
      'offer_id': instance.offerId,
      'status': instance.status,
      'attempts': instance.attempts,
      'notes': instance.notes,
      'created_at': instance.createdAt,
    };
