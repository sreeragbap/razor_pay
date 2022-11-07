// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cheque_recouncilation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChequeRecouncilationEventTearOff {
  const _$ChequeRecouncilationEventTearOff();

  _VerifyButtonPressed verifyButtonPressed(
      {required String chequeNo,
      required String depositId,
      required DateTime clearDate}) {
    return _VerifyButtonPressed(
      chequeNo: chequeNo,
      depositId: depositId,
      clearDate: clearDate,
    );
  }

  _BounceButtonPressed bounceButtonPressed(
      {required String empId,
      required String chequeNo,
      required String rejectedReason,
      required String depositId,
      required DateTime clearDt}) {
    return _BounceButtonPressed(
      empId: empId,
      chequeNo: chequeNo,
      rejectedReason: rejectedReason,
      depositId: depositId,
      clearDt: clearDt,
    );
  }

  _GetChequeRecounciledList getChequeRecounciledList() {
    return const _GetChequeRecounciledList();
  }

  _UpdateClearDate updateClearDate(DateTime? clearDate) {
    return _UpdateClearDate(
      clearDate,
    );
  }

  _UpdateBounceDate updateBounceDate(DateTime clearDt) {
    return _UpdateBounceDate(
      clearDt,
    );
  }
}

/// @nodoc
const $ChequeRecouncilationEvent = _$ChequeRecouncilationEventTearOff();

/// @nodoc
mixin _$ChequeRecouncilationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chequeNo, String depositId, DateTime clearDate)
        verifyButtonPressed,
    required TResult Function(String empId, String chequeNo,
            String rejectedReason, String depositId, DateTime clearDt)
        bounceButtonPressed,
    required TResult Function() getChequeRecounciledList,
    required TResult Function(DateTime? clearDate) updateClearDate,
    required TResult Function(DateTime clearDt) updateBounceDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonPressed value) verifyButtonPressed,
    required TResult Function(_BounceButtonPressed value) bounceButtonPressed,
    required TResult Function(_GetChequeRecounciledList value)
        getChequeRecounciledList,
    required TResult Function(_UpdateClearDate value) updateClearDate,
    required TResult Function(_UpdateBounceDate value) updateBounceDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChequeRecouncilationEventCopyWith<$Res> {
  factory $ChequeRecouncilationEventCopyWith(ChequeRecouncilationEvent value,
          $Res Function(ChequeRecouncilationEvent) then) =
      _$ChequeRecouncilationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChequeRecouncilationEventCopyWithImpl<$Res>
    implements $ChequeRecouncilationEventCopyWith<$Res> {
  _$ChequeRecouncilationEventCopyWithImpl(this._value, this._then);

  final ChequeRecouncilationEvent _value;
  // ignore: unused_field
  final $Res Function(ChequeRecouncilationEvent) _then;
}

/// @nodoc
abstract class _$VerifyButtonPressedCopyWith<$Res> {
  factory _$VerifyButtonPressedCopyWith(_VerifyButtonPressed value,
          $Res Function(_VerifyButtonPressed) then) =
      __$VerifyButtonPressedCopyWithImpl<$Res>;
  $Res call({String chequeNo, String depositId, DateTime clearDate});
}

/// @nodoc
class __$VerifyButtonPressedCopyWithImpl<$Res>
    extends _$ChequeRecouncilationEventCopyWithImpl<$Res>
    implements _$VerifyButtonPressedCopyWith<$Res> {
  __$VerifyButtonPressedCopyWithImpl(
      _VerifyButtonPressed _value, $Res Function(_VerifyButtonPressed) _then)
      : super(_value, (v) => _then(v as _VerifyButtonPressed));

  @override
  _VerifyButtonPressed get _value => super._value as _VerifyButtonPressed;

  @override
  $Res call({
    Object? chequeNo = freezed,
    Object? depositId = freezed,
    Object? clearDate = freezed,
  }) {
    return _then(_VerifyButtonPressed(
      chequeNo: chequeNo == freezed
          ? _value.chequeNo
          : chequeNo // ignore: cast_nullable_to_non_nullable
              as String,
      depositId: depositId == freezed
          ? _value.depositId
          : depositId // ignore: cast_nullable_to_non_nullable
              as String,
      clearDate: clearDate == freezed
          ? _value.clearDate
          : clearDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_VerifyButtonPressed implements _VerifyButtonPressed {
  const _$_VerifyButtonPressed(
      {required this.chequeNo,
      required this.depositId,
      required this.clearDate});

  @override
  final String chequeNo;
  @override
  final String depositId;
  @override
  final DateTime clearDate;

  @override
  String toString() {
    return 'ChequeRecouncilationEvent.verifyButtonPressed(chequeNo: $chequeNo, depositId: $depositId, clearDate: $clearDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyButtonPressed &&
            const DeepCollectionEquality().equals(other.chequeNo, chequeNo) &&
            const DeepCollectionEquality().equals(other.depositId, depositId) &&
            const DeepCollectionEquality().equals(other.clearDate, clearDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chequeNo),
      const DeepCollectionEquality().hash(depositId),
      const DeepCollectionEquality().hash(clearDate));

  @JsonKey(ignore: true)
  @override
  _$VerifyButtonPressedCopyWith<_VerifyButtonPressed> get copyWith =>
      __$VerifyButtonPressedCopyWithImpl<_VerifyButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chequeNo, String depositId, DateTime clearDate)
        verifyButtonPressed,
    required TResult Function(String empId, String chequeNo,
            String rejectedReason, String depositId, DateTime clearDt)
        bounceButtonPressed,
    required TResult Function() getChequeRecounciledList,
    required TResult Function(DateTime? clearDate) updateClearDate,
    required TResult Function(DateTime clearDt) updateBounceDate,
  }) {
    return verifyButtonPressed(chequeNo, depositId, clearDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
  }) {
    return verifyButtonPressed?.call(chequeNo, depositId, clearDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (verifyButtonPressed != null) {
      return verifyButtonPressed(chequeNo, depositId, clearDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonPressed value) verifyButtonPressed,
    required TResult Function(_BounceButtonPressed value) bounceButtonPressed,
    required TResult Function(_GetChequeRecounciledList value)
        getChequeRecounciledList,
    required TResult Function(_UpdateClearDate value) updateClearDate,
    required TResult Function(_UpdateBounceDate value) updateBounceDate,
  }) {
    return verifyButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
  }) {
    return verifyButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (verifyButtonPressed != null) {
      return verifyButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _VerifyButtonPressed implements ChequeRecouncilationEvent {
  const factory _VerifyButtonPressed(
      {required String chequeNo,
      required String depositId,
      required DateTime clearDate}) = _$_VerifyButtonPressed;

  String get chequeNo;
  String get depositId;
  DateTime get clearDate;
  @JsonKey(ignore: true)
  _$VerifyButtonPressedCopyWith<_VerifyButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BounceButtonPressedCopyWith<$Res> {
  factory _$BounceButtonPressedCopyWith(_BounceButtonPressed value,
          $Res Function(_BounceButtonPressed) then) =
      __$BounceButtonPressedCopyWithImpl<$Res>;
  $Res call(
      {String empId,
      String chequeNo,
      String rejectedReason,
      String depositId,
      DateTime clearDt});
}

/// @nodoc
class __$BounceButtonPressedCopyWithImpl<$Res>
    extends _$ChequeRecouncilationEventCopyWithImpl<$Res>
    implements _$BounceButtonPressedCopyWith<$Res> {
  __$BounceButtonPressedCopyWithImpl(
      _BounceButtonPressed _value, $Res Function(_BounceButtonPressed) _then)
      : super(_value, (v) => _then(v as _BounceButtonPressed));

  @override
  _BounceButtonPressed get _value => super._value as _BounceButtonPressed;

  @override
  $Res call({
    Object? empId = freezed,
    Object? chequeNo = freezed,
    Object? rejectedReason = freezed,
    Object? depositId = freezed,
    Object? clearDt = freezed,
  }) {
    return _then(_BounceButtonPressed(
      empId: empId == freezed
          ? _value.empId
          : empId // ignore: cast_nullable_to_non_nullable
              as String,
      chequeNo: chequeNo == freezed
          ? _value.chequeNo
          : chequeNo // ignore: cast_nullable_to_non_nullable
              as String,
      rejectedReason: rejectedReason == freezed
          ? _value.rejectedReason
          : rejectedReason // ignore: cast_nullable_to_non_nullable
              as String,
      depositId: depositId == freezed
          ? _value.depositId
          : depositId // ignore: cast_nullable_to_non_nullable
              as String,
      clearDt: clearDt == freezed
          ? _value.clearDt
          : clearDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_BounceButtonPressed implements _BounceButtonPressed {
  const _$_BounceButtonPressed(
      {required this.empId,
      required this.chequeNo,
      required this.rejectedReason,
      required this.depositId,
      required this.clearDt});

  @override
  final String empId;
  @override
  final String chequeNo;
  @override
  final String rejectedReason;
  @override
  final String depositId;
  @override
  final DateTime clearDt;

  @override
  String toString() {
    return 'ChequeRecouncilationEvent.bounceButtonPressed(empId: $empId, chequeNo: $chequeNo, rejectedReason: $rejectedReason, depositId: $depositId, clearDt: $clearDt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BounceButtonPressed &&
            const DeepCollectionEquality().equals(other.empId, empId) &&
            const DeepCollectionEquality().equals(other.chequeNo, chequeNo) &&
            const DeepCollectionEquality()
                .equals(other.rejectedReason, rejectedReason) &&
            const DeepCollectionEquality().equals(other.depositId, depositId) &&
            const DeepCollectionEquality().equals(other.clearDt, clearDt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(empId),
      const DeepCollectionEquality().hash(chequeNo),
      const DeepCollectionEquality().hash(rejectedReason),
      const DeepCollectionEquality().hash(depositId),
      const DeepCollectionEquality().hash(clearDt));

  @JsonKey(ignore: true)
  @override
  _$BounceButtonPressedCopyWith<_BounceButtonPressed> get copyWith =>
      __$BounceButtonPressedCopyWithImpl<_BounceButtonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chequeNo, String depositId, DateTime clearDate)
        verifyButtonPressed,
    required TResult Function(String empId, String chequeNo,
            String rejectedReason, String depositId, DateTime clearDt)
        bounceButtonPressed,
    required TResult Function() getChequeRecounciledList,
    required TResult Function(DateTime? clearDate) updateClearDate,
    required TResult Function(DateTime clearDt) updateBounceDate,
  }) {
    return bounceButtonPressed(
        empId, chequeNo, rejectedReason, depositId, clearDt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
  }) {
    return bounceButtonPressed?.call(
        empId, chequeNo, rejectedReason, depositId, clearDt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (bounceButtonPressed != null) {
      return bounceButtonPressed(
          empId, chequeNo, rejectedReason, depositId, clearDt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonPressed value) verifyButtonPressed,
    required TResult Function(_BounceButtonPressed value) bounceButtonPressed,
    required TResult Function(_GetChequeRecounciledList value)
        getChequeRecounciledList,
    required TResult Function(_UpdateClearDate value) updateClearDate,
    required TResult Function(_UpdateBounceDate value) updateBounceDate,
  }) {
    return bounceButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
  }) {
    return bounceButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (bounceButtonPressed != null) {
      return bounceButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _BounceButtonPressed implements ChequeRecouncilationEvent {
  const factory _BounceButtonPressed(
      {required String empId,
      required String chequeNo,
      required String rejectedReason,
      required String depositId,
      required DateTime clearDt}) = _$_BounceButtonPressed;

  String get empId;
  String get chequeNo;
  String get rejectedReason;
  String get depositId;
  DateTime get clearDt;
  @JsonKey(ignore: true)
  _$BounceButtonPressedCopyWith<_BounceButtonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetChequeRecounciledListCopyWith<$Res> {
  factory _$GetChequeRecounciledListCopyWith(_GetChequeRecounciledList value,
          $Res Function(_GetChequeRecounciledList) then) =
      __$GetChequeRecounciledListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetChequeRecounciledListCopyWithImpl<$Res>
    extends _$ChequeRecouncilationEventCopyWithImpl<$Res>
    implements _$GetChequeRecounciledListCopyWith<$Res> {
  __$GetChequeRecounciledListCopyWithImpl(_GetChequeRecounciledList _value,
      $Res Function(_GetChequeRecounciledList) _then)
      : super(_value, (v) => _then(v as _GetChequeRecounciledList));

  @override
  _GetChequeRecounciledList get _value =>
      super._value as _GetChequeRecounciledList;
}

/// @nodoc

class _$_GetChequeRecounciledList implements _GetChequeRecounciledList {
  const _$_GetChequeRecounciledList();

  @override
  String toString() {
    return 'ChequeRecouncilationEvent.getChequeRecounciledList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetChequeRecounciledList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chequeNo, String depositId, DateTime clearDate)
        verifyButtonPressed,
    required TResult Function(String empId, String chequeNo,
            String rejectedReason, String depositId, DateTime clearDt)
        bounceButtonPressed,
    required TResult Function() getChequeRecounciledList,
    required TResult Function(DateTime? clearDate) updateClearDate,
    required TResult Function(DateTime clearDt) updateBounceDate,
  }) {
    return getChequeRecounciledList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
  }) {
    return getChequeRecounciledList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (getChequeRecounciledList != null) {
      return getChequeRecounciledList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonPressed value) verifyButtonPressed,
    required TResult Function(_BounceButtonPressed value) bounceButtonPressed,
    required TResult Function(_GetChequeRecounciledList value)
        getChequeRecounciledList,
    required TResult Function(_UpdateClearDate value) updateClearDate,
    required TResult Function(_UpdateBounceDate value) updateBounceDate,
  }) {
    return getChequeRecounciledList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
  }) {
    return getChequeRecounciledList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (getChequeRecounciledList != null) {
      return getChequeRecounciledList(this);
    }
    return orElse();
  }
}

abstract class _GetChequeRecounciledList implements ChequeRecouncilationEvent {
  const factory _GetChequeRecounciledList() = _$_GetChequeRecounciledList;
}

/// @nodoc
abstract class _$UpdateClearDateCopyWith<$Res> {
  factory _$UpdateClearDateCopyWith(
          _UpdateClearDate value, $Res Function(_UpdateClearDate) then) =
      __$UpdateClearDateCopyWithImpl<$Res>;
  $Res call({DateTime? clearDate});
}

/// @nodoc
class __$UpdateClearDateCopyWithImpl<$Res>
    extends _$ChequeRecouncilationEventCopyWithImpl<$Res>
    implements _$UpdateClearDateCopyWith<$Res> {
  __$UpdateClearDateCopyWithImpl(
      _UpdateClearDate _value, $Res Function(_UpdateClearDate) _then)
      : super(_value, (v) => _then(v as _UpdateClearDate));

  @override
  _UpdateClearDate get _value => super._value as _UpdateClearDate;

  @override
  $Res call({
    Object? clearDate = freezed,
  }) {
    return _then(_UpdateClearDate(
      clearDate == freezed
          ? _value.clearDate
          : clearDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_UpdateClearDate implements _UpdateClearDate {
  _$_UpdateClearDate(this.clearDate);

  @override
  final DateTime? clearDate;

  @override
  String toString() {
    return 'ChequeRecouncilationEvent.updateClearDate(clearDate: $clearDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateClearDate &&
            const DeepCollectionEquality().equals(other.clearDate, clearDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clearDate));

  @JsonKey(ignore: true)
  @override
  _$UpdateClearDateCopyWith<_UpdateClearDate> get copyWith =>
      __$UpdateClearDateCopyWithImpl<_UpdateClearDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chequeNo, String depositId, DateTime clearDate)
        verifyButtonPressed,
    required TResult Function(String empId, String chequeNo,
            String rejectedReason, String depositId, DateTime clearDt)
        bounceButtonPressed,
    required TResult Function() getChequeRecounciledList,
    required TResult Function(DateTime? clearDate) updateClearDate,
    required TResult Function(DateTime clearDt) updateBounceDate,
  }) {
    return updateClearDate(clearDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
  }) {
    return updateClearDate?.call(clearDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (updateClearDate != null) {
      return updateClearDate(clearDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonPressed value) verifyButtonPressed,
    required TResult Function(_BounceButtonPressed value) bounceButtonPressed,
    required TResult Function(_GetChequeRecounciledList value)
        getChequeRecounciledList,
    required TResult Function(_UpdateClearDate value) updateClearDate,
    required TResult Function(_UpdateBounceDate value) updateBounceDate,
  }) {
    return updateClearDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
  }) {
    return updateClearDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (updateClearDate != null) {
      return updateClearDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateClearDate implements ChequeRecouncilationEvent {
  factory _UpdateClearDate(DateTime? clearDate) = _$_UpdateClearDate;

  DateTime? get clearDate;
  @JsonKey(ignore: true)
  _$UpdateClearDateCopyWith<_UpdateClearDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateBounceDateCopyWith<$Res> {
  factory _$UpdateBounceDateCopyWith(
          _UpdateBounceDate value, $Res Function(_UpdateBounceDate) then) =
      __$UpdateBounceDateCopyWithImpl<$Res>;
  $Res call({DateTime clearDt});
}

/// @nodoc
class __$UpdateBounceDateCopyWithImpl<$Res>
    extends _$ChequeRecouncilationEventCopyWithImpl<$Res>
    implements _$UpdateBounceDateCopyWith<$Res> {
  __$UpdateBounceDateCopyWithImpl(
      _UpdateBounceDate _value, $Res Function(_UpdateBounceDate) _then)
      : super(_value, (v) => _then(v as _UpdateBounceDate));

  @override
  _UpdateBounceDate get _value => super._value as _UpdateBounceDate;

  @override
  $Res call({
    Object? clearDt = freezed,
  }) {
    return _then(_UpdateBounceDate(
      clearDt == freezed
          ? _value.clearDt
          : clearDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_UpdateBounceDate implements _UpdateBounceDate {
  const _$_UpdateBounceDate(this.clearDt);

  @override
  final DateTime clearDt;

  @override
  String toString() {
    return 'ChequeRecouncilationEvent.updateBounceDate(clearDt: $clearDt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateBounceDate &&
            const DeepCollectionEquality().equals(other.clearDt, clearDt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clearDt));

  @JsonKey(ignore: true)
  @override
  _$UpdateBounceDateCopyWith<_UpdateBounceDate> get copyWith =>
      __$UpdateBounceDateCopyWithImpl<_UpdateBounceDate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String chequeNo, String depositId, DateTime clearDate)
        verifyButtonPressed,
    required TResult Function(String empId, String chequeNo,
            String rejectedReason, String depositId, DateTime clearDt)
        bounceButtonPressed,
    required TResult Function() getChequeRecounciledList,
    required TResult Function(DateTime? clearDate) updateClearDate,
    required TResult Function(DateTime clearDt) updateBounceDate,
  }) {
    return updateBounceDate(clearDt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
  }) {
    return updateBounceDate?.call(clearDt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chequeNo, String depositId, DateTime clearDate)?
        verifyButtonPressed,
    TResult Function(String empId, String chequeNo, String rejectedReason,
            String depositId, DateTime clearDt)?
        bounceButtonPressed,
    TResult Function()? getChequeRecounciledList,
    TResult Function(DateTime? clearDate)? updateClearDate,
    TResult Function(DateTime clearDt)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (updateBounceDate != null) {
      return updateBounceDate(clearDt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyButtonPressed value) verifyButtonPressed,
    required TResult Function(_BounceButtonPressed value) bounceButtonPressed,
    required TResult Function(_GetChequeRecounciledList value)
        getChequeRecounciledList,
    required TResult Function(_UpdateClearDate value) updateClearDate,
    required TResult Function(_UpdateBounceDate value) updateBounceDate,
  }) {
    return updateBounceDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
  }) {
    return updateBounceDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyButtonPressed value)? verifyButtonPressed,
    TResult Function(_BounceButtonPressed value)? bounceButtonPressed,
    TResult Function(_GetChequeRecounciledList value)? getChequeRecounciledList,
    TResult Function(_UpdateClearDate value)? updateClearDate,
    TResult Function(_UpdateBounceDate value)? updateBounceDate,
    required TResult orElse(),
  }) {
    if (updateBounceDate != null) {
      return updateBounceDate(this);
    }
    return orElse();
  }
}

abstract class _UpdateBounceDate implements ChequeRecouncilationEvent {
  const factory _UpdateBounceDate(DateTime clearDt) = _$_UpdateBounceDate;

  DateTime get clearDt;
  @JsonKey(ignore: true)
  _$UpdateBounceDateCopyWith<_UpdateBounceDate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChequeRecouncilationStateTearOff {
  const _$ChequeRecouncilationStateTearOff();

  _ChequeRecouncilationState call(
      {required bool isLoading,
      DateTime? clearDate,
      required List<ChequeRecouncilationDataModel> result,
      required Option<
              Either<ChequeRecouncilationFailure,
                  List<ChequeRecouncilationDataModel>>>
          chequeFailureORSuccessOption,
      required Option<Either<ChequeRecouncilationFailure, String>>
          statusOption}) {
    return _ChequeRecouncilationState(
      isLoading: isLoading,
      clearDate: clearDate,
      result: result,
      chequeFailureORSuccessOption: chequeFailureORSuccessOption,
      statusOption: statusOption,
    );
  }
}

/// @nodoc
const $ChequeRecouncilationState = _$ChequeRecouncilationStateTearOff();

/// @nodoc
mixin _$ChequeRecouncilationState {
  bool get isLoading => throw _privateConstructorUsedError;
  DateTime? get clearDate => throw _privateConstructorUsedError;
  List<ChequeRecouncilationDataModel> get result =>
      throw _privateConstructorUsedError;
  Option<
          Either<ChequeRecouncilationFailure,
              List<ChequeRecouncilationDataModel>>>
      get chequeFailureORSuccessOption => throw _privateConstructorUsedError;
  Option<Either<ChequeRecouncilationFailure, String>> get statusOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChequeRecouncilationStateCopyWith<ChequeRecouncilationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChequeRecouncilationStateCopyWith<$Res> {
  factory $ChequeRecouncilationStateCopyWith(ChequeRecouncilationState value,
          $Res Function(ChequeRecouncilationState) then) =
      _$ChequeRecouncilationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      DateTime? clearDate,
      List<ChequeRecouncilationDataModel> result,
      Option<
              Either<ChequeRecouncilationFailure,
                  List<ChequeRecouncilationDataModel>>>
          chequeFailureORSuccessOption,
      Option<Either<ChequeRecouncilationFailure, String>> statusOption});
}

/// @nodoc
class _$ChequeRecouncilationStateCopyWithImpl<$Res>
    implements $ChequeRecouncilationStateCopyWith<$Res> {
  _$ChequeRecouncilationStateCopyWithImpl(this._value, this._then);

  final ChequeRecouncilationState _value;
  // ignore: unused_field
  final $Res Function(ChequeRecouncilationState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? clearDate = freezed,
    Object? result = freezed,
    Object? chequeFailureORSuccessOption = freezed,
    Object? statusOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      clearDate: clearDate == freezed
          ? _value.clearDate
          : clearDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ChequeRecouncilationDataModel>,
      chequeFailureORSuccessOption: chequeFailureORSuccessOption == freezed
          ? _value.chequeFailureORSuccessOption
          : chequeFailureORSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<ChequeRecouncilationFailure,
                      List<ChequeRecouncilationDataModel>>>,
      statusOption: statusOption == freezed
          ? _value.statusOption
          : statusOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChequeRecouncilationFailure, String>>,
    ));
  }
}

/// @nodoc
abstract class _$ChequeRecouncilationStateCopyWith<$Res>
    implements $ChequeRecouncilationStateCopyWith<$Res> {
  factory _$ChequeRecouncilationStateCopyWith(_ChequeRecouncilationState value,
          $Res Function(_ChequeRecouncilationState) then) =
      __$ChequeRecouncilationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      DateTime? clearDate,
      List<ChequeRecouncilationDataModel> result,
      Option<
              Either<ChequeRecouncilationFailure,
                  List<ChequeRecouncilationDataModel>>>
          chequeFailureORSuccessOption,
      Option<Either<ChequeRecouncilationFailure, String>> statusOption});
}

/// @nodoc
class __$ChequeRecouncilationStateCopyWithImpl<$Res>
    extends _$ChequeRecouncilationStateCopyWithImpl<$Res>
    implements _$ChequeRecouncilationStateCopyWith<$Res> {
  __$ChequeRecouncilationStateCopyWithImpl(_ChequeRecouncilationState _value,
      $Res Function(_ChequeRecouncilationState) _then)
      : super(_value, (v) => _then(v as _ChequeRecouncilationState));

  @override
  _ChequeRecouncilationState get _value =>
      super._value as _ChequeRecouncilationState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? clearDate = freezed,
    Object? result = freezed,
    Object? chequeFailureORSuccessOption = freezed,
    Object? statusOption = freezed,
  }) {
    return _then(_ChequeRecouncilationState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      clearDate: clearDate == freezed
          ? _value.clearDate
          : clearDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ChequeRecouncilationDataModel>,
      chequeFailureORSuccessOption: chequeFailureORSuccessOption == freezed
          ? _value.chequeFailureORSuccessOption
          : chequeFailureORSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<ChequeRecouncilationFailure,
                      List<ChequeRecouncilationDataModel>>>,
      statusOption: statusOption == freezed
          ? _value.statusOption
          : statusOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ChequeRecouncilationFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_ChequeRecouncilationState implements _ChequeRecouncilationState {
  const _$_ChequeRecouncilationState(
      {required this.isLoading,
      this.clearDate,
      required this.result,
      required this.chequeFailureORSuccessOption,
      required this.statusOption});

  @override
  final bool isLoading;
  @override
  final DateTime? clearDate;
  @override
  final List<ChequeRecouncilationDataModel> result;
  @override
  final Option<
      Either<ChequeRecouncilationFailure,
          List<ChequeRecouncilationDataModel>>> chequeFailureORSuccessOption;
  @override
  final Option<Either<ChequeRecouncilationFailure, String>> statusOption;

  @override
  String toString() {
    return 'ChequeRecouncilationState(isLoading: $isLoading, clearDate: $clearDate, result: $result, chequeFailureORSuccessOption: $chequeFailureORSuccessOption, statusOption: $statusOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChequeRecouncilationState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.clearDate, clearDate) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality().equals(
                other.chequeFailureORSuccessOption,
                chequeFailureORSuccessOption) &&
            const DeepCollectionEquality()
                .equals(other.statusOption, statusOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(clearDate),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(chequeFailureORSuccessOption),
      const DeepCollectionEquality().hash(statusOption));

  @JsonKey(ignore: true)
  @override
  _$ChequeRecouncilationStateCopyWith<_ChequeRecouncilationState>
      get copyWith =>
          __$ChequeRecouncilationStateCopyWithImpl<_ChequeRecouncilationState>(
              this, _$identity);
}

abstract class _ChequeRecouncilationState implements ChequeRecouncilationState {
  const factory _ChequeRecouncilationState(
      {required bool isLoading,
      DateTime? clearDate,
      required List<ChequeRecouncilationDataModel> result,
      required Option<
              Either<ChequeRecouncilationFailure,
                  List<ChequeRecouncilationDataModel>>>
          chequeFailureORSuccessOption,
      required Option<Either<ChequeRecouncilationFailure, String>>
          statusOption}) = _$_ChequeRecouncilationState;

  @override
  bool get isLoading;
  @override
  DateTime? get clearDate;
  @override
  List<ChequeRecouncilationDataModel> get result;
  @override
  Option<
          Either<ChequeRecouncilationFailure,
              List<ChequeRecouncilationDataModel>>>
      get chequeFailureORSuccessOption;
  @override
  Option<Either<ChequeRecouncilationFailure, String>> get statusOption;
  @override
  @JsonKey(ignore: true)
  _$ChequeRecouncilationStateCopyWith<_ChequeRecouncilationState>
      get copyWith => throw _privateConstructorUsedError;
}
