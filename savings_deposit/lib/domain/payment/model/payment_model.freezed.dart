// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderResponse _$OrderResponseFromJson(Map<String, dynamic> json) {
  return _OrderResponse.fromJson(json);
}

/// @nodoc
class _$OrderResponseTearOff {
  const _$OrderResponseTearOff();

  _OrderResponse call(
      {required String id,
      required String entity,
      required int amount,
      @JsonKey(name: "amount_paid") required int amountPaid,
      required String currency,
      required String receipt,
      @JsonKey(name: "offer_id") required dynamic offerId,
      required String? status,
      required int? attempts,
      required List<dynamic>? notes,
      @JsonKey(name: "created_at") required int? createdAt}) {
    return _OrderResponse(
      id: id,
      entity: entity,
      amount: amount,
      amountPaid: amountPaid,
      currency: currency,
      receipt: receipt,
      offerId: offerId,
      status: status,
      attempts: attempts,
      notes: notes,
      createdAt: createdAt,
    );
  }

  OrderResponse fromJson(Map<String, Object?> json) {
    return OrderResponse.fromJson(json);
  }
}

/// @nodoc
const $OrderResponse = _$OrderResponseTearOff();

/// @nodoc
mixin _$OrderResponse {
  String get id => throw _privateConstructorUsedError;
  String get entity => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "amount_paid")
  int get amountPaid => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get receipt => throw _privateConstructorUsedError;
  @JsonKey(name: "offer_id")
  dynamic get offerId => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get attempts => throw _privateConstructorUsedError;
  List<dynamic>? get notes => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  int? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderResponseCopyWith<OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderResponseCopyWith<$Res> {
  factory $OrderResponseCopyWith(
          OrderResponse value, $Res Function(OrderResponse) then) =
      _$OrderResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String entity,
      int amount,
      @JsonKey(name: "amount_paid") int amountPaid,
      String currency,
      String receipt,
      @JsonKey(name: "offer_id") dynamic offerId,
      String? status,
      int? attempts,
      List<dynamic>? notes,
      @JsonKey(name: "created_at") int? createdAt});
}

/// @nodoc
class _$OrderResponseCopyWithImpl<$Res>
    implements $OrderResponseCopyWith<$Res> {
  _$OrderResponseCopyWithImpl(this._value, this._then);

  final OrderResponse _value;
  // ignore: unused_field
  final $Res Function(OrderResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? entity = freezed,
    Object? amount = freezed,
    Object? amountPaid = freezed,
    Object? currency = freezed,
    Object? receipt = freezed,
    Object? offerId = freezed,
    Object? status = freezed,
    Object? attempts = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: amountPaid == freezed
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      receipt: receipt == freezed
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as String,
      offerId: offerId == freezed
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      attempts: attempts == freezed
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OrderResponseCopyWith<$Res>
    implements $OrderResponseCopyWith<$Res> {
  factory _$OrderResponseCopyWith(
          _OrderResponse value, $Res Function(_OrderResponse) then) =
      __$OrderResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String entity,
      int amount,
      @JsonKey(name: "amount_paid") int amountPaid,
      String currency,
      String receipt,
      @JsonKey(name: "offer_id") dynamic offerId,
      String? status,
      int? attempts,
      List<dynamic>? notes,
      @JsonKey(name: "created_at") int? createdAt});
}

/// @nodoc
class __$OrderResponseCopyWithImpl<$Res>
    extends _$OrderResponseCopyWithImpl<$Res>
    implements _$OrderResponseCopyWith<$Res> {
  __$OrderResponseCopyWithImpl(
      _OrderResponse _value, $Res Function(_OrderResponse) _then)
      : super(_value, (v) => _then(v as _OrderResponse));

  @override
  _OrderResponse get _value => super._value as _OrderResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? entity = freezed,
    Object? amount = freezed,
    Object? amountPaid = freezed,
    Object? currency = freezed,
    Object? receipt = freezed,
    Object? offerId = freezed,
    Object? status = freezed,
    Object? attempts = freezed,
    Object? notes = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_OrderResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      entity: entity == freezed
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      amountPaid: amountPaid == freezed
          ? _value.amountPaid
          : amountPaid // ignore: cast_nullable_to_non_nullable
              as int,
      currency: currency == freezed
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      receipt: receipt == freezed
          ? _value.receipt
          : receipt // ignore: cast_nullable_to_non_nullable
              as String,
      offerId: offerId == freezed
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      attempts: attempts == freezed
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderResponse implements _OrderResponse {
  const _$_OrderResponse(
      {required this.id,
      required this.entity,
      required this.amount,
      @JsonKey(name: "amount_paid") required this.amountPaid,
      required this.currency,
      required this.receipt,
      @JsonKey(name: "offer_id") required this.offerId,
      required this.status,
      required this.attempts,
      required this.notes,
      @JsonKey(name: "created_at") required this.createdAt});

  factory _$_OrderResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OrderResponseFromJson(json);

  @override
  final String id;
  @override
  final String entity;
  @override
  final int amount;
  @override
  @JsonKey(name: "amount_paid")
  final int amountPaid;
  @override
  final String currency;
  @override
  final String receipt;
  @override
  @JsonKey(name: "offer_id")
  final dynamic offerId;
  @override
  final String? status;
  @override
  final int? attempts;
  @override
  final List<dynamic>? notes;
  @override
  @JsonKey(name: "created_at")
  final int? createdAt;

  @override
  String toString() {
    return 'OrderResponse(id: $id, entity: $entity, amount: $amount, amountPaid: $amountPaid, currency: $currency, receipt: $receipt, offerId: $offerId, status: $status, attempts: $attempts, notes: $notes, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OrderResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.entity, entity) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.amountPaid, amountPaid) &&
            const DeepCollectionEquality().equals(other.currency, currency) &&
            const DeepCollectionEquality().equals(other.receipt, receipt) &&
            const DeepCollectionEquality().equals(other.offerId, offerId) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.attempts, attempts) &&
            const DeepCollectionEquality().equals(other.notes, notes) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(entity),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(amountPaid),
      const DeepCollectionEquality().hash(currency),
      const DeepCollectionEquality().hash(receipt),
      const DeepCollectionEquality().hash(offerId),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(attempts),
      const DeepCollectionEquality().hash(notes),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$OrderResponseCopyWith<_OrderResponse> get copyWith =>
      __$OrderResponseCopyWithImpl<_OrderResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderResponseToJson(this);
  }
}

abstract class _OrderResponse implements OrderResponse {
  const factory _OrderResponse(
      {required String id,
      required String entity,
      required int amount,
      @JsonKey(name: "amount_paid") required int amountPaid,
      required String currency,
      required String receipt,
      @JsonKey(name: "offer_id") required dynamic offerId,
      required String? status,
      required int? attempts,
      required List<dynamic>? notes,
      @JsonKey(name: "created_at") required int? createdAt}) = _$_OrderResponse;

  factory _OrderResponse.fromJson(Map<String, dynamic> json) =
      _$_OrderResponse.fromJson;

  @override
  String get id;
  @override
  String get entity;
  @override
  int get amount;
  @override
  @JsonKey(name: "amount_paid")
  int get amountPaid;
  @override
  String get currency;
  @override
  String get receipt;
  @override
  @JsonKey(name: "offer_id")
  dynamic get offerId;
  @override
  String? get status;
  @override
  int? get attempts;
  @override
  List<dynamic>? get notes;
  @override
  @JsonKey(name: "created_at")
  int? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$OrderResponseCopyWith<_OrderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
