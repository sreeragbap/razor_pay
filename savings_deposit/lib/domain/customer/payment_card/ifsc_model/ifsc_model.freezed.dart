// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ifsc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IfscCodeModel _$IfscCodeModelFromJson(Map<String, dynamic> json) {
  return _IfscCodeModel.fromJson(json);
}

/// @nodoc
class _$IfscCodeModelTearOff {
  const _$IfscCodeModelTearOff();

  _IfscCodeModel call({required String bankname, required String branchname}) {
    return _IfscCodeModel(
      bankname: bankname,
      branchname: branchname,
    );
  }

  IfscCodeModel fromJson(Map<String, Object?> json) {
    return IfscCodeModel.fromJson(json);
  }
}

/// @nodoc
const $IfscCodeModel = _$IfscCodeModelTearOff();

/// @nodoc
mixin _$IfscCodeModel {
  String get bankname => throw _privateConstructorUsedError;
  String get branchname => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IfscCodeModelCopyWith<IfscCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IfscCodeModelCopyWith<$Res> {
  factory $IfscCodeModelCopyWith(
          IfscCodeModel value, $Res Function(IfscCodeModel) then) =
      _$IfscCodeModelCopyWithImpl<$Res>;
  $Res call({String bankname, String branchname});
}

/// @nodoc
class _$IfscCodeModelCopyWithImpl<$Res>
    implements $IfscCodeModelCopyWith<$Res> {
  _$IfscCodeModelCopyWithImpl(this._value, this._then);

  final IfscCodeModel _value;
  // ignore: unused_field
  final $Res Function(IfscCodeModel) _then;

  @override
  $Res call({
    Object? bankname = freezed,
    Object? branchname = freezed,
  }) {
    return _then(_value.copyWith(
      bankname: bankname == freezed
          ? _value.bankname
          : bankname // ignore: cast_nullable_to_non_nullable
              as String,
      branchname: branchname == freezed
          ? _value.branchname
          : branchname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$IfscCodeModelCopyWith<$Res>
    implements $IfscCodeModelCopyWith<$Res> {
  factory _$IfscCodeModelCopyWith(
          _IfscCodeModel value, $Res Function(_IfscCodeModel) then) =
      __$IfscCodeModelCopyWithImpl<$Res>;
  @override
  $Res call({String bankname, String branchname});
}

/// @nodoc
class __$IfscCodeModelCopyWithImpl<$Res>
    extends _$IfscCodeModelCopyWithImpl<$Res>
    implements _$IfscCodeModelCopyWith<$Res> {
  __$IfscCodeModelCopyWithImpl(
      _IfscCodeModel _value, $Res Function(_IfscCodeModel) _then)
      : super(_value, (v) => _then(v as _IfscCodeModel));

  @override
  _IfscCodeModel get _value => super._value as _IfscCodeModel;

  @override
  $Res call({
    Object? bankname = freezed,
    Object? branchname = freezed,
  }) {
    return _then(_IfscCodeModel(
      bankname: bankname == freezed
          ? _value.bankname
          : bankname // ignore: cast_nullable_to_non_nullable
              as String,
      branchname: branchname == freezed
          ? _value.branchname
          : branchname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IfscCodeModel implements _IfscCodeModel {
  const _$_IfscCodeModel({required this.bankname, required this.branchname});

  factory _$_IfscCodeModel.fromJson(Map<String, dynamic> json) =>
      _$$_IfscCodeModelFromJson(json);

  @override
  final String bankname;
  @override
  final String branchname;

  @override
  String toString() {
    return 'IfscCodeModel(bankname: $bankname, branchname: $branchname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IfscCodeModel &&
            const DeepCollectionEquality().equals(other.bankname, bankname) &&
            const DeepCollectionEquality()
                .equals(other.branchname, branchname));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bankname),
      const DeepCollectionEquality().hash(branchname));

  @JsonKey(ignore: true)
  @override
  _$IfscCodeModelCopyWith<_IfscCodeModel> get copyWith =>
      __$IfscCodeModelCopyWithImpl<_IfscCodeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IfscCodeModelToJson(this);
  }
}

abstract class _IfscCodeModel implements IfscCodeModel {
  const factory _IfscCodeModel(
      {required String bankname,
      required String branchname}) = _$_IfscCodeModel;

  factory _IfscCodeModel.fromJson(Map<String, dynamic> json) =
      _$_IfscCodeModel.fromJson;

  @override
  String get bankname;
  @override
  String get branchname;
  @override
  @JsonKey(ignore: true)
  _$IfscCodeModelCopyWith<_IfscCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
