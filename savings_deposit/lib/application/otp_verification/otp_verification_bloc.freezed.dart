// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_verification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OtpVerificationEventTearOff {
  const _$OtpVerificationEventTearOff();

  _OtpChanged otpChanged(String otp) {
    return _OtpChanged(
      otp,
    );
  }

  _OtpBUttonPressed otpBUttonPressed(String transactionid) {
    return _OtpBUttonPressed(
      transactionid,
    );
  }

  _ActiveResendOtp activeResendOtp() {
    return const _ActiveResendOtp();
  }

  _ResendOTP resendOTP(String mobilenumber) {
    return _ResendOTP(
      mobilenumber,
    );
  }

  _UpdateCustomerId updateCustomerId({required String customerId}) {
    return _UpdateCustomerId(
      customerId: customerId,
    );
  }

  _SaveSplashToken saveSplashToken({required String splashToken}) {
    return _SaveSplashToken(
      splashToken: splashToken,
    );
  }
}

/// @nodoc
const $OtpVerificationEvent = _$OtpVerificationEventTearOff();

/// @nodoc
mixin _$OtpVerificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function(String transactionid) otpBUttonPressed,
    required TResult Function() activeResendOtp,
    required TResult Function(String mobilenumber) resendOTP,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpBUttonPressed value) otpBUttonPressed,
    required TResult Function(_ActiveResendOtp value) activeResendOtp,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationEventCopyWith<$Res> {
  factory $OtpVerificationEventCopyWith(OtpVerificationEvent value,
          $Res Function(OtpVerificationEvent) then) =
      _$OtpVerificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OtpVerificationEventCopyWithImpl<$Res>
    implements $OtpVerificationEventCopyWith<$Res> {
  _$OtpVerificationEventCopyWithImpl(this._value, this._then);

  final OtpVerificationEvent _value;
  // ignore: unused_field
  final $Res Function(OtpVerificationEvent) _then;
}

/// @nodoc
abstract class _$OtpChangedCopyWith<$Res> {
  factory _$OtpChangedCopyWith(
          _OtpChanged value, $Res Function(_OtpChanged) then) =
      __$OtpChangedCopyWithImpl<$Res>;
  $Res call({String otp});
}

/// @nodoc
class __$OtpChangedCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res>
    implements _$OtpChangedCopyWith<$Res> {
  __$OtpChangedCopyWithImpl(
      _OtpChanged _value, $Res Function(_OtpChanged) _then)
      : super(_value, (v) => _then(v as _OtpChanged));

  @override
  _OtpChanged get _value => super._value as _OtpChanged;

  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_OtpChanged(
      otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpChanged implements _OtpChanged {
  const _$_OtpChanged(this.otp);

  @override
  final String otp;

  @override
  String toString() {
    return 'OtpVerificationEvent.otpChanged(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpChanged &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$OtpChangedCopyWith<_OtpChanged> get copyWith =>
      __$OtpChangedCopyWithImpl<_OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function(String transactionid) otpBUttonPressed,
    required TResult Function() activeResendOtp,
    required TResult Function(String mobilenumber) resendOTP,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return otpChanged(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return otpChanged?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpBUttonPressed value) otpBUttonPressed,
    required TResult Function(_ActiveResendOtp value) activeResendOtp,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements OtpVerificationEvent {
  const factory _OtpChanged(String otp) = _$_OtpChanged;

  String get otp;
  @JsonKey(ignore: true)
  _$OtpChangedCopyWith<_OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OtpBUttonPressedCopyWith<$Res> {
  factory _$OtpBUttonPressedCopyWith(
          _OtpBUttonPressed value, $Res Function(_OtpBUttonPressed) then) =
      __$OtpBUttonPressedCopyWithImpl<$Res>;
  $Res call({String transactionid});
}

/// @nodoc
class __$OtpBUttonPressedCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res>
    implements _$OtpBUttonPressedCopyWith<$Res> {
  __$OtpBUttonPressedCopyWithImpl(
      _OtpBUttonPressed _value, $Res Function(_OtpBUttonPressed) _then)
      : super(_value, (v) => _then(v as _OtpBUttonPressed));

  @override
  _OtpBUttonPressed get _value => super._value as _OtpBUttonPressed;

  @override
  $Res call({
    Object? transactionid = freezed,
  }) {
    return _then(_OtpBUttonPressed(
      transactionid == freezed
          ? _value.transactionid
          : transactionid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpBUttonPressed implements _OtpBUttonPressed {
  const _$_OtpBUttonPressed(this.transactionid);

  @override
  final String transactionid;

  @override
  String toString() {
    return 'OtpVerificationEvent.otpBUttonPressed(transactionid: $transactionid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpBUttonPressed &&
            const DeepCollectionEquality()
                .equals(other.transactionid, transactionid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transactionid));

  @JsonKey(ignore: true)
  @override
  _$OtpBUttonPressedCopyWith<_OtpBUttonPressed> get copyWith =>
      __$OtpBUttonPressedCopyWithImpl<_OtpBUttonPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function(String transactionid) otpBUttonPressed,
    required TResult Function() activeResendOtp,
    required TResult Function(String mobilenumber) resendOTP,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return otpBUttonPressed(transactionid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return otpBUttonPressed?.call(transactionid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (otpBUttonPressed != null) {
      return otpBUttonPressed(transactionid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpBUttonPressed value) otpBUttonPressed,
    required TResult Function(_ActiveResendOtp value) activeResendOtp,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return otpBUttonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return otpBUttonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (otpBUttonPressed != null) {
      return otpBUttonPressed(this);
    }
    return orElse();
  }
}

abstract class _OtpBUttonPressed implements OtpVerificationEvent {
  const factory _OtpBUttonPressed(String transactionid) = _$_OtpBUttonPressed;

  String get transactionid;
  @JsonKey(ignore: true)
  _$OtpBUttonPressedCopyWith<_OtpBUttonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ActiveResendOtpCopyWith<$Res> {
  factory _$ActiveResendOtpCopyWith(
          _ActiveResendOtp value, $Res Function(_ActiveResendOtp) then) =
      __$ActiveResendOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActiveResendOtpCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res>
    implements _$ActiveResendOtpCopyWith<$Res> {
  __$ActiveResendOtpCopyWithImpl(
      _ActiveResendOtp _value, $Res Function(_ActiveResendOtp) _then)
      : super(_value, (v) => _then(v as _ActiveResendOtp));

  @override
  _ActiveResendOtp get _value => super._value as _ActiveResendOtp;
}

/// @nodoc

class _$_ActiveResendOtp implements _ActiveResendOtp {
  const _$_ActiveResendOtp();

  @override
  String toString() {
    return 'OtpVerificationEvent.activeResendOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ActiveResendOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function(String transactionid) otpBUttonPressed,
    required TResult Function() activeResendOtp,
    required TResult Function(String mobilenumber) resendOTP,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return activeResendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return activeResendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (activeResendOtp != null) {
      return activeResendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpBUttonPressed value) otpBUttonPressed,
    required TResult Function(_ActiveResendOtp value) activeResendOtp,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return activeResendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return activeResendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (activeResendOtp != null) {
      return activeResendOtp(this);
    }
    return orElse();
  }
}

abstract class _ActiveResendOtp implements OtpVerificationEvent {
  const factory _ActiveResendOtp() = _$_ActiveResendOtp;
}

/// @nodoc
abstract class _$ResendOTPCopyWith<$Res> {
  factory _$ResendOTPCopyWith(
          _ResendOTP value, $Res Function(_ResendOTP) then) =
      __$ResendOTPCopyWithImpl<$Res>;
  $Res call({String mobilenumber});
}

/// @nodoc
class __$ResendOTPCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res>
    implements _$ResendOTPCopyWith<$Res> {
  __$ResendOTPCopyWithImpl(_ResendOTP _value, $Res Function(_ResendOTP) _then)
      : super(_value, (v) => _then(v as _ResendOTP));

  @override
  _ResendOTP get _value => super._value as _ResendOTP;

  @override
  $Res call({
    Object? mobilenumber = freezed,
  }) {
    return _then(_ResendOTP(
      mobilenumber == freezed
          ? _value.mobilenumber
          : mobilenumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ResendOTP implements _ResendOTP {
  const _$_ResendOTP(this.mobilenumber);

  @override
  final String mobilenumber;

  @override
  String toString() {
    return 'OtpVerificationEvent.resendOTP(mobilenumber: $mobilenumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResendOTP &&
            const DeepCollectionEquality()
                .equals(other.mobilenumber, mobilenumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(mobilenumber));

  @JsonKey(ignore: true)
  @override
  _$ResendOTPCopyWith<_ResendOTP> get copyWith =>
      __$ResendOTPCopyWithImpl<_ResendOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function(String transactionid) otpBUttonPressed,
    required TResult Function() activeResendOtp,
    required TResult Function(String mobilenumber) resendOTP,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return resendOTP(mobilenumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return resendOTP?.call(mobilenumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (resendOTP != null) {
      return resendOTP(mobilenumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpBUttonPressed value) otpBUttonPressed,
    required TResult Function(_ActiveResendOtp value) activeResendOtp,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return resendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return resendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (resendOTP != null) {
      return resendOTP(this);
    }
    return orElse();
  }
}

abstract class _ResendOTP implements OtpVerificationEvent {
  const factory _ResendOTP(String mobilenumber) = _$_ResendOTP;

  String get mobilenumber;
  @JsonKey(ignore: true)
  _$ResendOTPCopyWith<_ResendOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateCustomerIdCopyWith<$Res> {
  factory _$UpdateCustomerIdCopyWith(
          _UpdateCustomerId value, $Res Function(_UpdateCustomerId) then) =
      __$UpdateCustomerIdCopyWithImpl<$Res>;
  $Res call({String customerId});
}

/// @nodoc
class __$UpdateCustomerIdCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res>
    implements _$UpdateCustomerIdCopyWith<$Res> {
  __$UpdateCustomerIdCopyWithImpl(
      _UpdateCustomerId _value, $Res Function(_UpdateCustomerId) _then)
      : super(_value, (v) => _then(v as _UpdateCustomerId));

  @override
  _UpdateCustomerId get _value => super._value as _UpdateCustomerId;

  @override
  $Res call({
    Object? customerId = freezed,
  }) {
    return _then(_UpdateCustomerId(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateCustomerId implements _UpdateCustomerId {
  const _$_UpdateCustomerId({required this.customerId});

  @override
  final String customerId;

  @override
  String toString() {
    return 'OtpVerificationEvent.updateCustomerId(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateCustomerId &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(customerId));

  @JsonKey(ignore: true)
  @override
  _$UpdateCustomerIdCopyWith<_UpdateCustomerId> get copyWith =>
      __$UpdateCustomerIdCopyWithImpl<_UpdateCustomerId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function(String transactionid) otpBUttonPressed,
    required TResult Function() activeResendOtp,
    required TResult Function(String mobilenumber) resendOTP,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return updateCustomerId(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return updateCustomerId?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (updateCustomerId != null) {
      return updateCustomerId(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpBUttonPressed value) otpBUttonPressed,
    required TResult Function(_ActiveResendOtp value) activeResendOtp,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return updateCustomerId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return updateCustomerId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (updateCustomerId != null) {
      return updateCustomerId(this);
    }
    return orElse();
  }
}

abstract class _UpdateCustomerId implements OtpVerificationEvent {
  const factory _UpdateCustomerId({required String customerId}) =
      _$_UpdateCustomerId;

  String get customerId;
  @JsonKey(ignore: true)
  _$UpdateCustomerIdCopyWith<_UpdateCustomerId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveSplashTokenCopyWith<$Res> {
  factory _$SaveSplashTokenCopyWith(
          _SaveSplashToken value, $Res Function(_SaveSplashToken) then) =
      __$SaveSplashTokenCopyWithImpl<$Res>;
  $Res call({String splashToken});
}

/// @nodoc
class __$SaveSplashTokenCopyWithImpl<$Res>
    extends _$OtpVerificationEventCopyWithImpl<$Res>
    implements _$SaveSplashTokenCopyWith<$Res> {
  __$SaveSplashTokenCopyWithImpl(
      _SaveSplashToken _value, $Res Function(_SaveSplashToken) _then)
      : super(_value, (v) => _then(v as _SaveSplashToken));

  @override
  _SaveSplashToken get _value => super._value as _SaveSplashToken;

  @override
  $Res call({
    Object? splashToken = freezed,
  }) {
    return _then(_SaveSplashToken(
      splashToken: splashToken == freezed
          ? _value.splashToken
          : splashToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveSplashToken implements _SaveSplashToken {
  const _$_SaveSplashToken({required this.splashToken});

  @override
  final String splashToken;

  @override
  String toString() {
    return 'OtpVerificationEvent.saveSplashToken(splashToken: $splashToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveSplashToken &&
            const DeepCollectionEquality()
                .equals(other.splashToken, splashToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(splashToken));

  @JsonKey(ignore: true)
  @override
  _$SaveSplashTokenCopyWith<_SaveSplashToken> get copyWith =>
      __$SaveSplashTokenCopyWithImpl<_SaveSplashToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) otpChanged,
    required TResult Function(String transactionid) otpBUttonPressed,
    required TResult Function() activeResendOtp,
    required TResult Function(String mobilenumber) resendOTP,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return saveSplashToken(splashToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return saveSplashToken?.call(splashToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? otpChanged,
    TResult Function(String transactionid)? otpBUttonPressed,
    TResult Function()? activeResendOtp,
    TResult Function(String mobilenumber)? resendOTP,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (saveSplashToken != null) {
      return saveSplashToken(splashToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpBUttonPressed value) otpBUttonPressed,
    required TResult Function(_ActiveResendOtp value) activeResendOtp,
    required TResult Function(_ResendOTP value) resendOTP,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return saveSplashToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return saveSplashToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpBUttonPressed value)? otpBUttonPressed,
    TResult Function(_ActiveResendOtp value)? activeResendOtp,
    TResult Function(_ResendOTP value)? resendOTP,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (saveSplashToken != null) {
      return saveSplashToken(this);
    }
    return orElse();
  }
}

abstract class _SaveSplashToken implements OtpVerificationEvent {
  const factory _SaveSplashToken({required String splashToken}) =
      _$_SaveSplashToken;

  String get splashToken;
  @JsonKey(ignore: true)
  _$SaveSplashTokenCopyWith<_SaveSplashToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OtpVerificationStateTearOff {
  const _$OtpVerificationStateTearOff();

  _OtpVerificationState call(
      {required bool confrimOtp,
      String? customerId,
      String? otp,
      String? splashToken,
      required int countDown,
      required bool activeResendOtp,
      required Option<Either<ConfirmOtpFailure, String>>
          confirmOtpFailureOrSucessOption,
      required Option<Either<ConfirmOtpFailure, String>>
          resendOTPFailureOrSucessOption,
      String? transactionid}) {
    return _OtpVerificationState(
      confrimOtp: confrimOtp,
      customerId: customerId,
      otp: otp,
      splashToken: splashToken,
      countDown: countDown,
      activeResendOtp: activeResendOtp,
      confirmOtpFailureOrSucessOption: confirmOtpFailureOrSucessOption,
      resendOTPFailureOrSucessOption: resendOTPFailureOrSucessOption,
      transactionid: transactionid,
    );
  }
}

/// @nodoc
const $OtpVerificationState = _$OtpVerificationStateTearOff();

/// @nodoc
mixin _$OtpVerificationState {
  bool get confrimOtp => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get splashToken => throw _privateConstructorUsedError;
  int get countDown => throw _privateConstructorUsedError;
  bool get activeResendOtp => throw _privateConstructorUsedError;
  Option<Either<ConfirmOtpFailure, String>>
      get confirmOtpFailureOrSucessOption => throw _privateConstructorUsedError;
  Option<Either<ConfirmOtpFailure, String>>
      get resendOTPFailureOrSucessOption => throw _privateConstructorUsedError;
  String? get transactionid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpVerificationStateCopyWith<OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationStateCopyWith<$Res> {
  factory $OtpVerificationStateCopyWith(OtpVerificationState value,
          $Res Function(OtpVerificationState) then) =
      _$OtpVerificationStateCopyWithImpl<$Res>;
  $Res call(
      {bool confrimOtp,
      String? customerId,
      String? otp,
      String? splashToken,
      int countDown,
      bool activeResendOtp,
      Option<Either<ConfirmOtpFailure, String>> confirmOtpFailureOrSucessOption,
      Option<Either<ConfirmOtpFailure, String>> resendOTPFailureOrSucessOption,
      String? transactionid});
}

/// @nodoc
class _$OtpVerificationStateCopyWithImpl<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  _$OtpVerificationStateCopyWithImpl(this._value, this._then);

  final OtpVerificationState _value;
  // ignore: unused_field
  final $Res Function(OtpVerificationState) _then;

  @override
  $Res call({
    Object? confrimOtp = freezed,
    Object? customerId = freezed,
    Object? otp = freezed,
    Object? splashToken = freezed,
    Object? countDown = freezed,
    Object? activeResendOtp = freezed,
    Object? confirmOtpFailureOrSucessOption = freezed,
    Object? resendOTPFailureOrSucessOption = freezed,
    Object? transactionid = freezed,
  }) {
    return _then(_value.copyWith(
      confrimOtp: confrimOtp == freezed
          ? _value.confrimOtp
          : confrimOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      splashToken: splashToken == freezed
          ? _value.splashToken
          : splashToken // ignore: cast_nullable_to_non_nullable
              as String?,
      countDown: countDown == freezed
          ? _value.countDown
          : countDown // ignore: cast_nullable_to_non_nullable
              as int,
      activeResendOtp: activeResendOtp == freezed
          ? _value.activeResendOtp
          : activeResendOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmOtpFailureOrSucessOption: confirmOtpFailureOrSucessOption ==
              freezed
          ? _value.confirmOtpFailureOrSucessOption
          : confirmOtpFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConfirmOtpFailure, String>>,
      resendOTPFailureOrSucessOption: resendOTPFailureOrSucessOption == freezed
          ? _value.resendOTPFailureOrSucessOption
          : resendOTPFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConfirmOtpFailure, String>>,
      transactionid: transactionid == freezed
          ? _value.transactionid
          : transactionid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$OtpVerificationStateCopyWith<$Res>
    implements $OtpVerificationStateCopyWith<$Res> {
  factory _$OtpVerificationStateCopyWith(_OtpVerificationState value,
          $Res Function(_OtpVerificationState) then) =
      __$OtpVerificationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool confrimOtp,
      String? customerId,
      String? otp,
      String? splashToken,
      int countDown,
      bool activeResendOtp,
      Option<Either<ConfirmOtpFailure, String>> confirmOtpFailureOrSucessOption,
      Option<Either<ConfirmOtpFailure, String>> resendOTPFailureOrSucessOption,
      String? transactionid});
}

/// @nodoc
class __$OtpVerificationStateCopyWithImpl<$Res>
    extends _$OtpVerificationStateCopyWithImpl<$Res>
    implements _$OtpVerificationStateCopyWith<$Res> {
  __$OtpVerificationStateCopyWithImpl(
      _OtpVerificationState _value, $Res Function(_OtpVerificationState) _then)
      : super(_value, (v) => _then(v as _OtpVerificationState));

  @override
  _OtpVerificationState get _value => super._value as _OtpVerificationState;

  @override
  $Res call({
    Object? confrimOtp = freezed,
    Object? customerId = freezed,
    Object? otp = freezed,
    Object? splashToken = freezed,
    Object? countDown = freezed,
    Object? activeResendOtp = freezed,
    Object? confirmOtpFailureOrSucessOption = freezed,
    Object? resendOTPFailureOrSucessOption = freezed,
    Object? transactionid = freezed,
  }) {
    return _then(_OtpVerificationState(
      confrimOtp: confrimOtp == freezed
          ? _value.confrimOtp
          : confrimOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      splashToken: splashToken == freezed
          ? _value.splashToken
          : splashToken // ignore: cast_nullable_to_non_nullable
              as String?,
      countDown: countDown == freezed
          ? _value.countDown
          : countDown // ignore: cast_nullable_to_non_nullable
              as int,
      activeResendOtp: activeResendOtp == freezed
          ? _value.activeResendOtp
          : activeResendOtp // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmOtpFailureOrSucessOption: confirmOtpFailureOrSucessOption ==
              freezed
          ? _value.confirmOtpFailureOrSucessOption
          : confirmOtpFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConfirmOtpFailure, String>>,
      resendOTPFailureOrSucessOption: resendOTPFailureOrSucessOption == freezed
          ? _value.resendOTPFailureOrSucessOption
          : resendOTPFailureOrSucessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ConfirmOtpFailure, String>>,
      transactionid: transactionid == freezed
          ? _value.transactionid
          : transactionid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OtpVerificationState implements _OtpVerificationState {
  const _$_OtpVerificationState(
      {required this.confrimOtp,
      this.customerId,
      this.otp,
      this.splashToken,
      required this.countDown,
      required this.activeResendOtp,
      required this.confirmOtpFailureOrSucessOption,
      required this.resendOTPFailureOrSucessOption,
      this.transactionid});

  @override
  final bool confrimOtp;
  @override
  final String? customerId;
  @override
  final String? otp;
  @override
  final String? splashToken;
  @override
  final int countDown;
  @override
  final bool activeResendOtp;
  @override
  final Option<Either<ConfirmOtpFailure, String>>
      confirmOtpFailureOrSucessOption;
  @override
  final Option<Either<ConfirmOtpFailure, String>>
      resendOTPFailureOrSucessOption;
  @override
  final String? transactionid;

  @override
  String toString() {
    return 'OtpVerificationState(confrimOtp: $confrimOtp, customerId: $customerId, otp: $otp, splashToken: $splashToken, countDown: $countDown, activeResendOtp: $activeResendOtp, confirmOtpFailureOrSucessOption: $confirmOtpFailureOrSucessOption, resendOTPFailureOrSucessOption: $resendOTPFailureOrSucessOption, transactionid: $transactionid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtpVerificationState &&
            const DeepCollectionEquality()
                .equals(other.confrimOtp, confrimOtp) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality()
                .equals(other.splashToken, splashToken) &&
            const DeepCollectionEquality().equals(other.countDown, countDown) &&
            const DeepCollectionEquality()
                .equals(other.activeResendOtp, activeResendOtp) &&
            const DeepCollectionEquality().equals(
                other.confirmOtpFailureOrSucessOption,
                confirmOtpFailureOrSucessOption) &&
            const DeepCollectionEquality().equals(
                other.resendOTPFailureOrSucessOption,
                resendOTPFailureOrSucessOption) &&
            const DeepCollectionEquality()
                .equals(other.transactionid, transactionid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(confrimOtp),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(splashToken),
      const DeepCollectionEquality().hash(countDown),
      const DeepCollectionEquality().hash(activeResendOtp),
      const DeepCollectionEquality().hash(confirmOtpFailureOrSucessOption),
      const DeepCollectionEquality().hash(resendOTPFailureOrSucessOption),
      const DeepCollectionEquality().hash(transactionid));

  @JsonKey(ignore: true)
  @override
  _$OtpVerificationStateCopyWith<_OtpVerificationState> get copyWith =>
      __$OtpVerificationStateCopyWithImpl<_OtpVerificationState>(
          this, _$identity);
}

abstract class _OtpVerificationState implements OtpVerificationState {
  const factory _OtpVerificationState(
      {required bool confrimOtp,
      String? customerId,
      String? otp,
      String? splashToken,
      required int countDown,
      required bool activeResendOtp,
      required Option<Either<ConfirmOtpFailure, String>>
          confirmOtpFailureOrSucessOption,
      required Option<Either<ConfirmOtpFailure, String>>
          resendOTPFailureOrSucessOption,
      String? transactionid}) = _$_OtpVerificationState;

  @override
  bool get confrimOtp;
  @override
  String? get customerId;
  @override
  String? get otp;
  @override
  String? get splashToken;
  @override
  int get countDown;
  @override
  bool get activeResendOtp;
  @override
  Option<Either<ConfirmOtpFailure, String>> get confirmOtpFailureOrSucessOption;
  @override
  Option<Either<ConfirmOtpFailure, String>> get resendOTPFailureOrSucessOption;
  @override
  String? get transactionid;
  @override
  @JsonKey(ignore: true)
  _$OtpVerificationStateCopyWith<_OtpVerificationState> get copyWith =>
      throw _privateConstructorUsedError;
}
