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

PaymentCardModel _$PaymentCardModelFromJson(Map<String, dynamic> json) {
  return _PaymentCardModel.fromJson(json);
}

/// @nodoc
class _$PaymentCardModelTearOff {
  const _$PaymentCardModelTearOff();

  _PaymentCardModel call(
      {required String paymentgatewayname,
      required String providerid,
      required String paymentgatewaytype,
      required String commissionflatdescription}) {
    return _PaymentCardModel(
      paymentgatewayname: paymentgatewayname,
      providerid: providerid,
      paymentgatewaytype: paymentgatewaytype,
      commissionflatdescription: commissionflatdescription,
    );
  }

  PaymentCardModel fromJson(Map<String, Object?> json) {
    return PaymentCardModel.fromJson(json);
  }
}

/// @nodoc
const $PaymentCardModel = _$PaymentCardModelTearOff();

/// @nodoc
mixin _$PaymentCardModel {
  String get paymentgatewayname => throw _privateConstructorUsedError;
  String get providerid => throw _privateConstructorUsedError;
  String get paymentgatewaytype => throw _privateConstructorUsedError;
  String get commissionflatdescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentCardModelCopyWith<PaymentCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCardModelCopyWith<$Res> {
  factory $PaymentCardModelCopyWith(
          PaymentCardModel value, $Res Function(PaymentCardModel) then) =
      _$PaymentCardModelCopyWithImpl<$Res>;
  $Res call(
      {String paymentgatewayname,
      String providerid,
      String paymentgatewaytype,
      String commissionflatdescription});
}

/// @nodoc
class _$PaymentCardModelCopyWithImpl<$Res>
    implements $PaymentCardModelCopyWith<$Res> {
  _$PaymentCardModelCopyWithImpl(this._value, this._then);

  final PaymentCardModel _value;
  // ignore: unused_field
  final $Res Function(PaymentCardModel) _then;

  @override
  $Res call({
    Object? paymentgatewayname = freezed,
    Object? providerid = freezed,
    Object? paymentgatewaytype = freezed,
    Object? commissionflatdescription = freezed,
  }) {
    return _then(_value.copyWith(
      paymentgatewayname: paymentgatewayname == freezed
          ? _value.paymentgatewayname
          : paymentgatewayname // ignore: cast_nullable_to_non_nullable
              as String,
      providerid: providerid == freezed
          ? _value.providerid
          : providerid // ignore: cast_nullable_to_non_nullable
              as String,
      paymentgatewaytype: paymentgatewaytype == freezed
          ? _value.paymentgatewaytype
          : paymentgatewaytype // ignore: cast_nullable_to_non_nullable
              as String,
      commissionflatdescription: commissionflatdescription == freezed
          ? _value.commissionflatdescription
          : commissionflatdescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentCardModelCopyWith<$Res>
    implements $PaymentCardModelCopyWith<$Res> {
  factory _$PaymentCardModelCopyWith(
          _PaymentCardModel value, $Res Function(_PaymentCardModel) then) =
      __$PaymentCardModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String paymentgatewayname,
      String providerid,
      String paymentgatewaytype,
      String commissionflatdescription});
}

/// @nodoc
class __$PaymentCardModelCopyWithImpl<$Res>
    extends _$PaymentCardModelCopyWithImpl<$Res>
    implements _$PaymentCardModelCopyWith<$Res> {
  __$PaymentCardModelCopyWithImpl(
      _PaymentCardModel _value, $Res Function(_PaymentCardModel) _then)
      : super(_value, (v) => _then(v as _PaymentCardModel));

  @override
  _PaymentCardModel get _value => super._value as _PaymentCardModel;

  @override
  $Res call({
    Object? paymentgatewayname = freezed,
    Object? providerid = freezed,
    Object? paymentgatewaytype = freezed,
    Object? commissionflatdescription = freezed,
  }) {
    return _then(_PaymentCardModel(
      paymentgatewayname: paymentgatewayname == freezed
          ? _value.paymentgatewayname
          : paymentgatewayname // ignore: cast_nullable_to_non_nullable
              as String,
      providerid: providerid == freezed
          ? _value.providerid
          : providerid // ignore: cast_nullable_to_non_nullable
              as String,
      paymentgatewaytype: paymentgatewaytype == freezed
          ? _value.paymentgatewaytype
          : paymentgatewaytype // ignore: cast_nullable_to_non_nullable
              as String,
      commissionflatdescription: commissionflatdescription == freezed
          ? _value.commissionflatdescription
          : commissionflatdescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentCardModel implements _PaymentCardModel {
  const _$_PaymentCardModel(
      {required this.paymentgatewayname,
      required this.providerid,
      required this.paymentgatewaytype,
      required this.commissionflatdescription});

  factory _$_PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentCardModelFromJson(json);

  @override
  final String paymentgatewayname;
  @override
  final String providerid;
  @override
  final String paymentgatewaytype;
  @override
  final String commissionflatdescription;

  @override
  String toString() {
    return 'PaymentCardModel(paymentgatewayname: $paymentgatewayname, providerid: $providerid, paymentgatewaytype: $paymentgatewaytype, commissionflatdescription: $commissionflatdescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentCardModel &&
            const DeepCollectionEquality()
                .equals(other.paymentgatewayname, paymentgatewayname) &&
            const DeepCollectionEquality()
                .equals(other.providerid, providerid) &&
            const DeepCollectionEquality()
                .equals(other.paymentgatewaytype, paymentgatewaytype) &&
            const DeepCollectionEquality().equals(
                other.commissionflatdescription, commissionflatdescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(paymentgatewayname),
      const DeepCollectionEquality().hash(providerid),
      const DeepCollectionEquality().hash(paymentgatewaytype),
      const DeepCollectionEquality().hash(commissionflatdescription));

  @JsonKey(ignore: true)
  @override
  _$PaymentCardModelCopyWith<_PaymentCardModel> get copyWith =>
      __$PaymentCardModelCopyWithImpl<_PaymentCardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentCardModelToJson(this);
  }
}

abstract class _PaymentCardModel implements PaymentCardModel {
  const factory _PaymentCardModel(
      {required String paymentgatewayname,
      required String providerid,
      required String paymentgatewaytype,
      required String commissionflatdescription}) = _$_PaymentCardModel;

  factory _PaymentCardModel.fromJson(Map<String, dynamic> json) =
      _$_PaymentCardModel.fromJson;

  @override
  String get paymentgatewayname;
  @override
  String get providerid;
  @override
  String get paymentgatewaytype;
  @override
  String get commissionflatdescription;
  @override
  @JsonKey(ignore: true)
  _$PaymentCardModelCopyWith<_PaymentCardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
