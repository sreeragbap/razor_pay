// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtpModel _$OtpModelFromJson(Map<String, dynamic> json) {
  return _OtpModel.fromJson(json);
}

/// @nodoc
class _$OtpModelTearOff {
  const _$OtpModelTearOff();

  _OtpModel call(
      {required int? transactionId,
      required String? phone1,
      required int? branchId,
      required int? firmId}) {
    return _OtpModel(
      transactionId: transactionId,
      phone1: phone1,
      branchId: branchId,
      firmId: firmId,
    );
  }

  OtpModel fromJson(Map<String, Object?> json) {
    return OtpModel.fromJson(json);
  }
}

/// @nodoc
const $OtpModel = _$OtpModelTearOff();

/// @nodoc
mixin _$OtpModel {
  int? get transactionId => throw _privateConstructorUsedError;
  String? get phone1 => throw _privateConstructorUsedError;
  int? get branchId => throw _privateConstructorUsedError;
  int? get firmId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpModelCopyWith<OtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpModelCopyWith<$Res> {
  factory $OtpModelCopyWith(OtpModel value, $Res Function(OtpModel) then) =
      _$OtpModelCopyWithImpl<$Res>;
  $Res call({int? transactionId, String? phone1, int? branchId, int? firmId});
}

/// @nodoc
class _$OtpModelCopyWithImpl<$Res> implements $OtpModelCopyWith<$Res> {
  _$OtpModelCopyWithImpl(this._value, this._then);

  final OtpModel _value;
  // ignore: unused_field
  final $Res Function(OtpModel) _then;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? phone1 = freezed,
    Object? branchId = freezed,
    Object? firmId = freezed,
  }) {
    return _then(_value.copyWith(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      phone1: phone1 == freezed
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      firmId: firmId == freezed
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$OtpModelCopyWith<$Res> implements $OtpModelCopyWith<$Res> {
  factory _$OtpModelCopyWith(_OtpModel value, $Res Function(_OtpModel) then) =
      __$OtpModelCopyWithImpl<$Res>;
  @override
  $Res call({int? transactionId, String? phone1, int? branchId, int? firmId});
}

/// @nodoc
class __$OtpModelCopyWithImpl<$Res> extends _$OtpModelCopyWithImpl<$Res>
    implements _$OtpModelCopyWith<$Res> {
  __$OtpModelCopyWithImpl(_OtpModel _value, $Res Function(_OtpModel) _then)
      : super(_value, (v) => _then(v as _OtpModel));

  @override
  _OtpModel get _value => super._value as _OtpModel;

  @override
  $Res call({
    Object? transactionId = freezed,
    Object? phone1 = freezed,
    Object? branchId = freezed,
    Object? firmId = freezed,
  }) {
    return _then(_OtpModel(
      transactionId: transactionId == freezed
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as int?,
      phone1: phone1 == freezed
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      firmId: firmId == freezed
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtpModel implements _OtpModel {
  const _$_OtpModel(
      {required this.transactionId,
      required this.phone1,
      required this.branchId,
      required this.firmId});

  factory _$_OtpModel.fromJson(Map<String, dynamic> json) =>
      _$$_OtpModelFromJson(json);

  @override
  final int? transactionId;
  @override
  final String? phone1;
  @override
  final int? branchId;
  @override
  final int? firmId;

  @override
  String toString() {
    return 'OtpModel(transactionId: $transactionId, phone1: $phone1, branchId: $branchId, firmId: $firmId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpModel &&
            const DeepCollectionEquality()
                .equals(other.transactionId, transactionId) &&
            const DeepCollectionEquality().equals(other.phone1, phone1) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.firmId, firmId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactionId),
      const DeepCollectionEquality().hash(phone1),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(firmId));

  @JsonKey(ignore: true)
  @override
  _$OtpModelCopyWith<_OtpModel> get copyWith =>
      __$OtpModelCopyWithImpl<_OtpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtpModelToJson(this);
  }
}

abstract class _OtpModel implements OtpModel {
  const factory _OtpModel(
      {required int? transactionId,
      required String? phone1,
      required int? branchId,
      required int? firmId}) = _$_OtpModel;

  factory _OtpModel.fromJson(Map<String, dynamic> json) = _$_OtpModel.fromJson;

  @override
  int? get transactionId;
  @override
  String? get phone1;
  @override
  int? get branchId;
  @override
  int? get firmId;
  @override
  @JsonKey(ignore: true)
  _$OtpModelCopyWith<_OtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
