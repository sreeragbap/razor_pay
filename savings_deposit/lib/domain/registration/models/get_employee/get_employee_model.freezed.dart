// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_employee_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetCustomerDetails _$GetCustomerDetailsFromJson(Map<String, dynamic> json) {
  return _GetCustomerDetails.fromJson(json);
}

/// @nodoc
class _$GetCustomerDetailsTearOff {
  const _$GetCustomerDetailsTearOff();

  _GetCustomerDetails call(
      {required int? firmId,
      required int? branchId,
      required String? customerId,
      required String? customerName}) {
    return _GetCustomerDetails(
      firmId: firmId,
      branchId: branchId,
      customerId: customerId,
      customerName: customerName,
    );
  }

  GetCustomerDetails fromJson(Map<String, Object?> json) {
    return GetCustomerDetails.fromJson(json);
  }
}

/// @nodoc
const $GetCustomerDetails = _$GetCustomerDetailsTearOff();

/// @nodoc
mixin _$GetCustomerDetails {
  int? get firmId => throw _privateConstructorUsedError;
  int? get branchId => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCustomerDetailsCopyWith<GetCustomerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCustomerDetailsCopyWith<$Res> {
  factory $GetCustomerDetailsCopyWith(
          GetCustomerDetails value, $Res Function(GetCustomerDetails) then) =
      _$GetCustomerDetailsCopyWithImpl<$Res>;
  $Res call(
      {int? firmId, int? branchId, String? customerId, String? customerName});
}

/// @nodoc
class _$GetCustomerDetailsCopyWithImpl<$Res>
    implements $GetCustomerDetailsCopyWith<$Res> {
  _$GetCustomerDetailsCopyWithImpl(this._value, this._then);

  final GetCustomerDetails _value;
  // ignore: unused_field
  final $Res Function(GetCustomerDetails) _then;

  @override
  $Res call({
    Object? firmId = freezed,
    Object? branchId = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
  }) {
    return _then(_value.copyWith(
      firmId: firmId == freezed
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GetCustomerDetailsCopyWith<$Res>
    implements $GetCustomerDetailsCopyWith<$Res> {
  factory _$GetCustomerDetailsCopyWith(
          _GetCustomerDetails value, $Res Function(_GetCustomerDetails) then) =
      __$GetCustomerDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? firmId, int? branchId, String? customerId, String? customerName});
}

/// @nodoc
class __$GetCustomerDetailsCopyWithImpl<$Res>
    extends _$GetCustomerDetailsCopyWithImpl<$Res>
    implements _$GetCustomerDetailsCopyWith<$Res> {
  __$GetCustomerDetailsCopyWithImpl(
      _GetCustomerDetails _value, $Res Function(_GetCustomerDetails) _then)
      : super(_value, (v) => _then(v as _GetCustomerDetails));

  @override
  _GetCustomerDetails get _value => super._value as _GetCustomerDetails;

  @override
  $Res call({
    Object? firmId = freezed,
    Object? branchId = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
  }) {
    return _then(_GetCustomerDetails(
      firmId: firmId == freezed
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int?,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetCustomerDetails implements _GetCustomerDetails {
  const _$_GetCustomerDetails(
      {required this.firmId,
      required this.branchId,
      required this.customerId,
      required this.customerName});

  factory _$_GetCustomerDetails.fromJson(Map<String, dynamic> json) =>
      _$$_GetCustomerDetailsFromJson(json);

  @override
  final int? firmId;
  @override
  final int? branchId;
  @override
  final String? customerId;
  @override
  final String? customerName;

  @override
  String toString() {
    return 'GetCustomerDetails(firmId: $firmId, branchId: $branchId, customerId: $customerId, customerName: $customerName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCustomerDetails &&
            const DeepCollectionEquality().equals(other.firmId, firmId) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firmId),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(customerName));

  @JsonKey(ignore: true)
  @override
  _$GetCustomerDetailsCopyWith<_GetCustomerDetails> get copyWith =>
      __$GetCustomerDetailsCopyWithImpl<_GetCustomerDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetCustomerDetailsToJson(this);
  }
}

abstract class _GetCustomerDetails implements GetCustomerDetails {
  const factory _GetCustomerDetails(
      {required int? firmId,
      required int? branchId,
      required String? customerId,
      required String? customerName}) = _$_GetCustomerDetails;

  factory _GetCustomerDetails.fromJson(Map<String, dynamic> json) =
      _$_GetCustomerDetails.fromJson;

  @override
  int? get firmId;
  @override
  int? get branchId;
  @override
  String? get customerId;
  @override
  String? get customerName;
  @override
  @JsonKey(ignore: true)
  _$GetCustomerDetailsCopyWith<_GetCustomerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
