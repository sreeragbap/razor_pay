// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_bank_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerBankModel _$CustomerBankModelFromJson(Map<String, dynamic> json) {
  return _CustomerBankModel.fromJson(json);
}

/// @nodoc
class _$CustomerBankModelTearOff {
  const _$CustomerBankModelTearOff();

  _CustomerBankModel call(
      {required String accountName, required int accountNo}) {
    return _CustomerBankModel(
      accountName: accountName,
      accountNo: accountNo,
    );
  }

  CustomerBankModel fromJson(Map<String, Object?> json) {
    return CustomerBankModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerBankModel = _$CustomerBankModelTearOff();

/// @nodoc
mixin _$CustomerBankModel {
  String get accountName => throw _privateConstructorUsedError;
  int get accountNo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerBankModelCopyWith<CustomerBankModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerBankModelCopyWith<$Res> {
  factory $CustomerBankModelCopyWith(
          CustomerBankModel value, $Res Function(CustomerBankModel) then) =
      _$CustomerBankModelCopyWithImpl<$Res>;
  $Res call({String accountName, int accountNo});
}

/// @nodoc
class _$CustomerBankModelCopyWithImpl<$Res>
    implements $CustomerBankModelCopyWith<$Res> {
  _$CustomerBankModelCopyWithImpl(this._value, this._then);

  final CustomerBankModel _value;
  // ignore: unused_field
  final $Res Function(CustomerBankModel) _then;

  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNo = freezed,
  }) {
    return _then(_value.copyWith(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNo: accountNo == freezed
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CustomerBankModelCopyWith<$Res>
    implements $CustomerBankModelCopyWith<$Res> {
  factory _$CustomerBankModelCopyWith(
          _CustomerBankModel value, $Res Function(_CustomerBankModel) then) =
      __$CustomerBankModelCopyWithImpl<$Res>;
  @override
  $Res call({String accountName, int accountNo});
}

/// @nodoc
class __$CustomerBankModelCopyWithImpl<$Res>
    extends _$CustomerBankModelCopyWithImpl<$Res>
    implements _$CustomerBankModelCopyWith<$Res> {
  __$CustomerBankModelCopyWithImpl(
      _CustomerBankModel _value, $Res Function(_CustomerBankModel) _then)
      : super(_value, (v) => _then(v as _CustomerBankModel));

  @override
  _CustomerBankModel get _value => super._value as _CustomerBankModel;

  @override
  $Res call({
    Object? accountName = freezed,
    Object? accountNo = freezed,
  }) {
    return _then(_CustomerBankModel(
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNo: accountNo == freezed
          ? _value.accountNo
          : accountNo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerBankModel implements _CustomerBankModel {
  const _$_CustomerBankModel(
      {required this.accountName, required this.accountNo});

  factory _$_CustomerBankModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerBankModelFromJson(json);

  @override
  final String accountName;
  @override
  final int accountNo;

  @override
  String toString() {
    return 'CustomerBankModel(accountName: $accountName, accountNo: $accountNo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerBankModel &&
            const DeepCollectionEquality()
                .equals(other.accountName, accountName) &&
            const DeepCollectionEquality().equals(other.accountNo, accountNo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountName),
      const DeepCollectionEquality().hash(accountNo));

  @JsonKey(ignore: true)
  @override
  _$CustomerBankModelCopyWith<_CustomerBankModel> get copyWith =>
      __$CustomerBankModelCopyWithImpl<_CustomerBankModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerBankModelToJson(this);
  }
}

abstract class _CustomerBankModel implements CustomerBankModel {
  const factory _CustomerBankModel(
      {required String accountName,
      required int accountNo}) = _$_CustomerBankModel;

  factory _CustomerBankModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerBankModel.fromJson;

  @override
  String get accountName;
  @override
  int get accountNo;
  @override
  @JsonKey(ignore: true)
  _$CustomerBankModelCopyWith<_CustomerBankModel> get copyWith =>
      throw _privateConstructorUsedError;
}
