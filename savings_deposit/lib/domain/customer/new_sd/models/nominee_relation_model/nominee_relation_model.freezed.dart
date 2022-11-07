// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nominee_relation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NomineeRelationDataModel _$NomineeRelationDataModelFromJson(
    Map<String, dynamic> json) {
  return _NomineeRelationDataModel.fromJson(json);
}

/// @nodoc
class _$NomineeRelationDataModelTearOff {
  const _$NomineeRelationDataModelTearOff();

  _NomineeRelationDataModel call(
      {required int? relationId, required String? relationName}) {
    return _NomineeRelationDataModel(
      relationId: relationId,
      relationName: relationName,
    );
  }

  NomineeRelationDataModel fromJson(Map<String, Object?> json) {
    return NomineeRelationDataModel.fromJson(json);
  }
}

/// @nodoc
const $NomineeRelationDataModel = _$NomineeRelationDataModelTearOff();

/// @nodoc
mixin _$NomineeRelationDataModel {
  int? get relationId => throw _privateConstructorUsedError;
  String? get relationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NomineeRelationDataModelCopyWith<NomineeRelationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NomineeRelationDataModelCopyWith<$Res> {
  factory $NomineeRelationDataModelCopyWith(NomineeRelationDataModel value,
          $Res Function(NomineeRelationDataModel) then) =
      _$NomineeRelationDataModelCopyWithImpl<$Res>;
  $Res call({int? relationId, String? relationName});
}

/// @nodoc
class _$NomineeRelationDataModelCopyWithImpl<$Res>
    implements $NomineeRelationDataModelCopyWith<$Res> {
  _$NomineeRelationDataModelCopyWithImpl(this._value, this._then);

  final NomineeRelationDataModel _value;
  // ignore: unused_field
  final $Res Function(NomineeRelationDataModel) _then;

  @override
  $Res call({
    Object? relationId = freezed,
    Object? relationName = freezed,
  }) {
    return _then(_value.copyWith(
      relationId: relationId == freezed
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as int?,
      relationName: relationName == freezed
          ? _value.relationName
          : relationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NomineeRelationDataModelCopyWith<$Res>
    implements $NomineeRelationDataModelCopyWith<$Res> {
  factory _$NomineeRelationDataModelCopyWith(_NomineeRelationDataModel value,
          $Res Function(_NomineeRelationDataModel) then) =
      __$NomineeRelationDataModelCopyWithImpl<$Res>;
  @override
  $Res call({int? relationId, String? relationName});
}

/// @nodoc
class __$NomineeRelationDataModelCopyWithImpl<$Res>
    extends _$NomineeRelationDataModelCopyWithImpl<$Res>
    implements _$NomineeRelationDataModelCopyWith<$Res> {
  __$NomineeRelationDataModelCopyWithImpl(_NomineeRelationDataModel _value,
      $Res Function(_NomineeRelationDataModel) _then)
      : super(_value, (v) => _then(v as _NomineeRelationDataModel));

  @override
  _NomineeRelationDataModel get _value =>
      super._value as _NomineeRelationDataModel;

  @override
  $Res call({
    Object? relationId = freezed,
    Object? relationName = freezed,
  }) {
    return _then(_NomineeRelationDataModel(
      relationId: relationId == freezed
          ? _value.relationId
          : relationId // ignore: cast_nullable_to_non_nullable
              as int?,
      relationName: relationName == freezed
          ? _value.relationName
          : relationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NomineeRelationDataModel implements _NomineeRelationDataModel {
  const _$_NomineeRelationDataModel(
      {required this.relationId, required this.relationName});

  factory _$_NomineeRelationDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_NomineeRelationDataModelFromJson(json);

  @override
  final int? relationId;
  @override
  final String? relationName;

  @override
  String toString() {
    return 'NomineeRelationDataModel(relationId: $relationId, relationName: $relationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NomineeRelationDataModel &&
            const DeepCollectionEquality()
                .equals(other.relationId, relationId) &&
            const DeepCollectionEquality()
                .equals(other.relationName, relationName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(relationId),
      const DeepCollectionEquality().hash(relationName));

  @JsonKey(ignore: true)
  @override
  _$NomineeRelationDataModelCopyWith<_NomineeRelationDataModel> get copyWith =>
      __$NomineeRelationDataModelCopyWithImpl<_NomineeRelationDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NomineeRelationDataModelToJson(this);
  }
}

abstract class _NomineeRelationDataModel implements NomineeRelationDataModel {
  const factory _NomineeRelationDataModel(
      {required int? relationId,
      required String? relationName}) = _$_NomineeRelationDataModel;

  factory _NomineeRelationDataModel.fromJson(Map<String, dynamic> json) =
      _$_NomineeRelationDataModel.fromJson;

  @override
  int? get relationId;
  @override
  String? get relationName;
  @override
  @JsonKey(ignore: true)
  _$NomineeRelationDataModelCopyWith<_NomineeRelationDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
