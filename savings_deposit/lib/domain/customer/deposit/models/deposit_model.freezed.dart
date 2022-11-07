// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'deposit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DepositModel _$DepositModelFromJson(Map<String, dynamic> json) {
  return _DepositModel.fromJson(json);
}

/// @nodoc
class _$DepositModelTearOff {
  const _$DepositModelTearOff();

  _DepositModel call(
      {required String status, required String type, required int transId}) {
    return _DepositModel(
      status: status,
      type: type,
      transId: transId,
    );
  }

  DepositModel fromJson(Map<String, Object?> json) {
    return DepositModel.fromJson(json);
  }
}

/// @nodoc
const $DepositModel = _$DepositModelTearOff();

/// @nodoc
mixin _$DepositModel {
  String get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get transId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepositModelCopyWith<DepositModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepositModelCopyWith<$Res> {
  factory $DepositModelCopyWith(
          DepositModel value, $Res Function(DepositModel) then) =
      _$DepositModelCopyWithImpl<$Res>;
  $Res call({String status, String type, int transId});
}

/// @nodoc
class _$DepositModelCopyWithImpl<$Res> implements $DepositModelCopyWith<$Res> {
  _$DepositModelCopyWithImpl(this._value, this._then);

  final DepositModel _value;
  // ignore: unused_field
  final $Res Function(DepositModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? transId = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      transId: transId == freezed
          ? _value.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DepositModelCopyWith<$Res>
    implements $DepositModelCopyWith<$Res> {
  factory _$DepositModelCopyWith(
          _DepositModel value, $Res Function(_DepositModel) then) =
      __$DepositModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, String type, int transId});
}

/// @nodoc
class __$DepositModelCopyWithImpl<$Res> extends _$DepositModelCopyWithImpl<$Res>
    implements _$DepositModelCopyWith<$Res> {
  __$DepositModelCopyWithImpl(
      _DepositModel _value, $Res Function(_DepositModel) _then)
      : super(_value, (v) => _then(v as _DepositModel));

  @override
  _DepositModel get _value => super._value as _DepositModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? transId = freezed,
  }) {
    return _then(_DepositModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      transId: transId == freezed
          ? _value.transId
          : transId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DepositModel implements _DepositModel {
  const _$_DepositModel(
      {required this.status, required this.type, required this.transId});

  factory _$_DepositModel.fromJson(Map<String, dynamic> json) =>
      _$$_DepositModelFromJson(json);

  @override
  final String status;
  @override
  final String type;
  @override
  final int transId;

  @override
  String toString() {
    return 'DepositModel(status: $status, type: $type, transId: $transId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DepositModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.transId, transId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(transId));

  @JsonKey(ignore: true)
  @override
  _$DepositModelCopyWith<_DepositModel> get copyWith =>
      __$DepositModelCopyWithImpl<_DepositModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepositModelToJson(this);
  }
}

abstract class _DepositModel implements DepositModel {
  const factory _DepositModel(
      {required String status,
      required String type,
      required int transId}) = _$_DepositModel;

  factory _DepositModel.fromJson(Map<String, dynamic> json) =
      _$_DepositModel.fromJson;

  @override
  String get status;
  @override
  String get type;
  @override
  int get transId;
  @override
  @JsonKey(ignore: true)
  _$DepositModelCopyWith<_DepositModel> get copyWith =>
      throw _privateConstructorUsedError;
}
