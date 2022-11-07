// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdrawal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SdAccountSearchDataModel _$SdAccountSearchDataModelFromJson(
    Map<String, dynamic> json) {
  return _SdAccountSearchDataModel.fromJson(json);
}

/// @nodoc
class _$SdAccountSearchDataModelTearOff {
  const _$SdAccountSearchDataModelTearOff();

  _SdAccountSearchDataModel call(
      {required String customerName, required String mobileNumber}) {
    return _SdAccountSearchDataModel(
      customerName: customerName,
      mobileNumber: mobileNumber,
    );
  }

  SdAccountSearchDataModel fromJson(Map<String, Object?> json) {
    return SdAccountSearchDataModel.fromJson(json);
  }
}

/// @nodoc
const $SdAccountSearchDataModel = _$SdAccountSearchDataModelTearOff();

/// @nodoc
mixin _$SdAccountSearchDataModel {
  String get customerName => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SdAccountSearchDataModelCopyWith<SdAccountSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SdAccountSearchDataModelCopyWith<$Res> {
  factory $SdAccountSearchDataModelCopyWith(SdAccountSearchDataModel value,
          $Res Function(SdAccountSearchDataModel) then) =
      _$SdAccountSearchDataModelCopyWithImpl<$Res>;
  $Res call({String customerName, String mobileNumber});
}

/// @nodoc
class _$SdAccountSearchDataModelCopyWithImpl<$Res>
    implements $SdAccountSearchDataModelCopyWith<$Res> {
  _$SdAccountSearchDataModelCopyWithImpl(this._value, this._then);

  final SdAccountSearchDataModel _value;
  // ignore: unused_field
  final $Res Function(SdAccountSearchDataModel) _then;

  @override
  $Res call({
    Object? customerName = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_value.copyWith(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SdAccountSearchDataModelCopyWith<$Res>
    implements $SdAccountSearchDataModelCopyWith<$Res> {
  factory _$SdAccountSearchDataModelCopyWith(_SdAccountSearchDataModel value,
          $Res Function(_SdAccountSearchDataModel) then) =
      __$SdAccountSearchDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String customerName, String mobileNumber});
}

/// @nodoc
class __$SdAccountSearchDataModelCopyWithImpl<$Res>
    extends _$SdAccountSearchDataModelCopyWithImpl<$Res>
    implements _$SdAccountSearchDataModelCopyWith<$Res> {
  __$SdAccountSearchDataModelCopyWithImpl(_SdAccountSearchDataModel _value,
      $Res Function(_SdAccountSearchDataModel) _then)
      : super(_value, (v) => _then(v as _SdAccountSearchDataModel));

  @override
  _SdAccountSearchDataModel get _value =>
      super._value as _SdAccountSearchDataModel;

  @override
  $Res call({
    Object? customerName = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_SdAccountSearchDataModel(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SdAccountSearchDataModel implements _SdAccountSearchDataModel {
  const _$_SdAccountSearchDataModel(
      {required this.customerName, required this.mobileNumber});

  factory _$_SdAccountSearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_SdAccountSearchDataModelFromJson(json);

  @override
  final String customerName;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'SdAccountSearchDataModel(customerName: $customerName, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SdAccountSearchDataModel &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(mobileNumber));

  @JsonKey(ignore: true)
  @override
  _$SdAccountSearchDataModelCopyWith<_SdAccountSearchDataModel> get copyWith =>
      __$SdAccountSearchDataModelCopyWithImpl<_SdAccountSearchDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SdAccountSearchDataModelToJson(this);
  }
}

abstract class _SdAccountSearchDataModel implements SdAccountSearchDataModel {
  const factory _SdAccountSearchDataModel(
      {required String customerName,
      required String mobileNumber}) = _$_SdAccountSearchDataModel;

  factory _SdAccountSearchDataModel.fromJson(Map<String, dynamic> json) =
      _$_SdAccountSearchDataModel.fromJson;

  @override
  String get customerName;
  @override
  String get mobileNumber;
  @override
  @JsonKey(ignore: true)
  _$SdAccountSearchDataModelCopyWith<_SdAccountSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

GoldLoanSearchDataModel _$GoldLoanSearchDataModelFromJson(
    Map<String, dynamic> json) {
  return _GoldLoanSearchDataModel.fromJson(json);
}

/// @nodoc
class _$GoldLoanSearchDataModelTearOff {
  const _$GoldLoanSearchDataModelTearOff();

  _GoldLoanSearchDataModel call(
      {required String customername,
      required int branchId,
      required String branchName}) {
    return _GoldLoanSearchDataModel(
      customername: customername,
      branchId: branchId,
      branchName: branchName,
    );
  }

  GoldLoanSearchDataModel fromJson(Map<String, Object?> json) {
    return GoldLoanSearchDataModel.fromJson(json);
  }
}

/// @nodoc
const $GoldLoanSearchDataModel = _$GoldLoanSearchDataModelTearOff();

/// @nodoc
mixin _$GoldLoanSearchDataModel {
  String get customername => throw _privateConstructorUsedError;
  int get branchId => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GoldLoanSearchDataModelCopyWith<GoldLoanSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoldLoanSearchDataModelCopyWith<$Res> {
  factory $GoldLoanSearchDataModelCopyWith(GoldLoanSearchDataModel value,
          $Res Function(GoldLoanSearchDataModel) then) =
      _$GoldLoanSearchDataModelCopyWithImpl<$Res>;
  $Res call({String customername, int branchId, String branchName});
}

/// @nodoc
class _$GoldLoanSearchDataModelCopyWithImpl<$Res>
    implements $GoldLoanSearchDataModelCopyWith<$Res> {
  _$GoldLoanSearchDataModelCopyWithImpl(this._value, this._then);

  final GoldLoanSearchDataModel _value;
  // ignore: unused_field
  final $Res Function(GoldLoanSearchDataModel) _then;

  @override
  $Res call({
    Object? customername = freezed,
    Object? branchId = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_value.copyWith(
      customername: customername == freezed
          ? _value.customername
          : customername // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$GoldLoanSearchDataModelCopyWith<$Res>
    implements $GoldLoanSearchDataModelCopyWith<$Res> {
  factory _$GoldLoanSearchDataModelCopyWith(_GoldLoanSearchDataModel value,
          $Res Function(_GoldLoanSearchDataModel) then) =
      __$GoldLoanSearchDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String customername, int branchId, String branchName});
}

/// @nodoc
class __$GoldLoanSearchDataModelCopyWithImpl<$Res>
    extends _$GoldLoanSearchDataModelCopyWithImpl<$Res>
    implements _$GoldLoanSearchDataModelCopyWith<$Res> {
  __$GoldLoanSearchDataModelCopyWithImpl(_GoldLoanSearchDataModel _value,
      $Res Function(_GoldLoanSearchDataModel) _then)
      : super(_value, (v) => _then(v as _GoldLoanSearchDataModel));

  @override
  _GoldLoanSearchDataModel get _value =>
      super._value as _GoldLoanSearchDataModel;

  @override
  $Res call({
    Object? customername = freezed,
    Object? branchId = freezed,
    Object? branchName = freezed,
  }) {
    return _then(_GoldLoanSearchDataModel(
      customername: customername == freezed
          ? _value.customername
          : customername // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GoldLoanSearchDataModel implements _GoldLoanSearchDataModel {
  const _$_GoldLoanSearchDataModel(
      {required this.customername,
      required this.branchId,
      required this.branchName});

  factory _$_GoldLoanSearchDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_GoldLoanSearchDataModelFromJson(json);

  @override
  final String customername;
  @override
  final int branchId;
  @override
  final String branchName;

  @override
  String toString() {
    return 'GoldLoanSearchDataModel(customername: $customername, branchId: $branchId, branchName: $branchName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoldLoanSearchDataModel &&
            const DeepCollectionEquality()
                .equals(other.customername, customername) &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customername),
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(branchName));

  @JsonKey(ignore: true)
  @override
  _$GoldLoanSearchDataModelCopyWith<_GoldLoanSearchDataModel> get copyWith =>
      __$GoldLoanSearchDataModelCopyWithImpl<_GoldLoanSearchDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GoldLoanSearchDataModelToJson(this);
  }
}

abstract class _GoldLoanSearchDataModel implements GoldLoanSearchDataModel {
  const factory _GoldLoanSearchDataModel(
      {required String customername,
      required int branchId,
      required String branchName}) = _$_GoldLoanSearchDataModel;

  factory _GoldLoanSearchDataModel.fromJson(Map<String, dynamic> json) =
      _$_GoldLoanSearchDataModel.fromJson;

  @override
  String get customername;
  @override
  int get branchId;
  @override
  String get branchName;
  @override
  @JsonKey(ignore: true)
  _$GoldLoanSearchDataModelCopyWith<_GoldLoanSearchDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RdDataModel _$RdDataModelFromJson(Map<String, dynamic> json) {
  return _RdDataModel.fromJson(json);
}

/// @nodoc
class _$RdDataModelTearOff {
  const _$RdDataModelTearOff();

  _RdDataModel call(
      {required String customername,
      required String branchName,
      required int branchId}) {
    return _RdDataModel(
      customername: customername,
      branchName: branchName,
      branchId: branchId,
    );
  }

  RdDataModel fromJson(Map<String, Object?> json) {
    return RdDataModel.fromJson(json);
  }
}

/// @nodoc
const $RdDataModel = _$RdDataModelTearOff();

/// @nodoc
mixin _$RdDataModel {
  String get customername => throw _privateConstructorUsedError;
  String get branchName => throw _privateConstructorUsedError;
  int get branchId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RdDataModelCopyWith<RdDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RdDataModelCopyWith<$Res> {
  factory $RdDataModelCopyWith(
          RdDataModel value, $Res Function(RdDataModel) then) =
      _$RdDataModelCopyWithImpl<$Res>;
  $Res call({String customername, String branchName, int branchId});
}

/// @nodoc
class _$RdDataModelCopyWithImpl<$Res> implements $RdDataModelCopyWith<$Res> {
  _$RdDataModelCopyWithImpl(this._value, this._then);

  final RdDataModel _value;
  // ignore: unused_field
  final $Res Function(RdDataModel) _then;

  @override
  $Res call({
    Object? customername = freezed,
    Object? branchName = freezed,
    Object? branchId = freezed,
  }) {
    return _then(_value.copyWith(
      customername: customername == freezed
          ? _value.customername
          : customername // ignore: cast_nullable_to_non_nullable
              as String,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RdDataModelCopyWith<$Res>
    implements $RdDataModelCopyWith<$Res> {
  factory _$RdDataModelCopyWith(
          _RdDataModel value, $Res Function(_RdDataModel) then) =
      __$RdDataModelCopyWithImpl<$Res>;
  @override
  $Res call({String customername, String branchName, int branchId});
}

/// @nodoc
class __$RdDataModelCopyWithImpl<$Res> extends _$RdDataModelCopyWithImpl<$Res>
    implements _$RdDataModelCopyWith<$Res> {
  __$RdDataModelCopyWithImpl(
      _RdDataModel _value, $Res Function(_RdDataModel) _then)
      : super(_value, (v) => _then(v as _RdDataModel));

  @override
  _RdDataModel get _value => super._value as _RdDataModel;

  @override
  $Res call({
    Object? customername = freezed,
    Object? branchName = freezed,
    Object? branchId = freezed,
  }) {
    return _then(_RdDataModel(
      customername: customername == freezed
          ? _value.customername
          : customername // ignore: cast_nullable_to_non_nullable
              as String,
      branchName: branchName == freezed
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RdDataModel implements _RdDataModel {
  const _$_RdDataModel(
      {required this.customername,
      required this.branchName,
      required this.branchId});

  factory _$_RdDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_RdDataModelFromJson(json);

  @override
  final String customername;
  @override
  final String branchName;
  @override
  final int branchId;

  @override
  String toString() {
    return 'RdDataModel(customername: $customername, branchName: $branchName, branchId: $branchId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RdDataModel &&
            const DeepCollectionEquality()
                .equals(other.customername, customername) &&
            const DeepCollectionEquality()
                .equals(other.branchName, branchName) &&
            const DeepCollectionEquality().equals(other.branchId, branchId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customername),
      const DeepCollectionEquality().hash(branchName),
      const DeepCollectionEquality().hash(branchId));

  @JsonKey(ignore: true)
  @override
  _$RdDataModelCopyWith<_RdDataModel> get copyWith =>
      __$RdDataModelCopyWithImpl<_RdDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RdDataModelToJson(this);
  }
}

abstract class _RdDataModel implements RdDataModel {
  const factory _RdDataModel(
      {required String customername,
      required String branchName,
      required int branchId}) = _$_RdDataModel;

  factory _RdDataModel.fromJson(Map<String, dynamic> json) =
      _$_RdDataModel.fromJson;

  @override
  String get customername;
  @override
  String get branchName;
  @override
  int get branchId;
  @override
  @JsonKey(ignore: true)
  _$RdDataModelCopyWith<_RdDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

PostwithdrawalResponseDatamodel _$PostwithdrawalResponseDatamodelFromJson(
    Map<String, dynamic> json) {
  return _PostwithdrawalResponseDatamodel.fromJson(json);
}

/// @nodoc
class _$PostwithdrawalResponseDatamodelTearOff {
  const _$PostwithdrawalResponseDatamodelTearOff();

  _PostwithdrawalResponseDatamodel call(
      {required String status, required String type, required int transId}) {
    return _PostwithdrawalResponseDatamodel(
      status: status,
      type: type,
      transId: transId,
    );
  }

  PostwithdrawalResponseDatamodel fromJson(Map<String, Object?> json) {
    return PostwithdrawalResponseDatamodel.fromJson(json);
  }
}

/// @nodoc
const $PostwithdrawalResponseDatamodel =
    _$PostwithdrawalResponseDatamodelTearOff();

/// @nodoc
mixin _$PostwithdrawalResponseDatamodel {
  String get status => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get transId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostwithdrawalResponseDatamodelCopyWith<PostwithdrawalResponseDatamodel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostwithdrawalResponseDatamodelCopyWith<$Res> {
  factory $PostwithdrawalResponseDatamodelCopyWith(
          PostwithdrawalResponseDatamodel value,
          $Res Function(PostwithdrawalResponseDatamodel) then) =
      _$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>;
  $Res call({String status, String type, int transId});
}

/// @nodoc
class _$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>
    implements $PostwithdrawalResponseDatamodelCopyWith<$Res> {
  _$PostwithdrawalResponseDatamodelCopyWithImpl(this._value, this._then);

  final PostwithdrawalResponseDatamodel _value;
  // ignore: unused_field
  final $Res Function(PostwithdrawalResponseDatamodel) _then;

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
abstract class _$PostwithdrawalResponseDatamodelCopyWith<$Res>
    implements $PostwithdrawalResponseDatamodelCopyWith<$Res> {
  factory _$PostwithdrawalResponseDatamodelCopyWith(
          _PostwithdrawalResponseDatamodel value,
          $Res Function(_PostwithdrawalResponseDatamodel) then) =
      __$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>;
  @override
  $Res call({String status, String type, int transId});
}

/// @nodoc
class __$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>
    extends _$PostwithdrawalResponseDatamodelCopyWithImpl<$Res>
    implements _$PostwithdrawalResponseDatamodelCopyWith<$Res> {
  __$PostwithdrawalResponseDatamodelCopyWithImpl(
      _PostwithdrawalResponseDatamodel _value,
      $Res Function(_PostwithdrawalResponseDatamodel) _then)
      : super(_value, (v) => _then(v as _PostwithdrawalResponseDatamodel));

  @override
  _PostwithdrawalResponseDatamodel get _value =>
      super._value as _PostwithdrawalResponseDatamodel;

  @override
  $Res call({
    Object? status = freezed,
    Object? type = freezed,
    Object? transId = freezed,
  }) {
    return _then(_PostwithdrawalResponseDatamodel(
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
class _$_PostwithdrawalResponseDatamodel
    implements _PostwithdrawalResponseDatamodel {
  const _$_PostwithdrawalResponseDatamodel(
      {required this.status, required this.type, required this.transId});

  factory _$_PostwithdrawalResponseDatamodel.fromJson(
          Map<String, dynamic> json) =>
      _$$_PostwithdrawalResponseDatamodelFromJson(json);

  @override
  final String status;
  @override
  final String type;
  @override
  final int transId;

  @override
  String toString() {
    return 'PostwithdrawalResponseDatamodel(status: $status, type: $type, transId: $transId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostwithdrawalResponseDatamodel &&
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
  _$PostwithdrawalResponseDatamodelCopyWith<_PostwithdrawalResponseDatamodel>
      get copyWith => __$PostwithdrawalResponseDatamodelCopyWithImpl<
          _PostwithdrawalResponseDatamodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostwithdrawalResponseDatamodelToJson(this);
  }
}

abstract class _PostwithdrawalResponseDatamodel
    implements PostwithdrawalResponseDatamodel {
  const factory _PostwithdrawalResponseDatamodel(
      {required String status,
      required String type,
      required int transId}) = _$_PostwithdrawalResponseDatamodel;

  factory _PostwithdrawalResponseDatamodel.fromJson(Map<String, dynamic> json) =
      _$_PostwithdrawalResponseDatamodel.fromJson;

  @override
  String get status;
  @override
  String get type;
  @override
  int get transId;
  @override
  @JsonKey(ignore: true)
  _$PostwithdrawalResponseDatamodelCopyWith<_PostwithdrawalResponseDatamodel>
      get copyWith => throw _privateConstructorUsedError;
}
