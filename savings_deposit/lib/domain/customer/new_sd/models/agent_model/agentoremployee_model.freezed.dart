// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'agentoremployee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeOrAgentDataModel _$EmployeeOrAgentDataModelFromJson(
    Map<String, dynamic> json) {
  return _EmployeeOrAgentDataModel.fromJson(json);
}

/// @nodoc
class _$EmployeeOrAgentDataModelTearOff {
  const _$EmployeeOrAgentDataModelTearOff();

  _EmployeeOrAgentDataModel call(
      {required String status, required String name}) {
    return _EmployeeOrAgentDataModel(
      status: status,
      name: name,
    );
  }

  EmployeeOrAgentDataModel fromJson(Map<String, Object?> json) {
    return EmployeeOrAgentDataModel.fromJson(json);
  }
}

/// @nodoc
const $EmployeeOrAgentDataModel = _$EmployeeOrAgentDataModelTearOff();

/// @nodoc
mixin _$EmployeeOrAgentDataModel {
  String get status => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeOrAgentDataModelCopyWith<EmployeeOrAgentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeOrAgentDataModelCopyWith<$Res> {
  factory $EmployeeOrAgentDataModelCopyWith(EmployeeOrAgentDataModel value,
          $Res Function(EmployeeOrAgentDataModel) then) =
      _$EmployeeOrAgentDataModelCopyWithImpl<$Res>;
  $Res call({String status, String name});
}

/// @nodoc
class _$EmployeeOrAgentDataModelCopyWithImpl<$Res>
    implements $EmployeeOrAgentDataModelCopyWith<$Res> {
  _$EmployeeOrAgentDataModelCopyWithImpl(this._value, this._then);

  final EmployeeOrAgentDataModel _value;
  // ignore: unused_field
  final $Res Function(EmployeeOrAgentDataModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmployeeOrAgentDataModelCopyWith<$Res>
    implements $EmployeeOrAgentDataModelCopyWith<$Res> {
  factory _$EmployeeOrAgentDataModelCopyWith(_EmployeeOrAgentDataModel value,
          $Res Function(_EmployeeOrAgentDataModel) then) =
      __$EmployeeOrAgentDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, String name});
}

/// @nodoc
class __$EmployeeOrAgentDataModelCopyWithImpl<$Res>
    extends _$EmployeeOrAgentDataModelCopyWithImpl<$Res>
    implements _$EmployeeOrAgentDataModelCopyWith<$Res> {
  __$EmployeeOrAgentDataModelCopyWithImpl(_EmployeeOrAgentDataModel _value,
      $Res Function(_EmployeeOrAgentDataModel) _then)
      : super(_value, (v) => _then(v as _EmployeeOrAgentDataModel));

  @override
  _EmployeeOrAgentDataModel get _value =>
      super._value as _EmployeeOrAgentDataModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? name = freezed,
  }) {
    return _then(_EmployeeOrAgentDataModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeOrAgentDataModel implements _EmployeeOrAgentDataModel {
  const _$_EmployeeOrAgentDataModel({required this.status, required this.name});

  factory _$_EmployeeOrAgentDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeOrAgentDataModelFromJson(json);

  @override
  final String status;
  @override
  final String name;

  @override
  String toString() {
    return 'EmployeeOrAgentDataModel(status: $status, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmployeeOrAgentDataModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$EmployeeOrAgentDataModelCopyWith<_EmployeeOrAgentDataModel> get copyWith =>
      __$EmployeeOrAgentDataModelCopyWithImpl<_EmployeeOrAgentDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeOrAgentDataModelToJson(this);
  }
}

abstract class _EmployeeOrAgentDataModel implements EmployeeOrAgentDataModel {
  const factory _EmployeeOrAgentDataModel(
      {required String status,
      required String name}) = _$_EmployeeOrAgentDataModel;

  factory _EmployeeOrAgentDataModel.fromJson(Map<String, dynamic> json) =
      _$_EmployeeOrAgentDataModel.fromJson;

  @override
  String get status;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$EmployeeOrAgentDataModelCopyWith<_EmployeeOrAgentDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
