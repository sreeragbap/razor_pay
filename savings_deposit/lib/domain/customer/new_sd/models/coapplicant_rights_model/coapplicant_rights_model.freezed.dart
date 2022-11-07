// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coapplicant_rights_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoApplicantRightsModel _$CoApplicantRightsModelFromJson(
    Map<String, dynamic> json) {
  return _CoApplicantRightsModel.fromJson(json);
}

/// @nodoc
class _$CoApplicantRightsModelTearOff {
  const _$CoApplicantRightsModelTearOff();

  _CoApplicantRightsModel call(
      {required int? statusId, required String status}) {
    return _CoApplicantRightsModel(
      statusId: statusId,
      status: status,
    );
  }

  CoApplicantRightsModel fromJson(Map<String, Object?> json) {
    return CoApplicantRightsModel.fromJson(json);
  }
}

/// @nodoc
const $CoApplicantRightsModel = _$CoApplicantRightsModelTearOff();

/// @nodoc
mixin _$CoApplicantRightsModel {
  int? get statusId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoApplicantRightsModelCopyWith<CoApplicantRightsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoApplicantRightsModelCopyWith<$Res> {
  factory $CoApplicantRightsModelCopyWith(CoApplicantRightsModel value,
          $Res Function(CoApplicantRightsModel) then) =
      _$CoApplicantRightsModelCopyWithImpl<$Res>;
  $Res call({int? statusId, String status});
}

/// @nodoc
class _$CoApplicantRightsModelCopyWithImpl<$Res>
    implements $CoApplicantRightsModelCopyWith<$Res> {
  _$CoApplicantRightsModelCopyWithImpl(this._value, this._then);

  final CoApplicantRightsModel _value;
  // ignore: unused_field
  final $Res Function(CoApplicantRightsModel) _then;

  @override
  $Res call({
    Object? statusId = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      statusId: statusId == freezed
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CoApplicantRightsModelCopyWith<$Res>
    implements $CoApplicantRightsModelCopyWith<$Res> {
  factory _$CoApplicantRightsModelCopyWith(_CoApplicantRightsModel value,
          $Res Function(_CoApplicantRightsModel) then) =
      __$CoApplicantRightsModelCopyWithImpl<$Res>;
  @override
  $Res call({int? statusId, String status});
}

/// @nodoc
class __$CoApplicantRightsModelCopyWithImpl<$Res>
    extends _$CoApplicantRightsModelCopyWithImpl<$Res>
    implements _$CoApplicantRightsModelCopyWith<$Res> {
  __$CoApplicantRightsModelCopyWithImpl(_CoApplicantRightsModel _value,
      $Res Function(_CoApplicantRightsModel) _then)
      : super(_value, (v) => _then(v as _CoApplicantRightsModel));

  @override
  _CoApplicantRightsModel get _value => super._value as _CoApplicantRightsModel;

  @override
  $Res call({
    Object? statusId = freezed,
    Object? status = freezed,
  }) {
    return _then(_CoApplicantRightsModel(
      statusId: statusId == freezed
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CoApplicantRightsModel implements _CoApplicantRightsModel {
  const _$_CoApplicantRightsModel(
      {required this.statusId, required this.status});

  factory _$_CoApplicantRightsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CoApplicantRightsModelFromJson(json);

  @override
  final int? statusId;
  @override
  final String status;

  @override
  String toString() {
    return 'CoApplicantRightsModel(statusId: $statusId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CoApplicantRightsModel &&
            const DeepCollectionEquality().equals(other.statusId, statusId) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(statusId),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$CoApplicantRightsModelCopyWith<_CoApplicantRightsModel> get copyWith =>
      __$CoApplicantRightsModelCopyWithImpl<_CoApplicantRightsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoApplicantRightsModelToJson(this);
  }
}

abstract class _CoApplicantRightsModel implements CoApplicantRightsModel {
  const factory _CoApplicantRightsModel(
      {required int? statusId,
      required String status}) = _$_CoApplicantRightsModel;

  factory _CoApplicantRightsModel.fromJson(Map<String, dynamic> json) =
      _$_CoApplicantRightsModel.fromJson;

  @override
  int? get statusId;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$CoApplicantRightsModelCopyWith<_CoApplicantRightsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
