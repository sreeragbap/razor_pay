// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerAccountsModel _$CustomerAccountsModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerAccountsModel.fromJson(json);
}

/// @nodoc
class _$CustomerAccountsModelTearOff {
  const _$CustomerAccountsModelTearOff();

  _CustomerAccountsModel call(
      {required String? accountType,
      required double? balance,
      required String? accountNumber,
      required String? accountName,
      required double? intrestRate,
      required int? schemeId,
      required int? nominee,
      required int? status,
      required int? firmid,
      required int? branchid,
      required DateTime? depositDate,
      required String? customerId,
      required int? coApplicantRight}) {
    return _CustomerAccountsModel(
      accountType: accountType,
      balance: balance,
      accountNumber: accountNumber,
      accountName: accountName,
      intrestRate: intrestRate,
      schemeId: schemeId,
      nominee: nominee,
      status: status,
      firmid: firmid,
      branchid: branchid,
      depositDate: depositDate,
      customerId: customerId,
      coApplicantRight: coApplicantRight,
    );
  }

  CustomerAccountsModel fromJson(Map<String, Object?> json) {
    return CustomerAccountsModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerAccountsModel = _$CustomerAccountsModelTearOff();

/// @nodoc
mixin _$CustomerAccountsModel {
  String? get accountType => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get accountName => throw _privateConstructorUsedError;
  double? get intrestRate => throw _privateConstructorUsedError;
  int? get schemeId => throw _privateConstructorUsedError;
  int? get nominee => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get firmid => throw _privateConstructorUsedError;
  int? get branchid => throw _privateConstructorUsedError;
  DateTime? get depositDate => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  int? get coApplicantRight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAccountsModelCopyWith<CustomerAccountsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAccountsModelCopyWith<$Res> {
  factory $CustomerAccountsModelCopyWith(CustomerAccountsModel value,
          $Res Function(CustomerAccountsModel) then) =
      _$CustomerAccountsModelCopyWithImpl<$Res>;
  $Res call(
      {String? accountType,
      double? balance,
      String? accountNumber,
      String? accountName,
      double? intrestRate,
      int? schemeId,
      int? nominee,
      int? status,
      int? firmid,
      int? branchid,
      DateTime? depositDate,
      String? customerId,
      int? coApplicantRight});
}

/// @nodoc
class _$CustomerAccountsModelCopyWithImpl<$Res>
    implements $CustomerAccountsModelCopyWith<$Res> {
  _$CustomerAccountsModelCopyWithImpl(this._value, this._then);

  final CustomerAccountsModel _value;
  // ignore: unused_field
  final $Res Function(CustomerAccountsModel) _then;

  @override
  $Res call({
    Object? accountType = freezed,
    Object? balance = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
    Object? intrestRate = freezed,
    Object? schemeId = freezed,
    Object? nominee = freezed,
    Object? status = freezed,
    Object? firmid = freezed,
    Object? branchid = freezed,
    Object? depositDate = freezed,
    Object? customerId = freezed,
    Object? coApplicantRight = freezed,
  }) {
    return _then(_value.copyWith(
      accountType: accountType == freezed
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      intrestRate: intrestRate == freezed
          ? _value.intrestRate
          : intrestRate // ignore: cast_nullable_to_non_nullable
              as double?,
      schemeId: schemeId == freezed
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nominee: nominee == freezed
          ? _value.nominee
          : nominee // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      firmid: firmid == freezed
          ? _value.firmid
          : firmid // ignore: cast_nullable_to_non_nullable
              as int?,
      branchid: branchid == freezed
          ? _value.branchid
          : branchid // ignore: cast_nullable_to_non_nullable
              as int?,
      depositDate: depositDate == freezed
          ? _value.depositDate
          : depositDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      coApplicantRight: coApplicantRight == freezed
          ? _value.coApplicantRight
          : coApplicantRight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerAccountsModelCopyWith<$Res>
    implements $CustomerAccountsModelCopyWith<$Res> {
  factory _$CustomerAccountsModelCopyWith(_CustomerAccountsModel value,
          $Res Function(_CustomerAccountsModel) then) =
      __$CustomerAccountsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? accountType,
      double? balance,
      String? accountNumber,
      String? accountName,
      double? intrestRate,
      int? schemeId,
      int? nominee,
      int? status,
      int? firmid,
      int? branchid,
      DateTime? depositDate,
      String? customerId,
      int? coApplicantRight});
}

/// @nodoc
class __$CustomerAccountsModelCopyWithImpl<$Res>
    extends _$CustomerAccountsModelCopyWithImpl<$Res>
    implements _$CustomerAccountsModelCopyWith<$Res> {
  __$CustomerAccountsModelCopyWithImpl(_CustomerAccountsModel _value,
      $Res Function(_CustomerAccountsModel) _then)
      : super(_value, (v) => _then(v as _CustomerAccountsModel));

  @override
  _CustomerAccountsModel get _value => super._value as _CustomerAccountsModel;

  @override
  $Res call({
    Object? accountType = freezed,
    Object? balance = freezed,
    Object? accountNumber = freezed,
    Object? accountName = freezed,
    Object? intrestRate = freezed,
    Object? schemeId = freezed,
    Object? nominee = freezed,
    Object? status = freezed,
    Object? firmid = freezed,
    Object? branchid = freezed,
    Object? depositDate = freezed,
    Object? customerId = freezed,
    Object? coApplicantRight = freezed,
  }) {
    return _then(_CustomerAccountsModel(
      accountType: accountType == freezed
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      accountName: accountName == freezed
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String?,
      intrestRate: intrestRate == freezed
          ? _value.intrestRate
          : intrestRate // ignore: cast_nullable_to_non_nullable
              as double?,
      schemeId: schemeId == freezed
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as int?,
      nominee: nominee == freezed
          ? _value.nominee
          : nominee // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      firmid: firmid == freezed
          ? _value.firmid
          : firmid // ignore: cast_nullable_to_non_nullable
              as int?,
      branchid: branchid == freezed
          ? _value.branchid
          : branchid // ignore: cast_nullable_to_non_nullable
              as int?,
      depositDate: depositDate == freezed
          ? _value.depositDate
          : depositDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      coApplicantRight: coApplicantRight == freezed
          ? _value.coApplicantRight
          : coApplicantRight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerAccountsModel implements _CustomerAccountsModel {
  const _$_CustomerAccountsModel(
      {required this.accountType,
      required this.balance,
      required this.accountNumber,
      required this.accountName,
      required this.intrestRate,
      required this.schemeId,
      required this.nominee,
      required this.status,
      required this.firmid,
      required this.branchid,
      required this.depositDate,
      required this.customerId,
      required this.coApplicantRight});

  factory _$_CustomerAccountsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerAccountsModelFromJson(json);

  @override
  final String? accountType;
  @override
  final double? balance;
  @override
  final String? accountNumber;
  @override
  final String? accountName;
  @override
  final double? intrestRate;
  @override
  final int? schemeId;
  @override
  final int? nominee;
  @override
  final int? status;
  @override
  final int? firmid;
  @override
  final int? branchid;
  @override
  final DateTime? depositDate;
  @override
  final String? customerId;
  @override
  final int? coApplicantRight;

  @override
  String toString() {
    return 'CustomerAccountsModel(accountType: $accountType, balance: $balance, accountNumber: $accountNumber, accountName: $accountName, intrestRate: $intrestRate, schemeId: $schemeId, nominee: $nominee, status: $status, firmid: $firmid, branchid: $branchid, depositDate: $depositDate, customerId: $customerId, coApplicantRight: $coApplicantRight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerAccountsModel &&
            const DeepCollectionEquality()
                .equals(other.accountType, accountType) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality()
                .equals(other.accountName, accountName) &&
            const DeepCollectionEquality()
                .equals(other.intrestRate, intrestRate) &&
            const DeepCollectionEquality().equals(other.schemeId, schemeId) &&
            const DeepCollectionEquality().equals(other.nominee, nominee) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.firmid, firmid) &&
            const DeepCollectionEquality().equals(other.branchid, branchid) &&
            const DeepCollectionEquality()
                .equals(other.depositDate, depositDate) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.coApplicantRight, coApplicantRight));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accountType),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(accountName),
      const DeepCollectionEquality().hash(intrestRate),
      const DeepCollectionEquality().hash(schemeId),
      const DeepCollectionEquality().hash(nominee),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(firmid),
      const DeepCollectionEquality().hash(branchid),
      const DeepCollectionEquality().hash(depositDate),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(coApplicantRight));

  @JsonKey(ignore: true)
  @override
  _$CustomerAccountsModelCopyWith<_CustomerAccountsModel> get copyWith =>
      __$CustomerAccountsModelCopyWithImpl<_CustomerAccountsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerAccountsModelToJson(this);
  }
}

abstract class _CustomerAccountsModel implements CustomerAccountsModel {
  const factory _CustomerAccountsModel(
      {required String? accountType,
      required double? balance,
      required String? accountNumber,
      required String? accountName,
      required double? intrestRate,
      required int? schemeId,
      required int? nominee,
      required int? status,
      required int? firmid,
      required int? branchid,
      required DateTime? depositDate,
      required String? customerId,
      required int? coApplicantRight}) = _$_CustomerAccountsModel;

  factory _CustomerAccountsModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerAccountsModel.fromJson;

  @override
  String? get accountType;
  @override
  double? get balance;
  @override
  String? get accountNumber;
  @override
  String? get accountName;
  @override
  double? get intrestRate;
  @override
  int? get schemeId;
  @override
  int? get nominee;
  @override
  int? get status;
  @override
  int? get firmid;
  @override
  int? get branchid;
  @override
  DateTime? get depositDate;
  @override
  String? get customerId;
  @override
  int? get coApplicantRight;
  @override
  @JsonKey(ignore: true)
  _$CustomerAccountsModelCopyWith<_CustomerAccountsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerOtherBankDataModel _$CustomerOtherBankDataModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerOtherBankDataModel.fromJson(json);
}

/// @nodoc
class _$CustomerOtherBankDataModelTearOff {
  const _$CustomerOtherBankDataModelTearOff();

  _CustomerOtherBankDataModel call(
      {required String? type,
      required String? customerBankName,
      required String? customerName,
      required String? ifscCode,
      required String? accountNumber,
      required String? branchName,
      required String? status}) {
    return _CustomerOtherBankDataModel(
      type: type,
      customerBankName: customerBankName,
      customerName: customerName,
      ifscCode: ifscCode,
      accountNumber: accountNumber,
      branchName: branchName,
      status: status,
    );
  }

  CustomerOtherBankDataModel fromJson(Map<String, Object?> json) {
    return CustomerOtherBankDataModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerOtherBankDataModel = _$CustomerOtherBankDataModelTearOff();

/// @nodoc
mixin _$CustomerOtherBankDataModel {
  String? get type => throw _privateConstructorUsedError;
  String? get customerBankName => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get ifscCode => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get branchName => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerOtherBankDataModelCopyWith<CustomerOtherBankDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerOtherBankDataModelCopyWith<$Res> {
  factory $CustomerOtherBankDataModelCopyWith(CustomerOtherBankDataModel value,
          $Res Function(CustomerOtherBankDataModel) then) =
      _$CustomerOtherBankDataModelCopyWithImpl<$Res>;
  $Res call(
      {String? type,
      String? customerBankName,
      String? customerName,
      String? ifscCode,
      String? accountNumber,
      String? branchName,
      String? status});
}

/// @nodoc
class _$CustomerOtherBankDataModelCopyWithImpl<$Res>
    implements $CustomerOtherBankDataModelCopyWith<$Res> {
  _$CustomerOtherBankDataModelCopyWithImpl(this._value, this._then);

  final CustomerOtherBankDataModel _value;
  // ignore: unused_field
  final $Res Function(CustomerOtherBankDataModel) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? customerBankName = freezed,
    Object? customerName = freezed,
    Object? ifscCode = freezed,
    Object? accountNumber = freezed,
    Object? branchName = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      customerBankName: customerBankName == freezed
          ? _value.customerBankName
          : customerBankName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: ifscCode == freezed
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerOtherBankDataModelCopyWith<$Res>
    implements $CustomerOtherBankDataModelCopyWith<$Res> {
  factory _$CustomerOtherBankDataModelCopyWith(
          _CustomerOtherBankDataModel value,
          $Res Function(_CustomerOtherBankDataModel) then) =
      __$CustomerOtherBankDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? type,
      String? customerBankName,
      String? customerName,
      String? ifscCode,
      String? accountNumber,
      String? branchName,
      String? status});
}

/// @nodoc
class __$CustomerOtherBankDataModelCopyWithImpl<$Res>
    extends _$CustomerOtherBankDataModelCopyWithImpl<$Res>
    implements _$CustomerOtherBankDataModelCopyWith<$Res> {
  __$CustomerOtherBankDataModelCopyWithImpl(_CustomerOtherBankDataModel _value,
      $Res Function(_CustomerOtherBankDataModel) _then)
      : super(_value, (v) => _then(v as _CustomerOtherBankDataModel));

  @override
  _CustomerOtherBankDataModel get _value =>
      super._value as _CustomerOtherBankDataModel;

  @override
  $Res call({
    Object? type = freezed,
    Object? customerBankName = freezed,
    Object? customerName = freezed,
    Object? ifscCode = freezed,
    Object? accountNumber = freezed,
    Object? branchName = freezed,
    Object? status = freezed,
  }) {
    return _then(_CustomerOtherBankDataModel(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      customerBankName: customerBankName == freezed
          ? _value.customerBankName
          : customerBankName // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      ifscCode: ifscCode == freezed
          ? _value.ifscCode
          : ifscCode // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerOtherBankDataModel implements _CustomerOtherBankDataModel {
  _$_CustomerOtherBankDataModel(
      {required this.type,
      required this.customerBankName,
      required this.customerName,
      required this.ifscCode,
      required this.accountNumber,
      required this.branchName,
      required this.status});

  factory _$_CustomerOtherBankDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerOtherBankDataModelFromJson(json);

  @override
  final String? type;
  @override
  final String? customerBankName;
  @override
  final String? customerName;
  @override
  final String? ifscCode;
  @override
  final String? accountNumber;
  @override
  final String? branchName;
  @override
  final String? status;

  @override
  String toString() {
    return 'CustomerOtherBankDataModel(type: $type, customerBankName: $customerBankName, customerName: $customerName, ifscCode: $ifscCode, accountNumber: $accountNumber, branchName: $branchName, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerOtherBankDataModel &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.customerBankName, customerBankName) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality().equals(other.ifscCode, ifscCode) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(customerBankName),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(ifscCode),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(branchName),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$CustomerOtherBankDataModelCopyWith<_CustomerOtherBankDataModel>
      get copyWith => __$CustomerOtherBankDataModelCopyWithImpl<
          _CustomerOtherBankDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerOtherBankDataModelToJson(this);
  }
}

abstract class _CustomerOtherBankDataModel
    implements CustomerOtherBankDataModel {
  factory _CustomerOtherBankDataModel(
      {required String? type,
      required String? customerBankName,
      required String? customerName,
      required String? ifscCode,
      required String? accountNumber,
      required String? branchName,
      required String? status}) = _$_CustomerOtherBankDataModel;

  factory _CustomerOtherBankDataModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerOtherBankDataModel.fromJson;

  @override
  String? get type;
  @override
  String? get customerBankName;
  @override
  String? get customerName;
  @override
  String? get ifscCode;
  @override
  String? get accountNumber;
  @override
  String? get branchName;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$CustomerOtherBankDataModelCopyWith<_CustomerOtherBankDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerNotificationModel _$CustomerNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerNotificationModel.fromJson(json);
}

/// @nodoc
class _$CustomerNotificationModelTearOff {
  const _$CustomerNotificationModelTearOff();

  _CustomerNotificationModel call(
      {required String? userId,
      required int? alertId,
      required String? type,
      required String? subject,
      required String? date,
      required String? description,
      required String? image}) {
    return _CustomerNotificationModel(
      userId: userId,
      alertId: alertId,
      type: type,
      subject: subject,
      date: date,
      description: description,
      image: image,
    );
  }

  CustomerNotificationModel fromJson(Map<String, Object?> json) {
    return CustomerNotificationModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerNotificationModel = _$CustomerNotificationModelTearOff();

/// @nodoc
mixin _$CustomerNotificationModel {
  String? get userId => throw _privateConstructorUsedError;
  int? get alertId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerNotificationModelCopyWith<CustomerNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerNotificationModelCopyWith<$Res> {
  factory $CustomerNotificationModelCopyWith(CustomerNotificationModel value,
          $Res Function(CustomerNotificationModel) then) =
      _$CustomerNotificationModelCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      int? alertId,
      String? type,
      String? subject,
      String? date,
      String? description,
      String? image});
}

/// @nodoc
class _$CustomerNotificationModelCopyWithImpl<$Res>
    implements $CustomerNotificationModelCopyWith<$Res> {
  _$CustomerNotificationModelCopyWithImpl(this._value, this._then);

  final CustomerNotificationModel _value;
  // ignore: unused_field
  final $Res Function(CustomerNotificationModel) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? alertId = freezed,
    Object? type = freezed,
    Object? subject = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      alertId: alertId == freezed
          ? _value.alertId
          : alertId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerNotificationModelCopyWith<$Res>
    implements $CustomerNotificationModelCopyWith<$Res> {
  factory _$CustomerNotificationModelCopyWith(_CustomerNotificationModel value,
          $Res Function(_CustomerNotificationModel) then) =
      __$CustomerNotificationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      int? alertId,
      String? type,
      String? subject,
      String? date,
      String? description,
      String? image});
}

/// @nodoc
class __$CustomerNotificationModelCopyWithImpl<$Res>
    extends _$CustomerNotificationModelCopyWithImpl<$Res>
    implements _$CustomerNotificationModelCopyWith<$Res> {
  __$CustomerNotificationModelCopyWithImpl(_CustomerNotificationModel _value,
      $Res Function(_CustomerNotificationModel) _then)
      : super(_value, (v) => _then(v as _CustomerNotificationModel));

  @override
  _CustomerNotificationModel get _value =>
      super._value as _CustomerNotificationModel;

  @override
  $Res call({
    Object? userId = freezed,
    Object? alertId = freezed,
    Object? type = freezed,
    Object? subject = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_CustomerNotificationModel(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      alertId: alertId == freezed
          ? _value.alertId
          : alertId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerNotificationModel implements _CustomerNotificationModel {
  const _$_CustomerNotificationModel(
      {required this.userId,
      required this.alertId,
      required this.type,
      required this.subject,
      required this.date,
      required this.description,
      required this.image});

  factory _$_CustomerNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerNotificationModelFromJson(json);

  @override
  final String? userId;
  @override
  final int? alertId;
  @override
  final String? type;
  @override
  final String? subject;
  @override
  final String? date;
  @override
  final String? description;
  @override
  final String? image;

  @override
  String toString() {
    return 'CustomerNotificationModel(userId: $userId, alertId: $alertId, type: $type, subject: $subject, date: $date, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerNotificationModel &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.alertId, alertId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(alertId),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$CustomerNotificationModelCopyWith<_CustomerNotificationModel>
      get copyWith =>
          __$CustomerNotificationModelCopyWithImpl<_CustomerNotificationModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerNotificationModelToJson(this);
  }
}

abstract class _CustomerNotificationModel implements CustomerNotificationModel {
  const factory _CustomerNotificationModel(
      {required String? userId,
      required int? alertId,
      required String? type,
      required String? subject,
      required String? date,
      required String? description,
      required String? image}) = _$_CustomerNotificationModel;

  factory _CustomerNotificationModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerNotificationModel.fromJson;

  @override
  String? get userId;
  @override
  int? get alertId;
  @override
  String? get type;
  @override
  String? get subject;
  @override
  String? get date;
  @override
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$CustomerNotificationModelCopyWith<_CustomerNotificationModel>
      get copyWith => throw _privateConstructorUsedError;
}

CustomerProfileModel _$CustomerProfileModelFromJson(Map<String, dynamic> json) {
  return _CustomerProfileModel.fromJson(json);
}

/// @nodoc
class _$CustomerProfileModelTearOff {
  const _$CustomerProfileModelTearOff();

  _CustomerProfileModel call(
      {required String? customerName,
      required String? mobileNumber1,
      required String? mobileNumber2,
      required String? houseName,
      required String? emailId,
      required int? shareCount,
      required String? locality,
      required int? pinNo,
      required String? district,
      required String? state,
      required String? countryName,
      required String? image}) {
    return _CustomerProfileModel(
      customerName: customerName,
      mobileNumber1: mobileNumber1,
      mobileNumber2: mobileNumber2,
      houseName: houseName,
      emailId: emailId,
      shareCount: shareCount,
      locality: locality,
      pinNo: pinNo,
      district: district,
      state: state,
      countryName: countryName,
      image: image,
    );
  }

  CustomerProfileModel fromJson(Map<String, Object?> json) {
    return CustomerProfileModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerProfileModel = _$CustomerProfileModelTearOff();

/// @nodoc
mixin _$CustomerProfileModel {
  String? get customerName => throw _privateConstructorUsedError;
  String? get mobileNumber1 => throw _privateConstructorUsedError;
  String? get mobileNumber2 => throw _privateConstructorUsedError;
  String? get houseName => throw _privateConstructorUsedError;
  String? get emailId => throw _privateConstructorUsedError;
  int? get shareCount => throw _privateConstructorUsedError;
  String? get locality => throw _privateConstructorUsedError;
  int? get pinNo => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get countryName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerProfileModelCopyWith<CustomerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerProfileModelCopyWith<$Res> {
  factory $CustomerProfileModelCopyWith(CustomerProfileModel value,
          $Res Function(CustomerProfileModel) then) =
      _$CustomerProfileModelCopyWithImpl<$Res>;
  $Res call(
      {String? customerName,
      String? mobileNumber1,
      String? mobileNumber2,
      String? houseName,
      String? emailId,
      int? shareCount,
      String? locality,
      int? pinNo,
      String? district,
      String? state,
      String? countryName,
      String? image});
}

/// @nodoc
class _$CustomerProfileModelCopyWithImpl<$Res>
    implements $CustomerProfileModelCopyWith<$Res> {
  _$CustomerProfileModelCopyWithImpl(this._value, this._then);

  final CustomerProfileModel _value;
  // ignore: unused_field
  final $Res Function(CustomerProfileModel) _then;

  @override
  $Res call({
    Object? customerName = freezed,
    Object? mobileNumber1 = freezed,
    Object? mobileNumber2 = freezed,
    Object? houseName = freezed,
    Object? emailId = freezed,
    Object? shareCount = freezed,
    Object? locality = freezed,
    Object? pinNo = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? countryName = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber1: mobileNumber1 == freezed
          ? _value.mobileNumber1
          : mobileNumber1 // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber2: mobileNumber2 == freezed
          ? _value.mobileNumber2
          : mobileNumber2 // ignore: cast_nullable_to_non_nullable
              as String?,
      houseName: houseName == freezed
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int?,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      pinNo: pinNo == freezed
          ? _value.pinNo
          : pinNo // ignore: cast_nullable_to_non_nullable
              as int?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerProfileModelCopyWith<$Res>
    implements $CustomerProfileModelCopyWith<$Res> {
  factory _$CustomerProfileModelCopyWith(_CustomerProfileModel value,
          $Res Function(_CustomerProfileModel) then) =
      __$CustomerProfileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? customerName,
      String? mobileNumber1,
      String? mobileNumber2,
      String? houseName,
      String? emailId,
      int? shareCount,
      String? locality,
      int? pinNo,
      String? district,
      String? state,
      String? countryName,
      String? image});
}

/// @nodoc
class __$CustomerProfileModelCopyWithImpl<$Res>
    extends _$CustomerProfileModelCopyWithImpl<$Res>
    implements _$CustomerProfileModelCopyWith<$Res> {
  __$CustomerProfileModelCopyWithImpl(
      _CustomerProfileModel _value, $Res Function(_CustomerProfileModel) _then)
      : super(_value, (v) => _then(v as _CustomerProfileModel));

  @override
  _CustomerProfileModel get _value => super._value as _CustomerProfileModel;

  @override
  $Res call({
    Object? customerName = freezed,
    Object? mobileNumber1 = freezed,
    Object? mobileNumber2 = freezed,
    Object? houseName = freezed,
    Object? emailId = freezed,
    Object? shareCount = freezed,
    Object? locality = freezed,
    Object? pinNo = freezed,
    Object? district = freezed,
    Object? state = freezed,
    Object? countryName = freezed,
    Object? image = freezed,
  }) {
    return _then(_CustomerProfileModel(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber1: mobileNumber1 == freezed
          ? _value.mobileNumber1
          : mobileNumber1 // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber2: mobileNumber2 == freezed
          ? _value.mobileNumber2
          : mobileNumber2 // ignore: cast_nullable_to_non_nullable
              as String?,
      houseName: houseName == freezed
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as String?,
      emailId: emailId == freezed
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String?,
      shareCount: shareCount == freezed
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int?,
      locality: locality == freezed
          ? _value.locality
          : locality // ignore: cast_nullable_to_non_nullable
              as String?,
      pinNo: pinNo == freezed
          ? _value.pinNo
          : pinNo // ignore: cast_nullable_to_non_nullable
              as int?,
      district: district == freezed
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerProfileModel implements _CustomerProfileModel {
  const _$_CustomerProfileModel(
      {required this.customerName,
      required this.mobileNumber1,
      required this.mobileNumber2,
      required this.houseName,
      required this.emailId,
      required this.shareCount,
      required this.locality,
      required this.pinNo,
      required this.district,
      required this.state,
      required this.countryName,
      required this.image});

  factory _$_CustomerProfileModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerProfileModelFromJson(json);

  @override
  final String? customerName;
  @override
  final String? mobileNumber1;
  @override
  final String? mobileNumber2;
  @override
  final String? houseName;
  @override
  final String? emailId;
  @override
  final int? shareCount;
  @override
  final String? locality;
  @override
  final int? pinNo;
  @override
  final String? district;
  @override
  final String? state;
  @override
  final String? countryName;
  @override
  final String? image;

  @override
  String toString() {
    return 'CustomerProfileModel(customerName: $customerName, mobileNumber1: $mobileNumber1, mobileNumber2: $mobileNumber2, houseName: $houseName, emailId: $emailId, shareCount: $shareCount, locality: $locality, pinNo: $pinNo, district: $district, state: $state, countryName: $countryName, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerProfileModel &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber1, mobileNumber1) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber2, mobileNumber2) &&
            const DeepCollectionEquality().equals(other.houseName, houseName) &&
            const DeepCollectionEquality().equals(other.emailId, emailId) &&
            const DeepCollectionEquality()
                .equals(other.shareCount, shareCount) &&
            const DeepCollectionEquality().equals(other.locality, locality) &&
            const DeepCollectionEquality().equals(other.pinNo, pinNo) &&
            const DeepCollectionEquality().equals(other.district, district) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.countryName, countryName) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(mobileNumber1),
      const DeepCollectionEquality().hash(mobileNumber2),
      const DeepCollectionEquality().hash(houseName),
      const DeepCollectionEquality().hash(emailId),
      const DeepCollectionEquality().hash(shareCount),
      const DeepCollectionEquality().hash(locality),
      const DeepCollectionEquality().hash(pinNo),
      const DeepCollectionEquality().hash(district),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(countryName),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$CustomerProfileModelCopyWith<_CustomerProfileModel> get copyWith =>
      __$CustomerProfileModelCopyWithImpl<_CustomerProfileModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerProfileModelToJson(this);
  }
}

abstract class _CustomerProfileModel implements CustomerProfileModel {
  const factory _CustomerProfileModel(
      {required String? customerName,
      required String? mobileNumber1,
      required String? mobileNumber2,
      required String? houseName,
      required String? emailId,
      required int? shareCount,
      required String? locality,
      required int? pinNo,
      required String? district,
      required String? state,
      required String? countryName,
      required String? image}) = _$_CustomerProfileModel;

  factory _CustomerProfileModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerProfileModel.fromJson;

  @override
  String? get customerName;
  @override
  String? get mobileNumber1;
  @override
  String? get mobileNumber2;
  @override
  String? get houseName;
  @override
  String? get emailId;
  @override
  int? get shareCount;
  @override
  String? get locality;
  @override
  int? get pinNo;
  @override
  String? get district;
  @override
  String? get state;
  @override
  String? get countryName;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$CustomerProfileModelCopyWith<_CustomerProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomerScheduleTransactionModel _$CustomerScheduleTransactionModelFromJson(
    Map<String, dynamic> json) {
  return _CustomerScheduleTransactionModel.fromJson(json);
}

/// @nodoc
class _$CustomerScheduleTransactionModelTearOff {
  const _$CustomerScheduleTransactionModelTearOff();

  _CustomerScheduleTransactionModel call(
      {required String? transactionType,
      required String? fromAccount,
      required String? toAccount,
      required String? date,
      required double? amount,
      required int? status,
      required int? rtId}) {
    return _CustomerScheduleTransactionModel(
      transactionType: transactionType,
      fromAccount: fromAccount,
      toAccount: toAccount,
      date: date,
      amount: amount,
      status: status,
      rtId: rtId,
    );
  }

  CustomerScheduleTransactionModel fromJson(Map<String, Object?> json) {
    return CustomerScheduleTransactionModel.fromJson(json);
  }
}

/// @nodoc
const $CustomerScheduleTransactionModel =
    _$CustomerScheduleTransactionModelTearOff();

/// @nodoc
mixin _$CustomerScheduleTransactionModel {
  String? get transactionType => throw _privateConstructorUsedError;
  String? get fromAccount => throw _privateConstructorUsedError;
  String? get toAccount => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  int? get rtId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerScheduleTransactionModelCopyWith<CustomerScheduleTransactionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerScheduleTransactionModelCopyWith<$Res> {
  factory $CustomerScheduleTransactionModelCopyWith(
          CustomerScheduleTransactionModel value,
          $Res Function(CustomerScheduleTransactionModel) then) =
      _$CustomerScheduleTransactionModelCopyWithImpl<$Res>;
  $Res call(
      {String? transactionType,
      String? fromAccount,
      String? toAccount,
      String? date,
      double? amount,
      int? status,
      int? rtId});
}

/// @nodoc
class _$CustomerScheduleTransactionModelCopyWithImpl<$Res>
    implements $CustomerScheduleTransactionModelCopyWith<$Res> {
  _$CustomerScheduleTransactionModelCopyWithImpl(this._value, this._then);

  final CustomerScheduleTransactionModel _value;
  // ignore: unused_field
  final $Res Function(CustomerScheduleTransactionModel) _then;

  @override
  $Res call({
    Object? transactionType = freezed,
    Object? fromAccount = freezed,
    Object? toAccount = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? rtId = freezed,
  }) {
    return _then(_value.copyWith(
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      fromAccount: fromAccount == freezed
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      toAccount: toAccount == freezed
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      rtId: rtId == freezed
          ? _value.rtId
          : rtId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerScheduleTransactionModelCopyWith<$Res>
    implements $CustomerScheduleTransactionModelCopyWith<$Res> {
  factory _$CustomerScheduleTransactionModelCopyWith(
          _CustomerScheduleTransactionModel value,
          $Res Function(_CustomerScheduleTransactionModel) then) =
      __$CustomerScheduleTransactionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? transactionType,
      String? fromAccount,
      String? toAccount,
      String? date,
      double? amount,
      int? status,
      int? rtId});
}

/// @nodoc
class __$CustomerScheduleTransactionModelCopyWithImpl<$Res>
    extends _$CustomerScheduleTransactionModelCopyWithImpl<$Res>
    implements _$CustomerScheduleTransactionModelCopyWith<$Res> {
  __$CustomerScheduleTransactionModelCopyWithImpl(
      _CustomerScheduleTransactionModel _value,
      $Res Function(_CustomerScheduleTransactionModel) _then)
      : super(_value, (v) => _then(v as _CustomerScheduleTransactionModel));

  @override
  _CustomerScheduleTransactionModel get _value =>
      super._value as _CustomerScheduleTransactionModel;

  @override
  $Res call({
    Object? transactionType = freezed,
    Object? fromAccount = freezed,
    Object? toAccount = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? rtId = freezed,
  }) {
    return _then(_CustomerScheduleTransactionModel(
      transactionType: transactionType == freezed
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      fromAccount: fromAccount == freezed
          ? _value.fromAccount
          : fromAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      toAccount: toAccount == freezed
          ? _value.toAccount
          : toAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      rtId: rtId == freezed
          ? _value.rtId
          : rtId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerScheduleTransactionModel
    implements _CustomerScheduleTransactionModel {
  const _$_CustomerScheduleTransactionModel(
      {required this.transactionType,
      required this.fromAccount,
      required this.toAccount,
      required this.date,
      required this.amount,
      required this.status,
      required this.rtId});

  factory _$_CustomerScheduleTransactionModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_CustomerScheduleTransactionModelFromJson(json);

  @override
  final String? transactionType;
  @override
  final String? fromAccount;
  @override
  final String? toAccount;
  @override
  final String? date;
  @override
  final double? amount;
  @override
  final int? status;
  @override
  final int? rtId;

  @override
  String toString() {
    return 'CustomerScheduleTransactionModel(transactionType: $transactionType, fromAccount: $fromAccount, toAccount: $toAccount, date: $date, amount: $amount, status: $status, rtId: $rtId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CustomerScheduleTransactionModel &&
            const DeepCollectionEquality()
                .equals(other.transactionType, transactionType) &&
            const DeepCollectionEquality()
                .equals(other.fromAccount, fromAccount) &&
            const DeepCollectionEquality().equals(other.toAccount, toAccount) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.rtId, rtId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(transactionType),
      const DeepCollectionEquality().hash(fromAccount),
      const DeepCollectionEquality().hash(toAccount),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(rtId));

  @JsonKey(ignore: true)
  @override
  _$CustomerScheduleTransactionModelCopyWith<_CustomerScheduleTransactionModel>
      get copyWith => __$CustomerScheduleTransactionModelCopyWithImpl<
          _CustomerScheduleTransactionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerScheduleTransactionModelToJson(this);
  }
}

abstract class _CustomerScheduleTransactionModel
    implements CustomerScheduleTransactionModel {
  const factory _CustomerScheduleTransactionModel(
      {required String? transactionType,
      required String? fromAccount,
      required String? toAccount,
      required String? date,
      required double? amount,
      required int? status,
      required int? rtId}) = _$_CustomerScheduleTransactionModel;

  factory _CustomerScheduleTransactionModel.fromJson(
      Map<String, dynamic> json) = _$_CustomerScheduleTransactionModel.fromJson;

  @override
  String? get transactionType;
  @override
  String? get fromAccount;
  @override
  String? get toAccount;
  @override
  String? get date;
  @override
  double? get amount;
  @override
  int? get status;
  @override
  int? get rtId;
  @override
  @JsonKey(ignore: true)
  _$CustomerScheduleTransactionModelCopyWith<_CustomerScheduleTransactionModel>
      get copyWith => throw _privateConstructorUsedError;
}

AccountMoreInfoModel _$AccountMoreInfoModelFromJson(Map<String, dynamic> json) {
  return _AccountMoreInfoModel.fromJson(json);
}

/// @nodoc
class _$AccountMoreInfoModelTearOff {
  const _$AccountMoreInfoModelTearOff();

  _AccountMoreInfoModel call(
      {required int? firmid,
      required int? branchid,
      required String? schemeName,
      required int? schemeId,
      required double? interest,
      required String? depositDate,
      required double? balance,
      required String? accountNumber,
      required String? customerName,
      required String? accountType,
      required int? nominee,
      required int? status,
      required String? customerId,
      required String? coApplicantid,
      required String? coApplicantName}) {
    return _AccountMoreInfoModel(
      firmid: firmid,
      branchid: branchid,
      schemeName: schemeName,
      schemeId: schemeId,
      interest: interest,
      depositDate: depositDate,
      balance: balance,
      accountNumber: accountNumber,
      customerName: customerName,
      accountType: accountType,
      nominee: nominee,
      status: status,
      customerId: customerId,
      coApplicantid: coApplicantid,
      coApplicantName: coApplicantName,
    );
  }

  AccountMoreInfoModel fromJson(Map<String, Object?> json) {
    return AccountMoreInfoModel.fromJson(json);
  }
}

/// @nodoc
const $AccountMoreInfoModel = _$AccountMoreInfoModelTearOff();

/// @nodoc
mixin _$AccountMoreInfoModel {
  int? get firmid => throw _privateConstructorUsedError;
  int? get branchid => throw _privateConstructorUsedError;
  String? get schemeName => throw _privateConstructorUsedError;
  int? get schemeId => throw _privateConstructorUsedError;
  double? get interest => throw _privateConstructorUsedError;
  String? get depositDate => throw _privateConstructorUsedError;
  double? get balance => throw _privateConstructorUsedError;
  String? get accountNumber => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get accountType => throw _privateConstructorUsedError;
  int? get nominee => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String? get coApplicantid => throw _privateConstructorUsedError;
  String? get coApplicantName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountMoreInfoModelCopyWith<AccountMoreInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountMoreInfoModelCopyWith<$Res> {
  factory $AccountMoreInfoModelCopyWith(AccountMoreInfoModel value,
          $Res Function(AccountMoreInfoModel) then) =
      _$AccountMoreInfoModelCopyWithImpl<$Res>;
  $Res call(
      {int? firmid,
      int? branchid,
      String? schemeName,
      int? schemeId,
      double? interest,
      String? depositDate,
      double? balance,
      String? accountNumber,
      String? customerName,
      String? accountType,
      int? nominee,
      int? status,
      String? customerId,
      String? coApplicantid,
      String? coApplicantName});
}

/// @nodoc
class _$AccountMoreInfoModelCopyWithImpl<$Res>
    implements $AccountMoreInfoModelCopyWith<$Res> {
  _$AccountMoreInfoModelCopyWithImpl(this._value, this._then);

  final AccountMoreInfoModel _value;
  // ignore: unused_field
  final $Res Function(AccountMoreInfoModel) _then;

  @override
  $Res call({
    Object? firmid = freezed,
    Object? branchid = freezed,
    Object? schemeName = freezed,
    Object? schemeId = freezed,
    Object? interest = freezed,
    Object? depositDate = freezed,
    Object? balance = freezed,
    Object? accountNumber = freezed,
    Object? customerName = freezed,
    Object? accountType = freezed,
    Object? nominee = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? coApplicantid = freezed,
    Object? coApplicantName = freezed,
  }) {
    return _then(_value.copyWith(
      firmid: firmid == freezed
          ? _value.firmid
          : firmid // ignore: cast_nullable_to_non_nullable
              as int?,
      branchid: branchid == freezed
          ? _value.branchid
          : branchid // ignore: cast_nullable_to_non_nullable
              as int?,
      schemeName: schemeName == freezed
          ? _value.schemeName
          : schemeName // ignore: cast_nullable_to_non_nullable
              as String?,
      schemeId: schemeId == freezed
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as int?,
      interest: interest == freezed
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as double?,
      depositDate: depositDate == freezed
          ? _value.depositDate
          : depositDate // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: accountType == freezed
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      nominee: nominee == freezed
          ? _value.nominee
          : nominee // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      coApplicantid: coApplicantid == freezed
          ? _value.coApplicantid
          : coApplicantid // ignore: cast_nullable_to_non_nullable
              as String?,
      coApplicantName: coApplicantName == freezed
          ? _value.coApplicantName
          : coApplicantName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AccountMoreInfoModelCopyWith<$Res>
    implements $AccountMoreInfoModelCopyWith<$Res> {
  factory _$AccountMoreInfoModelCopyWith(_AccountMoreInfoModel value,
          $Res Function(_AccountMoreInfoModel) then) =
      __$AccountMoreInfoModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? firmid,
      int? branchid,
      String? schemeName,
      int? schemeId,
      double? interest,
      String? depositDate,
      double? balance,
      String? accountNumber,
      String? customerName,
      String? accountType,
      int? nominee,
      int? status,
      String? customerId,
      String? coApplicantid,
      String? coApplicantName});
}

/// @nodoc
class __$AccountMoreInfoModelCopyWithImpl<$Res>
    extends _$AccountMoreInfoModelCopyWithImpl<$Res>
    implements _$AccountMoreInfoModelCopyWith<$Res> {
  __$AccountMoreInfoModelCopyWithImpl(
      _AccountMoreInfoModel _value, $Res Function(_AccountMoreInfoModel) _then)
      : super(_value, (v) => _then(v as _AccountMoreInfoModel));

  @override
  _AccountMoreInfoModel get _value => super._value as _AccountMoreInfoModel;

  @override
  $Res call({
    Object? firmid = freezed,
    Object? branchid = freezed,
    Object? schemeName = freezed,
    Object? schemeId = freezed,
    Object? interest = freezed,
    Object? depositDate = freezed,
    Object? balance = freezed,
    Object? accountNumber = freezed,
    Object? customerName = freezed,
    Object? accountType = freezed,
    Object? nominee = freezed,
    Object? status = freezed,
    Object? customerId = freezed,
    Object? coApplicantid = freezed,
    Object? coApplicantName = freezed,
  }) {
    return _then(_AccountMoreInfoModel(
      firmid: firmid == freezed
          ? _value.firmid
          : firmid // ignore: cast_nullable_to_non_nullable
              as int?,
      branchid: branchid == freezed
          ? _value.branchid
          : branchid // ignore: cast_nullable_to_non_nullable
              as int?,
      schemeName: schemeName == freezed
          ? _value.schemeName
          : schemeName // ignore: cast_nullable_to_non_nullable
              as String?,
      schemeId: schemeId == freezed
          ? _value.schemeId
          : schemeId // ignore: cast_nullable_to_non_nullable
              as int?,
      interest: interest == freezed
          ? _value.interest
          : interest // ignore: cast_nullable_to_non_nullable
              as double?,
      depositDate: depositDate == freezed
          ? _value.depositDate
          : depositDate // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double?,
      accountNumber: accountNumber == freezed
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountType: accountType == freezed
          ? _value.accountType
          : accountType // ignore: cast_nullable_to_non_nullable
              as String?,
      nominee: nominee == freezed
          ? _value.nominee
          : nominee // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      coApplicantid: coApplicantid == freezed
          ? _value.coApplicantid
          : coApplicantid // ignore: cast_nullable_to_non_nullable
              as String?,
      coApplicantName: coApplicantName == freezed
          ? _value.coApplicantName
          : coApplicantName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountMoreInfoModel implements _AccountMoreInfoModel {
  const _$_AccountMoreInfoModel(
      {required this.firmid,
      required this.branchid,
      required this.schemeName,
      required this.schemeId,
      required this.interest,
      required this.depositDate,
      required this.balance,
      required this.accountNumber,
      required this.customerName,
      required this.accountType,
      required this.nominee,
      required this.status,
      required this.customerId,
      required this.coApplicantid,
      required this.coApplicantName});

  factory _$_AccountMoreInfoModel.fromJson(Map<String, dynamic> json) =>
      _$$_AccountMoreInfoModelFromJson(json);

  @override
  final int? firmid;
  @override
  final int? branchid;
  @override
  final String? schemeName;
  @override
  final int? schemeId;
  @override
  final double? interest;
  @override
  final String? depositDate;
  @override
  final double? balance;
  @override
  final String? accountNumber;
  @override
  final String? customerName;
  @override
  final String? accountType;
  @override
  final int? nominee;
  @override
  final int? status;
  @override
  final String? customerId;
  @override
  final String? coApplicantid;
  @override
  final String? coApplicantName;

  @override
  String toString() {
    return 'AccountMoreInfoModel(firmid: $firmid, branchid: $branchid, schemeName: $schemeName, schemeId: $schemeId, interest: $interest, depositDate: $depositDate, balance: $balance, accountNumber: $accountNumber, customerName: $customerName, accountType: $accountType, nominee: $nominee, status: $status, customerId: $customerId, coApplicantid: $coApplicantid, coApplicantName: $coApplicantName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AccountMoreInfoModel &&
            const DeepCollectionEquality().equals(other.firmid, firmid) &&
            const DeepCollectionEquality().equals(other.branchid, branchid) &&
            const DeepCollectionEquality()
                .equals(other.schemeName, schemeName) &&
            const DeepCollectionEquality().equals(other.schemeId, schemeId) &&
            const DeepCollectionEquality().equals(other.interest, interest) &&
            const DeepCollectionEquality()
                .equals(other.depositDate, depositDate) &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.accountNumber, accountNumber) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.accountType, accountType) &&
            const DeepCollectionEquality().equals(other.nominee, nominee) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.coApplicantid, coApplicantid) &&
            const DeepCollectionEquality()
                .equals(other.coApplicantName, coApplicantName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firmid),
      const DeepCollectionEquality().hash(branchid),
      const DeepCollectionEquality().hash(schemeName),
      const DeepCollectionEquality().hash(schemeId),
      const DeepCollectionEquality().hash(interest),
      const DeepCollectionEquality().hash(depositDate),
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(accountNumber),
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(accountType),
      const DeepCollectionEquality().hash(nominee),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(coApplicantid),
      const DeepCollectionEquality().hash(coApplicantName));

  @JsonKey(ignore: true)
  @override
  _$AccountMoreInfoModelCopyWith<_AccountMoreInfoModel> get copyWith =>
      __$AccountMoreInfoModelCopyWithImpl<_AccountMoreInfoModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountMoreInfoModelToJson(this);
  }
}

abstract class _AccountMoreInfoModel implements AccountMoreInfoModel {
  const factory _AccountMoreInfoModel(
      {required int? firmid,
      required int? branchid,
      required String? schemeName,
      required int? schemeId,
      required double? interest,
      required String? depositDate,
      required double? balance,
      required String? accountNumber,
      required String? customerName,
      required String? accountType,
      required int? nominee,
      required int? status,
      required String? customerId,
      required String? coApplicantid,
      required String? coApplicantName}) = _$_AccountMoreInfoModel;

  factory _AccountMoreInfoModel.fromJson(Map<String, dynamic> json) =
      _$_AccountMoreInfoModel.fromJson;

  @override
  int? get firmid;
  @override
  int? get branchid;
  @override
  String? get schemeName;
  @override
  int? get schemeId;
  @override
  double? get interest;
  @override
  String? get depositDate;
  @override
  double? get balance;
  @override
  String? get accountNumber;
  @override
  String? get customerName;
  @override
  String? get accountType;
  @override
  int? get nominee;
  @override
  int? get status;
  @override
  String? get customerId;
  @override
  String? get coApplicantid;
  @override
  String? get coApplicantName;
  @override
  @JsonKey(ignore: true)
  _$AccountMoreInfoModelCopyWith<_AccountMoreInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
