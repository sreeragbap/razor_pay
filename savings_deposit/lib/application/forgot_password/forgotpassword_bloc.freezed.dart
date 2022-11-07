// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgotpassword_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ForgotpasswordEventTearOff {
  const _$ForgotpasswordEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ForgotPasswordApiCall forgotPasswordApiCall({required String customerId}) {
    return _ForgotPasswordApiCall(
      customerId: customerId,
    );
  }

  _PasswordChange passwordChnage(
      {required String password, required String mobileNumber}) {
    return _PasswordChange(
      password: password,
      mobileNumber: mobileNumber,
    );
  }

  _FindMobileAndSendOtp findMobileAndSendOtp({required String customerId}) {
    return _FindMobileAndSendOtp(
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
const $ForgotpasswordEvent = _$ForgotpasswordEventTearOff();

/// @nodoc
mixin _$ForgotpasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) forgotPasswordApiCall,
    required TResult Function(String password, String mobileNumber)
        passwordChnage,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String splashToken) saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForgotPasswordApiCall value)
        forgotPasswordApiCall,
    required TResult Function(_PasswordChange value) passwordChnage,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotpasswordEventCopyWith<$Res> {
  factory $ForgotpasswordEventCopyWith(
          ForgotpasswordEvent value, $Res Function(ForgotpasswordEvent) then) =
      _$ForgotpasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ForgotpasswordEventCopyWithImpl<$Res>
    implements $ForgotpasswordEventCopyWith<$Res> {
  _$ForgotpasswordEventCopyWithImpl(this._value, this._then);

  final ForgotpasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgotpasswordEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ForgotpasswordEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) forgotPasswordApiCall,
    required TResult Function(String password, String mobileNumber)
        passwordChnage,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForgotPasswordApiCall value)
        forgotPasswordApiCall,
    required TResult Function(_PasswordChange value) passwordChnage,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ForgotpasswordEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ForgotPasswordApiCallCopyWith<$Res> {
  factory _$ForgotPasswordApiCallCopyWith(_ForgotPasswordApiCall value,
          $Res Function(_ForgotPasswordApiCall) then) =
      __$ForgotPasswordApiCallCopyWithImpl<$Res>;
  $Res call({String customerId});
}

/// @nodoc
class __$ForgotPasswordApiCallCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res>
    implements _$ForgotPasswordApiCallCopyWith<$Res> {
  __$ForgotPasswordApiCallCopyWithImpl(_ForgotPasswordApiCall _value,
      $Res Function(_ForgotPasswordApiCall) _then)
      : super(_value, (v) => _then(v as _ForgotPasswordApiCall));

  @override
  _ForgotPasswordApiCall get _value => super._value as _ForgotPasswordApiCall;

  @override
  $Res call({
    Object? customerId = freezed,
  }) {
    return _then(_ForgotPasswordApiCall(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordApiCall implements _ForgotPasswordApiCall {
  const _$_ForgotPasswordApiCall({required this.customerId});

  @override
  final String customerId;

  @override
  String toString() {
    return 'ForgotpasswordEvent.forgotPasswordApiCall(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPasswordApiCall &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(customerId));

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordApiCallCopyWith<_ForgotPasswordApiCall> get copyWith =>
      __$ForgotPasswordApiCallCopyWithImpl<_ForgotPasswordApiCall>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) forgotPasswordApiCall,
    required TResult Function(String password, String mobileNumber)
        passwordChnage,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return forgotPasswordApiCall(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return forgotPasswordApiCall?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (forgotPasswordApiCall != null) {
      return forgotPasswordApiCall(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForgotPasswordApiCall value)
        forgotPasswordApiCall,
    required TResult Function(_PasswordChange value) passwordChnage,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return forgotPasswordApiCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return forgotPasswordApiCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (forgotPasswordApiCall != null) {
      return forgotPasswordApiCall(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordApiCall implements ForgotpasswordEvent {
  const factory _ForgotPasswordApiCall({required String customerId}) =
      _$_ForgotPasswordApiCall;

  String get customerId;
  @JsonKey(ignore: true)
  _$ForgotPasswordApiCallCopyWith<_ForgotPasswordApiCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangeCopyWith<$Res> {
  factory _$PasswordChangeCopyWith(
          _PasswordChange value, $Res Function(_PasswordChange) then) =
      __$PasswordChangeCopyWithImpl<$Res>;
  $Res call({String password, String mobileNumber});
}

/// @nodoc
class __$PasswordChangeCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res>
    implements _$PasswordChangeCopyWith<$Res> {
  __$PasswordChangeCopyWithImpl(
      _PasswordChange _value, $Res Function(_PasswordChange) _then)
      : super(_value, (v) => _then(v as _PasswordChange));

  @override
  _PasswordChange get _value => super._value as _PasswordChange;

  @override
  $Res call({
    Object? password = freezed,
    Object? mobileNumber = freezed,
  }) {
    return _then(_PasswordChange(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChange implements _PasswordChange {
  const _$_PasswordChange({required this.password, required this.mobileNumber});

  @override
  final String password;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'ForgotpasswordEvent.passwordChnage(password: $password, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChange &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(mobileNumber));

  @JsonKey(ignore: true)
  @override
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
      __$PasswordChangeCopyWithImpl<_PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) forgotPasswordApiCall,
    required TResult Function(String password, String mobileNumber)
        passwordChnage,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return passwordChnage(password, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return passwordChnage?.call(password, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (passwordChnage != null) {
      return passwordChnage(password, mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForgotPasswordApiCall value)
        forgotPasswordApiCall,
    required TResult Function(_PasswordChange value) passwordChnage,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return passwordChnage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return passwordChnage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (passwordChnage != null) {
      return passwordChnage(this);
    }
    return orElse();
  }
}

abstract class _PasswordChange implements ForgotpasswordEvent {
  const factory _PasswordChange(
      {required String password,
      required String mobileNumber}) = _$_PasswordChange;

  String get password;
  String get mobileNumber;
  @JsonKey(ignore: true)
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FindMobileAndSendOtpCopyWith<$Res> {
  factory _$FindMobileAndSendOtpCopyWith(_FindMobileAndSendOtp value,
          $Res Function(_FindMobileAndSendOtp) then) =
      __$FindMobileAndSendOtpCopyWithImpl<$Res>;
  $Res call({String customerId});
}

/// @nodoc
class __$FindMobileAndSendOtpCopyWithImpl<$Res>
    extends _$ForgotpasswordEventCopyWithImpl<$Res>
    implements _$FindMobileAndSendOtpCopyWith<$Res> {
  __$FindMobileAndSendOtpCopyWithImpl(
      _FindMobileAndSendOtp _value, $Res Function(_FindMobileAndSendOtp) _then)
      : super(_value, (v) => _then(v as _FindMobileAndSendOtp));

  @override
  _FindMobileAndSendOtp get _value => super._value as _FindMobileAndSendOtp;

  @override
  $Res call({
    Object? customerId = freezed,
  }) {
    return _then(_FindMobileAndSendOtp(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FindMobileAndSendOtp implements _FindMobileAndSendOtp {
  const _$_FindMobileAndSendOtp({required this.customerId});

  @override
  final String customerId;

  @override
  String toString() {
    return 'ForgotpasswordEvent.findMobileAndSendOtp(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FindMobileAndSendOtp &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(customerId));

  @JsonKey(ignore: true)
  @override
  _$FindMobileAndSendOtpCopyWith<_FindMobileAndSendOtp> get copyWith =>
      __$FindMobileAndSendOtpCopyWithImpl<_FindMobileAndSendOtp>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) forgotPasswordApiCall,
    required TResult Function(String password, String mobileNumber)
        passwordChnage,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return findMobileAndSendOtp(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return findMobileAndSendOtp?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (findMobileAndSendOtp != null) {
      return findMobileAndSendOtp(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ForgotPasswordApiCall value)
        forgotPasswordApiCall,
    required TResult Function(_PasswordChange value) passwordChnage,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return findMobileAndSendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return findMobileAndSendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (findMobileAndSendOtp != null) {
      return findMobileAndSendOtp(this);
    }
    return orElse();
  }
}

abstract class _FindMobileAndSendOtp implements ForgotpasswordEvent {
  const factory _FindMobileAndSendOtp({required String customerId}) =
      _$_FindMobileAndSendOtp;

  String get customerId;
  @JsonKey(ignore: true)
  _$FindMobileAndSendOtpCopyWith<_FindMobileAndSendOtp> get copyWith =>
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
    extends _$ForgotpasswordEventCopyWithImpl<$Res>
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
    return 'ForgotpasswordEvent.saveSplashToken(splashToken: $splashToken)';
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
    required TResult Function() started,
    required TResult Function(String customerId) forgotPasswordApiCall,
    required TResult Function(String password, String mobileNumber)
        passwordChnage,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return saveSplashToken(splashToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return saveSplashToken?.call(splashToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? forgotPasswordApiCall,
    TResult Function(String password, String mobileNumber)? passwordChnage,
    TResult Function(String customerId)? findMobileAndSendOtp,
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
    required TResult Function(_Started value) started,
    required TResult Function(_ForgotPasswordApiCall value)
        forgotPasswordApiCall,
    required TResult Function(_PasswordChange value) passwordChnage,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return saveSplashToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return saveSplashToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ForgotPasswordApiCall value)? forgotPasswordApiCall,
    TResult Function(_PasswordChange value)? passwordChnage,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (saveSplashToken != null) {
      return saveSplashToken(this);
    }
    return orElse();
  }
}

abstract class _SaveSplashToken implements ForgotpasswordEvent {
  const factory _SaveSplashToken({required String splashToken}) =
      _$_SaveSplashToken;

  String get splashToken;
  @JsonKey(ignore: true)
  _$SaveSplashTokenCopyWith<_SaveSplashToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ForgotpasswordStateTearOff {
  const _$ForgotpasswordStateTearOff();

  _ForgotpasswordState call(
      {required bool isLoading,
      required String customerId,
      required String response,
      required String passwordChnageResponse,
      OtpModel? otpModel,
      String? splashToken,
      required Option<Either<ForgotPasswordFailure, String>>
          passwordChnageFilureOrSuccess,
      required Option<Either<ForgotPasswordFailure, OtpModel>>
          forgotPasswordFailureOrSucces}) {
    return _ForgotpasswordState(
      isLoading: isLoading,
      customerId: customerId,
      response: response,
      passwordChnageResponse: passwordChnageResponse,
      otpModel: otpModel,
      splashToken: splashToken,
      passwordChnageFilureOrSuccess: passwordChnageFilureOrSuccess,
      forgotPasswordFailureOrSucces: forgotPasswordFailureOrSucces,
    );
  }
}

/// @nodoc
const $ForgotpasswordState = _$ForgotpasswordStateTearOff();

/// @nodoc
mixin _$ForgotpasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
  String get passwordChnageResponse => throw _privateConstructorUsedError;
  OtpModel? get otpModel => throw _privateConstructorUsedError;
  String? get splashToken => throw _privateConstructorUsedError;
  Option<Either<ForgotPasswordFailure, String>>
      get passwordChnageFilureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<ForgotPasswordFailure, OtpModel>>
      get forgotPasswordFailureOrSucces => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotpasswordStateCopyWith<ForgotpasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotpasswordStateCopyWith<$Res> {
  factory $ForgotpasswordStateCopyWith(
          ForgotpasswordState value, $Res Function(ForgotpasswordState) then) =
      _$ForgotpasswordStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String customerId,
      String response,
      String passwordChnageResponse,
      OtpModel? otpModel,
      String? splashToken,
      Option<Either<ForgotPasswordFailure, String>>
          passwordChnageFilureOrSuccess,
      Option<Either<ForgotPasswordFailure, OtpModel>>
          forgotPasswordFailureOrSucces});

  $OtpModelCopyWith<$Res>? get otpModel;
}

/// @nodoc
class _$ForgotpasswordStateCopyWithImpl<$Res>
    implements $ForgotpasswordStateCopyWith<$Res> {
  _$ForgotpasswordStateCopyWithImpl(this._value, this._then);

  final ForgotpasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotpasswordState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? customerId = freezed,
    Object? response = freezed,
    Object? passwordChnageResponse = freezed,
    Object? otpModel = freezed,
    Object? splashToken = freezed,
    Object? passwordChnageFilureOrSuccess = freezed,
    Object? forgotPasswordFailureOrSucces = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      passwordChnageResponse: passwordChnageResponse == freezed
          ? _value.passwordChnageResponse
          : passwordChnageResponse // ignore: cast_nullable_to_non_nullable
              as String,
      otpModel: otpModel == freezed
          ? _value.otpModel
          : otpModel // ignore: cast_nullable_to_non_nullable
              as OtpModel?,
      splashToken: splashToken == freezed
          ? _value.splashToken
          : splashToken // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordChnageFilureOrSuccess: passwordChnageFilureOrSuccess == freezed
          ? _value.passwordChnageFilureOrSuccess
          : passwordChnageFilureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ForgotPasswordFailure, String>>,
      forgotPasswordFailureOrSucces: forgotPasswordFailureOrSucces == freezed
          ? _value.forgotPasswordFailureOrSucces
          : forgotPasswordFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<ForgotPasswordFailure, OtpModel>>,
    ));
  }

  @override
  $OtpModelCopyWith<$Res>? get otpModel {
    if (_value.otpModel == null) {
      return null;
    }

    return $OtpModelCopyWith<$Res>(_value.otpModel!, (value) {
      return _then(_value.copyWith(otpModel: value));
    });
  }
}

/// @nodoc
abstract class _$ForgotpasswordStateCopyWith<$Res>
    implements $ForgotpasswordStateCopyWith<$Res> {
  factory _$ForgotpasswordStateCopyWith(_ForgotpasswordState value,
          $Res Function(_ForgotpasswordState) then) =
      __$ForgotpasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String customerId,
      String response,
      String passwordChnageResponse,
      OtpModel? otpModel,
      String? splashToken,
      Option<Either<ForgotPasswordFailure, String>>
          passwordChnageFilureOrSuccess,
      Option<Either<ForgotPasswordFailure, OtpModel>>
          forgotPasswordFailureOrSucces});

  @override
  $OtpModelCopyWith<$Res>? get otpModel;
}

/// @nodoc
class __$ForgotpasswordStateCopyWithImpl<$Res>
    extends _$ForgotpasswordStateCopyWithImpl<$Res>
    implements _$ForgotpasswordStateCopyWith<$Res> {
  __$ForgotpasswordStateCopyWithImpl(
      _ForgotpasswordState _value, $Res Function(_ForgotpasswordState) _then)
      : super(_value, (v) => _then(v as _ForgotpasswordState));

  @override
  _ForgotpasswordState get _value => super._value as _ForgotpasswordState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? customerId = freezed,
    Object? response = freezed,
    Object? passwordChnageResponse = freezed,
    Object? otpModel = freezed,
    Object? splashToken = freezed,
    Object? passwordChnageFilureOrSuccess = freezed,
    Object? forgotPasswordFailureOrSucces = freezed,
  }) {
    return _then(_ForgotpasswordState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      passwordChnageResponse: passwordChnageResponse == freezed
          ? _value.passwordChnageResponse
          : passwordChnageResponse // ignore: cast_nullable_to_non_nullable
              as String,
      otpModel: otpModel == freezed
          ? _value.otpModel
          : otpModel // ignore: cast_nullable_to_non_nullable
              as OtpModel?,
      splashToken: splashToken == freezed
          ? _value.splashToken
          : splashToken // ignore: cast_nullable_to_non_nullable
              as String?,
      passwordChnageFilureOrSuccess: passwordChnageFilureOrSuccess == freezed
          ? _value.passwordChnageFilureOrSuccess
          : passwordChnageFilureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ForgotPasswordFailure, String>>,
      forgotPasswordFailureOrSucces: forgotPasswordFailureOrSucces == freezed
          ? _value.forgotPasswordFailureOrSucces
          : forgotPasswordFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<ForgotPasswordFailure, OtpModel>>,
    ));
  }
}

/// @nodoc

class _$_ForgotpasswordState implements _ForgotpasswordState {
  const _$_ForgotpasswordState(
      {required this.isLoading,
      required this.customerId,
      required this.response,
      required this.passwordChnageResponse,
      this.otpModel,
      this.splashToken,
      required this.passwordChnageFilureOrSuccess,
      required this.forgotPasswordFailureOrSucces});

  @override
  final bool isLoading;
  @override
  final String customerId;
  @override
  final String response;
  @override
  final String passwordChnageResponse;
  @override
  final OtpModel? otpModel;
  @override
  final String? splashToken;
  @override
  final Option<Either<ForgotPasswordFailure, String>>
      passwordChnageFilureOrSuccess;
  @override
  final Option<Either<ForgotPasswordFailure, OtpModel>>
      forgotPasswordFailureOrSucces;

  @override
  String toString() {
    return 'ForgotpasswordState(isLoading: $isLoading, customerId: $customerId, response: $response, passwordChnageResponse: $passwordChnageResponse, otpModel: $otpModel, splashToken: $splashToken, passwordChnageFilureOrSuccess: $passwordChnageFilureOrSuccess, forgotPasswordFailureOrSucces: $forgotPasswordFailureOrSucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotpasswordState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality()
                .equals(other.passwordChnageResponse, passwordChnageResponse) &&
            const DeepCollectionEquality().equals(other.otpModel, otpModel) &&
            const DeepCollectionEquality()
                .equals(other.splashToken, splashToken) &&
            const DeepCollectionEquality().equals(
                other.passwordChnageFilureOrSuccess,
                passwordChnageFilureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.forgotPasswordFailureOrSucces,
                forgotPasswordFailureOrSucces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(passwordChnageResponse),
      const DeepCollectionEquality().hash(otpModel),
      const DeepCollectionEquality().hash(splashToken),
      const DeepCollectionEquality().hash(passwordChnageFilureOrSuccess),
      const DeepCollectionEquality().hash(forgotPasswordFailureOrSucces));

  @JsonKey(ignore: true)
  @override
  _$ForgotpasswordStateCopyWith<_ForgotpasswordState> get copyWith =>
      __$ForgotpasswordStateCopyWithImpl<_ForgotpasswordState>(
          this, _$identity);
}

abstract class _ForgotpasswordState implements ForgotpasswordState {
  const factory _ForgotpasswordState(
      {required bool isLoading,
      required String customerId,
      required String response,
      required String passwordChnageResponse,
      OtpModel? otpModel,
      String? splashToken,
      required Option<Either<ForgotPasswordFailure, String>>
          passwordChnageFilureOrSuccess,
      required Option<Either<ForgotPasswordFailure, OtpModel>>
          forgotPasswordFailureOrSucces}) = _$_ForgotpasswordState;

  @override
  bool get isLoading;
  @override
  String get customerId;
  @override
  String get response;
  @override
  String get passwordChnageResponse;
  @override
  OtpModel? get otpModel;
  @override
  String? get splashToken;
  @override
  Option<Either<ForgotPasswordFailure, String>>
      get passwordChnageFilureOrSuccess;
  @override
  Option<Either<ForgotPasswordFailure, OtpModel>>
      get forgotPasswordFailureOrSucces;
  @override
  @JsonKey(ignore: true)
  _$ForgotpasswordStateCopyWith<_ForgotpasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
