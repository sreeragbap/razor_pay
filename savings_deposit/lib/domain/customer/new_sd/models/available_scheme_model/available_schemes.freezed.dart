// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'available_schemes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvailableSchemesDataModel _$AvailableSchemesDataModelFromJson(
    Map<String, dynamic> json) {
  return _AvailableSchemesDataModel.fromJson(json);
}

/// @nodoc
class _$AvailableSchemesDataModelTearOff {
  const _$AvailableSchemesDataModelTearOff();

  _AvailableSchemesDataModel call(
      {required int? schemeId,
      required String? SD,
      required int? minimumAmount,
      required int? maxAmount,
      required double? interestRate}) {
    return _AvailableSchemesDataModel(
      schemeId: schemeId,
      SD: SD,
      minimumAmount: minimumAmount,
      maxAmount: maxAmount,
      interestRate: interestRate,
    );
  }

  AvailableSchemesDataModel fromJson(Map<String, Object?> json) {
    return AvailableSchemesDataModel.fromJson(json);
  }
}

/// @nodoc
const $AvailableSchemesDataModel = _$AvailableSchemesDataModelTearOff();

/// @nodoc
mixin _$AvailableSchemesDataModel {
  int? get schemeId => throw _privateConstructorUsedError;
  String? get SD => throw _privateConstructorUsedError;
  int? get minimumAmount => throw _privateConstructorUsedError;
  int? get maxAmount => throw _privateConstructorUsedError;
  double? get interestRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailableSchemesDataModelCopyWith<AvailableSchemesDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableSchemesDataModelCopyWith<$Res> {
  factory $AvailableSchemesDataModelCopyWith(AvailableSchemesDataModel value,
          $Res Function(AvailableSchemesDataModel) then) =
      _$AvailableSchemesDataModelCopyWithImpl<$Res>;
  $Res call(
      {int? schemeId,
      String? SD,
      int? minimumAmount,
      int? maxAmount,
      double? interestRate});
}

/// @nodoc
class _$AvailableSchemesDataModelCopyWithImpl<$Res>
    implements $AvailableSchemesDataModelCopyWith<$Res> {
  _$AvailableSchemesDataModelCopyWithImpl(this._value, this._then);

  final AvailableSchemesDataModel _value;
  // ignore: unused_field
  final $Res Function(AvailableSchemesDataModel) _then;

  @override
  $Res call({
    Object? schemeId = freezed,
    Object? SD = freezed,
    Object? minimumAmount = freezed,
    Object? maxAmount = freezed,
    Object? interestRate = freezed,
  }) {
    return _then(_value.copyWith(
      schemeId: schemeId == freezed
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as int?,
      SD: SD == freezed
          ? _value.SD
          : SD // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumAmount: minimumAmount == freezed
          ? _value.minimumAmount
          : minimumAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAmount: maxAmount == freezed
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      interestRate: interestRate == freezed
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$AvailableSchemesDataModelCopyWith<$Res>
    implements $AvailableSchemesDataModelCopyWith<$Res> {
  factory _$AvailableSchemesDataModelCopyWith(_AvailableSchemesDataModel value,
          $Res Function(_AvailableSchemesDataModel) then) =
      __$AvailableSchemesDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? schemeId,
      String? SD,
      int? minimumAmount,
      int? maxAmount,
      double? interestRate});
}

/// @nodoc
class __$AvailableSchemesDataModelCopyWithImpl<$Res>
    extends _$AvailableSchemesDataModelCopyWithImpl<$Res>
    implements _$AvailableSchemesDataModelCopyWith<$Res> {
  __$AvailableSchemesDataModelCopyWithImpl(_AvailableSchemesDataModel _value,
      $Res Function(_AvailableSchemesDataModel) _then)
      : super(_value, (v) => _then(v as _AvailableSchemesDataModel));

  @override
  _AvailableSchemesDataModel get _value =>
      super._value as _AvailableSchemesDataModel;

  @override
  $Res call({
    Object? schemeId = freezed,
    Object? SD = freezed,
    Object? minimumAmount = freezed,
    Object? maxAmount = freezed,
    Object? interestRate = freezed,
  }) {
    return _then(_AvailableSchemesDataModel(
      schemeId: schemeId == freezed
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as int?,
      SD: SD == freezed
          ? _value.SD
          : SD // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumAmount: minimumAmount == freezed
          ? _value.minimumAmount
          : minimumAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAmount: maxAmount == freezed
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      interestRate: interestRate == freezed
          ? _value.interestRate
          : interestRate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvailableSchemesDataModel implements _AvailableSchemesDataModel {
  const _$_AvailableSchemesDataModel(
      {required this.schemeId,
      required this.SD,
      required this.minimumAmount,
      required this.maxAmount,
      required this.interestRate});

  factory _$_AvailableSchemesDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_AvailableSchemesDataModelFromJson(json);

  @override
  final int? schemeId;
  @override
  final String? SD;
  @override
  final int? minimumAmount;
  @override
  final int? maxAmount;
  @override
  final double? interestRate;

  @override
  String toString() {
    return 'AvailableSchemesDataModel(schemeId: $schemeId, SD: $SD, minimumAmount: $minimumAmount, maxAmount: $maxAmount, interestRate: $interestRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AvailableSchemesDataModel &&
            const DeepCollectionEquality().equals(other.schemeId, schemeId) &&
            const DeepCollectionEquality().equals(other.SD, SD) &&
            const DeepCollectionEquality()
                .equals(other.minimumAmount, minimumAmount) &&
            const DeepCollectionEquality().equals(other.maxAmount, maxAmount) &&
            const DeepCollectionEquality()
                .equals(other.interestRate, interestRate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(schemeId),
      const DeepCollectionEquality().hash(SD),
      const DeepCollectionEquality().hash(minimumAmount),
      const DeepCollectionEquality().hash(maxAmount),
      const DeepCollectionEquality().hash(interestRate));

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

abstract class _AvailableSchemesDataModel implements AvailableSchemesDataModel {
  const factory _AvailableSchemesDataModel(
      {required int? schemeId,
      required String? SD,
      required int? minimumAmount,
      required int? maxAmount,
      required double? interestRate}) = _$_AvailableSchemesDataModel;

  factory _AvailableSchemesDataModel.fromJson(Map<String, dynamic> json) =
      _$_AvailableSchemesDataModel.fromJson;

  @override
  int? get schemeId;
  @override
  String? get SD;
  @override
  int? get minimumAmount;
  @override
  int? get maxAmount;
  @override
  double? get interestRate;
  @override
  @JsonKey(ignore: true)
  _$AvailableSchemesDataModelCopyWith<_AvailableSchemesDataModel>
      get copyWith => throw _privateConstructorUsedError;
}
