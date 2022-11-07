// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bh_delete_scheduled_transcation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BhDeleteScheduledTranscationsDataModel
    _$BhDeleteScheduledTranscationsDataModelFromJson(
        Map<String, dynamic> json) {
  return _BhDeleteScheduledTranscationsDataModel.fromJson(json);
}

/// @nodoc
class _$BhDeleteScheduledTranscationsDataModelTearOff {
  const _$BhDeleteScheduledTranscationsDataModelTearOff();

  _BhDeleteScheduledTranscationsDataModel call(
      {required int? rtId,
      required List<BhDeletedScheduledTranscationDetailsDatamodel> detail}) {
    return _BhDeleteScheduledTranscationsDataModel(
      rtId: rtId,
      detail: detail,
    );
  }

  BhDeleteScheduledTranscationsDataModel fromJson(Map<String, Object?> json) {
    return BhDeleteScheduledTranscationsDataModel.fromJson(json);
  }
}

/// @nodoc
const $BhDeleteScheduledTranscationsDataModel =
    _$BhDeleteScheduledTranscationsDataModelTearOff();

/// @nodoc
mixin _$BhDeleteScheduledTranscationsDataModel {
  int? get rtId => throw _privateConstructorUsedError;
  List<BhDeletedScheduledTranscationDetailsDatamodel> get detail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BhDeleteScheduledTranscationsDataModelCopyWith<
          BhDeleteScheduledTranscationsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BhDeleteScheduledTranscationsDataModelCopyWith<$Res> {
  factory $BhDeleteScheduledTranscationsDataModelCopyWith(
          BhDeleteScheduledTranscationsDataModel value,
          $Res Function(BhDeleteScheduledTranscationsDataModel) then) =
      _$BhDeleteScheduledTranscationsDataModelCopyWithImpl<$Res>;
  $Res call(
      {int? rtId, List<BhDeletedScheduledTranscationDetailsDatamodel> detail});
}

/// @nodoc
class _$BhDeleteScheduledTranscationsDataModelCopyWithImpl<$Res>
    implements $BhDeleteScheduledTranscationsDataModelCopyWith<$Res> {
  _$BhDeleteScheduledTranscationsDataModelCopyWithImpl(this._value, this._then);

  final BhDeleteScheduledTranscationsDataModel _value;
  // ignore: unused_field
  final $Res Function(BhDeleteScheduledTranscationsDataModel) _then;

  @override
  $Res call({
    Object? rtId = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      rtId: rtId == freezed
          ? _value.rtId
          : rtId // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<BhDeletedScheduledTranscationDetailsDatamodel>,
    ));
  }
}

/// @nodoc
abstract class _$BhDeleteScheduledTranscationsDataModelCopyWith<$Res>
    implements $BhDeleteScheduledTranscationsDataModelCopyWith<$Res> {
  factory _$BhDeleteScheduledTranscationsDataModelCopyWith(
          _BhDeleteScheduledTranscationsDataModel value,
          $Res Function(_BhDeleteScheduledTranscationsDataModel) then) =
      __$BhDeleteScheduledTranscationsDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? rtId, List<BhDeletedScheduledTranscationDetailsDatamodel> detail});
}

/// @nodoc
class __$BhDeleteScheduledTranscationsDataModelCopyWithImpl<$Res>
    extends _$BhDeleteScheduledTranscationsDataModelCopyWithImpl<$Res>
    implements _$BhDeleteScheduledTranscationsDataModelCopyWith<$Res> {
  __$BhDeleteScheduledTranscationsDataModelCopyWithImpl(
      _BhDeleteScheduledTranscationsDataModel _value,
      $Res Function(_BhDeleteScheduledTranscationsDataModel) _then)
      : super(
            _value, (v) => _then(v as _BhDeleteScheduledTranscationsDataModel));

  @override
  _BhDeleteScheduledTranscationsDataModel get _value =>
      super._value as _BhDeleteScheduledTranscationsDataModel;

  @override
  $Res call({
    Object? rtId = freezed,
    Object? detail = freezed,
  }) {
    return _then(_BhDeleteScheduledTranscationsDataModel(
      rtId: rtId == freezed
          ? _value.rtId
          : rtId // ignore: cast_nullable_to_non_nullable
              as int?,
      detail: detail == freezed
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<BhDeletedScheduledTranscationDetailsDatamodel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BhDeleteScheduledTranscationsDataModel
    implements _BhDeleteScheduledTranscationsDataModel {
  const _$_BhDeleteScheduledTranscationsDataModel(
      {required this.rtId, required this.detail});

  factory _$_BhDeleteScheduledTranscationsDataModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_BhDeleteScheduledTranscationsDataModelFromJson(json);

  @override
  final int? rtId;
  @override
  final List<BhDeletedScheduledTranscationDetailsDatamodel> detail;

  @override
  String toString() {
    return 'BhDeleteScheduledTranscationsDataModel(rtId: $rtId, detail: $detail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BhDeleteScheduledTranscationsDataModel &&
            const DeepCollectionEquality().equals(other.rtId, rtId) &&
            const DeepCollectionEquality().equals(other.detail, detail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rtId),
      const DeepCollectionEquality().hash(detail));

  @JsonKey(ignore: true)
  @override
  _$BhDeleteScheduledTranscationsDataModelCopyWith<
          _BhDeleteScheduledTranscationsDataModel>
      get copyWith => __$BhDeleteScheduledTranscationsDataModelCopyWithImpl<
          _BhDeleteScheduledTranscationsDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BhDeleteScheduledTranscationsDataModelToJson(this);
  }
}

abstract class _BhDeleteScheduledTranscationsDataModel
    implements BhDeleteScheduledTranscationsDataModel {
  const factory _BhDeleteScheduledTranscationsDataModel(
      {required int? rtId,
      required List<BhDeletedScheduledTranscationDetailsDatamodel>
          detail}) = _$_BhDeleteScheduledTranscationsDataModel;

  factory _BhDeleteScheduledTranscationsDataModel.fromJson(
          Map<String, dynamic> json) =
      _$_BhDeleteScheduledTranscationsDataModel.fromJson;

  @override
  int? get rtId;
  @override
  List<BhDeletedScheduledTranscationDetailsDatamodel> get detail;
  @override
  @JsonKey(ignore: true)
  _$BhDeleteScheduledTranscationsDataModelCopyWith<
          _BhDeleteScheduledTranscationsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

BhDeletedScheduledTranscationDetailsDatamodel
    _$BhDeletedScheduledTranscationDetailsDatamodelFromJson(
        Map<String, dynamic> json) {
  return _BhDeletedScheduledTranscationDetailsDatamodel.fromJson(json);
}

/// @nodoc
class _$BhDeletedScheduledTranscationDetailsDatamodelTearOff {
  const _$BhDeletedScheduledTranscationDetailsDatamodelTearOff();

  _BhDeletedScheduledTranscationDetailsDatamodel call(
      {required String? customerName,
      required String? depositNumber,
      required DateTime? date,
      required double? amount,
      required int? rtid,
      required int? statusid}) {
    return _BhDeletedScheduledTranscationDetailsDatamodel(
      customerName: customerName,
      depositNumber: depositNumber,
      date: date,
      amount: amount,
      rtid: rtid,
      statusid: statusid,
    );
  }

  BhDeletedScheduledTranscationDetailsDatamodel fromJson(
      Map<String, Object?> json) {
    return BhDeletedScheduledTranscationDetailsDatamodel.fromJson(json);
  }
}

/// @nodoc
const $BhDeletedScheduledTranscationDetailsDatamodel =
    _$BhDeletedScheduledTranscationDetailsDatamodelTearOff();

/// @nodoc
mixin _$BhDeletedScheduledTranscationDetailsDatamodel {
  String? get customerName => throw _privateConstructorUsedError;
  String? get depositNumber => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  int? get rtid => throw _privateConstructorUsedError;
  int? get statusid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BhDeletedScheduledTranscationDetailsDatamodelCopyWith<
          BhDeletedScheduledTranscationDetailsDatamodel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BhDeletedScheduledTranscationDetailsDatamodelCopyWith<$Res> {
  factory $BhDeletedScheduledTranscationDetailsDatamodelCopyWith(
          BhDeletedScheduledTranscationDetailsDatamodel value,
          $Res Function(BhDeletedScheduledTranscationDetailsDatamodel) then) =
      _$BhDeletedScheduledTranscationDetailsDatamodelCopyWithImpl<$Res>;
  $Res call(
      {String? customerName,
      String? depositNumber,
      DateTime? date,
      double? amount,
      int? rtid,
      int? statusid});
}

/// @nodoc
class _$BhDeletedScheduledTranscationDetailsDatamodelCopyWithImpl<$Res>
    implements $BhDeletedScheduledTranscationDetailsDatamodelCopyWith<$Res> {
  _$BhDeletedScheduledTranscationDetailsDatamodelCopyWithImpl(
      this._value, this._then);

  final BhDeletedScheduledTranscationDetailsDatamodel _value;
  // ignore: unused_field
  final $Res Function(BhDeletedScheduledTranscationDetailsDatamodel) _then;

  @override
  $Res call({
    Object? customerName = freezed,
    Object? depositNumber = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? rtid = freezed,
    Object? statusid = freezed,
  }) {
    return _then(_value.copyWith(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNumber: depositNumber == freezed
          ? _value.depositNumber
          : depositNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      rtid: rtid == freezed
          ? _value.rtid
          : rtid // ignore: cast_nullable_to_non_nullable
              as int?,
      statusid: statusid == freezed
          ? _value.statusid
          : statusid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$BhDeletedScheduledTranscationDetailsDatamodelCopyWith<$Res>
    implements $BhDeletedScheduledTranscationDetailsDatamodelCopyWith<$Res> {
  factory _$BhDeletedScheduledTranscationDetailsDatamodelCopyWith(
          _BhDeletedScheduledTranscationDetailsDatamodel value,
          $Res Function(_BhDeletedScheduledTranscationDetailsDatamodel) then) =
      __$BhDeletedScheduledTranscationDetailsDatamodelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? customerName,
      String? depositNumber,
      DateTime? date,
      double? amount,
      int? rtid,
      int? statusid});
}

/// @nodoc
class __$BhDeletedScheduledTranscationDetailsDatamodelCopyWithImpl<$Res>
    extends _$BhDeletedScheduledTranscationDetailsDatamodelCopyWithImpl<$Res>
    implements _$BhDeletedScheduledTranscationDetailsDatamodelCopyWith<$Res> {
  __$BhDeletedScheduledTranscationDetailsDatamodelCopyWithImpl(
      _BhDeletedScheduledTranscationDetailsDatamodel _value,
      $Res Function(_BhDeletedScheduledTranscationDetailsDatamodel) _then)
      : super(_value,
            (v) => _then(v as _BhDeletedScheduledTranscationDetailsDatamodel));

  @override
  _BhDeletedScheduledTranscationDetailsDatamodel get _value =>
      super._value as _BhDeletedScheduledTranscationDetailsDatamodel;

  @override
  $Res call({
    Object? customerName = freezed,
    Object? depositNumber = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? rtid = freezed,
    Object? statusid = freezed,
  }) {
    return _then(_BhDeletedScheduledTranscationDetailsDatamodel(
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      depositNumber: depositNumber == freezed
          ? _value.depositNumber
          : depositNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      rtid: rtid == freezed
          ? _value.rtid
          : rtid // ignore: cast_nullable_to_non_nullable
              as int?,
      statusid: statusid == freezed
          ? _value.statusid
          : statusid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BhDeletedScheduledTranscationDetailsDatamodel
    implements _BhDeletedScheduledTranscationDetailsDatamodel {
  const _$_BhDeletedScheduledTranscationDetailsDatamodel(
      {required this.customerName,
      required this.depositNumber,
      required this.date,
      required this.amount,
      required this.rtid,
      required this.statusid});

  factory _$_BhDeletedScheduledTranscationDetailsDatamodel.fromJson(
          Map<String, dynamic> json) =>
      _$$_BhDeletedScheduledTranscationDetailsDatamodelFromJson(json);

  @override
  final String? customerName;
  @override
  final String? depositNumber;
  @override
  final DateTime? date;
  @override
  final double? amount;
  @override
  final int? rtid;
  @override
  final int? statusid;

  @override
  String toString() {
    return 'BhDeletedScheduledTranscationDetailsDatamodel(customerName: $customerName, depositNumber: $depositNumber, date: $date, amount: $amount, rtid: $rtid, statusid: $statusid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BhDeletedScheduledTranscationDetailsDatamodel &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality()
                .equals(other.depositNumber, depositNumber) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.rtid, rtid) &&
            const DeepCollectionEquality().equals(other.statusid, statusid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerName),
      const DeepCollectionEquality().hash(depositNumber),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(rtid),
      const DeepCollectionEquality().hash(statusid));

  @JsonKey(ignore: true)
  @override
  _$BhDeletedScheduledTranscationDetailsDatamodelCopyWith<
          _BhDeletedScheduledTranscationDetailsDatamodel>
      get copyWith =>
          __$BhDeletedScheduledTranscationDetailsDatamodelCopyWithImpl<
              _BhDeletedScheduledTranscationDetailsDatamodel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BhDeletedScheduledTranscationDetailsDatamodelToJson(this);
  }
}

abstract class _BhDeletedScheduledTranscationDetailsDatamodel
    implements BhDeletedScheduledTranscationDetailsDatamodel {
  const factory _BhDeletedScheduledTranscationDetailsDatamodel(
          {required String? customerName,
          required String? depositNumber,
          required DateTime? date,
          required double? amount,
          required int? rtid,
          required int? statusid}) =
      _$_BhDeletedScheduledTranscationDetailsDatamodel;

  factory _BhDeletedScheduledTranscationDetailsDatamodel.fromJson(
          Map<String, dynamic> json) =
      _$_BhDeletedScheduledTranscationDetailsDatamodel.fromJson;

  @override
  String? get customerName;
  @override
  String? get depositNumber;
  @override
  DateTime? get date;
  @override
  double? get amount;
  @override
  int? get rtid;
  @override
  int? get statusid;
  @override
  @JsonKey(ignore: true)
  _$BhDeletedScheduledTranscationDetailsDatamodelCopyWith<
          _BhDeletedScheduledTranscationDetailsDatamodel>
      get copyWith => throw _privateConstructorUsedError;
}
