// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewSdPostResponseDataModel _$NewSdPostResponseDataModelFromJson(
    Map<String, dynamic> json) {
  return _AvailableSchemesDataModel.fromJson(json);
}

/// @nodoc
class _$NewSdPostResponseDataModelTearOff {
  const _$NewSdPostResponseDataModelTearOff();

  _AvailableSchemesDataModel call(
      {required String? status,
      required String? type,
      required String? depositId}) {
    return _AvailableSchemesDataModel(
      status: status,
      type: type,
      depositId: depositId,
    );
  }

  NewSdPostResponseDataModel fromJson(Map<String, Object?> json) {
    return NewSdPostResponseDataModel.fromJson(json);
  }
}

/// @nodoc
const $NewSdPostResponseDataModel = _$NewSdPostResponseDataModelTearOff();

/// @nodoc
mixin _$NewSdPostResponseDataModel {
  String? get status => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get depositId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewSdPostResponseDataModelCopyWith<NewSdPostResponseDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewSdPostResponseDataModelCopyWith<$Res> {
  factory $NewSdPostResponseDataModelCopyWith(NewSdPostResponseDataModel value,
          $Res Function(NewSdPostResponseDataModel) then) =
      _$NewSdPostResponseDataModelCopyWithImpl<$Res>;
  $Res call({String? status, String? type, String? depositId});
}

/// @nodoc
class _$NewSdPostResponseDataModelCopyWithImpl<$Res>
    implements $NewSdPostResponseDataModelCopyWith<$Res> {
  _$NewSdPostResponseDataModelCopyWithImpl(this._value, this._then);

  final NewSdPostResponseDataModel _value;
  // ignore: unused_field
  final $Res Function(NewSdPostResponseDataModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? depositId = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      depositId: depositId == freezed
          ? _value.depositId
          : depositId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AvailableSchemesDataModelCopyWith<$Res>
    implements $NewSdPostResponseDataModelCopyWith<$Res> {
  factory _$AvailableSchemesDataModelCopyWith(_AvailableSchemesDataModel value,
          $Res Function(_AvailableSchemesDataModel) then) =
      __$AvailableSchemesDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String? status, String? type, String? depositId});
}

/// @nodoc
class __$AvailableSchemesDataModelCopyWithImpl<$Res>
    extends _$NewSdPostResponseDataModelCopyWithImpl<$Res>
    implements _$AvailableSchemesDataModelCopyWith<$Res> {
  __$AvailableSchemesDataModelCopyWithImpl(_AvailableSchemesDataModel _value,
      $Res Function(_AvailableSchemesDataModel) _then)
      : super(_value, (v) => _then(v as _AvailableSchemesDataModel));

  @override
  _AvailableSchemesDataModel get _value =>
      super._value as _AvailableSchemesDataModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? depositId = freezed,
  }) {
    return _then(_AvailableSchemesDataModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      depositId: depositId == freezed
          ? _value.depositId
          : depositId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableSchemesDataModel implements _AvailableSchemesDataModel {
  const _$_AvailableSchemesDataModel(
      {required this.status, required this.type, required this.depositId});

  factory _$_AvailableSchemesDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableSchemesDataModelFromJson(json);

  @override
  final String? status;
  @override
  final String? type;
  @override
  final String? depositId;

  @override
  String toString() {
    return 'NewSdPostResponseDataModel(status: $status, type: $type, depositId: $depositId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvailableSchemesDataModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.depositId, depositId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(depositId));

  @JsonKey(ignore: true)
  @override
  _$AvailableSchemesDataModelCopyWith<_AvailableSchemesDataModel>
      get copyWith =>
          __$AvailableSchemesDataModelCopyWithImpl<_AvailableSchemesDataModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AvailableSchemesDataModelToJson(this);
  }
}

abstract class _AvailableSchemesDataModel
    implements NewSdPostResponseDataModel {
  const factory _AvailableSchemesDataModel(
      {required String? status,
      required String? type,
      required String? depositId}) = _$_AvailableSchemesDataModel;

  factory _AvailableSchemesDataModel.fromJson(Map<String, dynamic> json) =
      _$_AvailableSchemesDataModel.fromJson;

  @override
  String? get status;
  @override
  String? get type;
  @override
  String? get depositId;
  @override
  @JsonKey(ignore: true)
  _$AvailableSchemesDataModelCopyWith<_AvailableSchemesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
