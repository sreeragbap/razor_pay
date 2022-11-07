// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegistrationEventTearOff {
  const _$RegistrationEventTearOff();

  _Started started() {
    return const _Started();
  }

  _FindMobileAndSendOtp findMobileAndSendOtp({required String customerId}) {
    return _FindMobileAndSendOtp(
      customerId: customerId,
    );
  }

  _GetEmployeeDetails getEmployeeDetails({required String customerId}) {
    return _GetEmployeeDetails(
      customerId: customerId,
    );
  }

  _PostRegistration postRegistration(
      {required String userName, required String password}) {
    return _PostRegistration(
      userName: userName,
      password: password,
    );
  }

  _Loginid loginid({required int loginId}) {
    return _Loginid(
      loginId: loginId,
    );
  }

  _UpdateUserName updateUserName({required String userName}) {
    return _UpdateUserName(
      userName: userName,
    );
  }

  _UserNameAlreadyExistOrNot userNameAlreadyExistOrNot(
      {required String userName}) {
    return _UserNameAlreadyExistOrNot(
      userName: userName,
    );
  }

  _UpdateResponse updateResponse({required String response}) {
    return _UpdateResponse(
      response: response,
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
const $RegistrationEvent = _$RegistrationEventTearOff();

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  final RegistrationEvent _value;
  // ignore: unused_field
  final $Res Function(RegistrationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$RegistrationEventCopyWithImpl<$Res>
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
    return 'RegistrationEvent.started()';
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
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
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
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements RegistrationEvent {
  const factory _Started() = _$_Started;
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
    extends _$RegistrationEventCopyWithImpl<$Res>
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
    return 'RegistrationEvent.findMobileAndSendOtp(customerId: $customerId)';
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
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return findMobileAndSendOtp(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return findMobileAndSendOtp?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
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
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return findMobileAndSendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return findMobileAndSendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (findMobileAndSendOtp != null) {
      return findMobileAndSendOtp(this);
    }
    return orElse();
  }
}

abstract class _FindMobileAndSendOtp implements RegistrationEvent {
  const factory _FindMobileAndSendOtp({required String customerId}) =
      _$_FindMobileAndSendOtp;

  String get customerId;
  @JsonKey(ignore: true)
  _$FindMobileAndSendOtpCopyWith<_FindMobileAndSendOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetEmployeeDetailsCopyWith<$Res> {
  factory _$GetEmployeeDetailsCopyWith(
          _GetEmployeeDetails value, $Res Function(_GetEmployeeDetails) then) =
      __$GetEmployeeDetailsCopyWithImpl<$Res>;
  $Res call({String customerId});
}

/// @nodoc
class __$GetEmployeeDetailsCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$GetEmployeeDetailsCopyWith<$Res> {
  __$GetEmployeeDetailsCopyWithImpl(
      _GetEmployeeDetails _value, $Res Function(_GetEmployeeDetails) _then)
      : super(_value, (v) => _then(v as _GetEmployeeDetails));

  @override
  _GetEmployeeDetails get _value => super._value as _GetEmployeeDetails;

  @override
  $Res call({
    Object? customerId = freezed,
  }) {
    return _then(_GetEmployeeDetails(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetEmployeeDetails implements _GetEmployeeDetails {
  const _$_GetEmployeeDetails({required this.customerId});

  @override
  final String customerId;

  @override
  String toString() {
    return 'RegistrationEvent.getEmployeeDetails(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetEmployeeDetails &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(customerId));

  @JsonKey(ignore: true)
  @override
  _$GetEmployeeDetailsCopyWith<_GetEmployeeDetails> get copyWith =>
      __$GetEmployeeDetailsCopyWithImpl<_GetEmployeeDetails>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return getEmployeeDetails(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return getEmployeeDetails?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (getEmployeeDetails != null) {
      return getEmployeeDetails(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return getEmployeeDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return getEmployeeDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (getEmployeeDetails != null) {
      return getEmployeeDetails(this);
    }
    return orElse();
  }
}

abstract class _GetEmployeeDetails implements RegistrationEvent {
  const factory _GetEmployeeDetails({required String customerId}) =
      _$_GetEmployeeDetails;

  String get customerId;
  @JsonKey(ignore: true)
  _$GetEmployeeDetailsCopyWith<_GetEmployeeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PostRegistrationCopyWith<$Res> {
  factory _$PostRegistrationCopyWith(
          _PostRegistration value, $Res Function(_PostRegistration) then) =
      __$PostRegistrationCopyWithImpl<$Res>;
  $Res call({String userName, String password});
}

/// @nodoc
class __$PostRegistrationCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$PostRegistrationCopyWith<$Res> {
  __$PostRegistrationCopyWithImpl(
      _PostRegistration _value, $Res Function(_PostRegistration) _then)
      : super(_value, (v) => _then(v as _PostRegistration));

  @override
  _PostRegistration get _value => super._value as _PostRegistration;

  @override
  $Res call({
    Object? userName = freezed,
    Object? password = freezed,
  }) {
    return _then(_PostRegistration(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostRegistration implements _PostRegistration {
  const _$_PostRegistration({required this.userName, required this.password});

  @override
  final String userName;
  @override
  final String password;

  @override
  String toString() {
    return 'RegistrationEvent.postRegistration(userName: $userName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostRegistration &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$PostRegistrationCopyWith<_PostRegistration> get copyWith =>
      __$PostRegistrationCopyWithImpl<_PostRegistration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return postRegistration(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return postRegistration?.call(userName, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (postRegistration != null) {
      return postRegistration(userName, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return postRegistration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return postRegistration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (postRegistration != null) {
      return postRegistration(this);
    }
    return orElse();
  }
}

abstract class _PostRegistration implements RegistrationEvent {
  const factory _PostRegistration(
      {required String userName,
      required String password}) = _$_PostRegistration;

  String get userName;
  String get password;
  @JsonKey(ignore: true)
  _$PostRegistrationCopyWith<_PostRegistration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginidCopyWith<$Res> {
  factory _$LoginidCopyWith(_Loginid value, $Res Function(_Loginid) then) =
      __$LoginidCopyWithImpl<$Res>;
  $Res call({int loginId});
}

/// @nodoc
class __$LoginidCopyWithImpl<$Res> extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$LoginidCopyWith<$Res> {
  __$LoginidCopyWithImpl(_Loginid _value, $Res Function(_Loginid) _then)
      : super(_value, (v) => _then(v as _Loginid));

  @override
  _Loginid get _value => super._value as _Loginid;

  @override
  $Res call({
    Object? loginId = freezed,
  }) {
    return _then(_Loginid(
      loginId: loginId == freezed
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Loginid implements _Loginid {
  const _$_Loginid({required this.loginId});

  @override
  final int loginId;

  @override
  String toString() {
    return 'RegistrationEvent.loginid(loginId: $loginId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loginid &&
            const DeepCollectionEquality().equals(other.loginId, loginId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loginId));

  @JsonKey(ignore: true)
  @override
  _$LoginidCopyWith<_Loginid> get copyWith =>
      __$LoginidCopyWithImpl<_Loginid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return loginid(loginId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return loginid?.call(loginId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (loginid != null) {
      return loginid(loginId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return loginid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return loginid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (loginid != null) {
      return loginid(this);
    }
    return orElse();
  }
}

abstract class _Loginid implements RegistrationEvent {
  const factory _Loginid({required int loginId}) = _$_Loginid;

  int get loginId;
  @JsonKey(ignore: true)
  _$LoginidCopyWith<_Loginid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateUserNameCopyWith<$Res> {
  factory _$UpdateUserNameCopyWith(
          _UpdateUserName value, $Res Function(_UpdateUserName) then) =
      __$UpdateUserNameCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class __$UpdateUserNameCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$UpdateUserNameCopyWith<$Res> {
  __$UpdateUserNameCopyWithImpl(
      _UpdateUserName _value, $Res Function(_UpdateUserName) _then)
      : super(_value, (v) => _then(v as _UpdateUserName));

  @override
  _UpdateUserName get _value => super._value as _UpdateUserName;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_UpdateUserName(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateUserName implements _UpdateUserName {
  const _$_UpdateUserName({required this.userName});

  @override
  final String userName;

  @override
  String toString() {
    return 'RegistrationEvent.updateUserName(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUserName &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$UpdateUserNameCopyWith<_UpdateUserName> get copyWith =>
      __$UpdateUserNameCopyWithImpl<_UpdateUserName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return updateUserName(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return updateUserName?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (updateUserName != null) {
      return updateUserName(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return updateUserName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return updateUserName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (updateUserName != null) {
      return updateUserName(this);
    }
    return orElse();
  }
}

abstract class _UpdateUserName implements RegistrationEvent {
  const factory _UpdateUserName({required String userName}) = _$_UpdateUserName;

  String get userName;
  @JsonKey(ignore: true)
  _$UpdateUserNameCopyWith<_UpdateUserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UserNameAlreadyExistOrNotCopyWith<$Res> {
  factory _$UserNameAlreadyExistOrNotCopyWith(_UserNameAlreadyExistOrNot value,
          $Res Function(_UserNameAlreadyExistOrNot) then) =
      __$UserNameAlreadyExistOrNotCopyWithImpl<$Res>;
  $Res call({String userName});
}

/// @nodoc
class __$UserNameAlreadyExistOrNotCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$UserNameAlreadyExistOrNotCopyWith<$Res> {
  __$UserNameAlreadyExistOrNotCopyWithImpl(_UserNameAlreadyExistOrNot _value,
      $Res Function(_UserNameAlreadyExistOrNot) _then)
      : super(_value, (v) => _then(v as _UserNameAlreadyExistOrNot));

  @override
  _UserNameAlreadyExistOrNot get _value =>
      super._value as _UserNameAlreadyExistOrNot;

  @override
  $Res call({
    Object? userName = freezed,
  }) {
    return _then(_UserNameAlreadyExistOrNot(
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserNameAlreadyExistOrNot implements _UserNameAlreadyExistOrNot {
  const _$_UserNameAlreadyExistOrNot({required this.userName});

  @override
  final String userName;

  @override
  String toString() {
    return 'RegistrationEvent.userNameAlreadyExistOrNot(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserNameAlreadyExistOrNot &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$UserNameAlreadyExistOrNotCopyWith<_UserNameAlreadyExistOrNot>
      get copyWith =>
          __$UserNameAlreadyExistOrNotCopyWithImpl<_UserNameAlreadyExistOrNot>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return userNameAlreadyExistOrNot(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return userNameAlreadyExistOrNot?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (userNameAlreadyExistOrNot != null) {
      return userNameAlreadyExistOrNot(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return userNameAlreadyExistOrNot(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return userNameAlreadyExistOrNot?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (userNameAlreadyExistOrNot != null) {
      return userNameAlreadyExistOrNot(this);
    }
    return orElse();
  }
}

abstract class _UserNameAlreadyExistOrNot implements RegistrationEvent {
  const factory _UserNameAlreadyExistOrNot({required String userName}) =
      _$_UserNameAlreadyExistOrNot;

  String get userName;
  @JsonKey(ignore: true)
  _$UserNameAlreadyExistOrNotCopyWith<_UserNameAlreadyExistOrNot>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateResponseCopyWith<$Res> {
  factory _$UpdateResponseCopyWith(
          _UpdateResponse value, $Res Function(_UpdateResponse) then) =
      __$UpdateResponseCopyWithImpl<$Res>;
  $Res call({String response});
}

/// @nodoc
class __$UpdateResponseCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$UpdateResponseCopyWith<$Res> {
  __$UpdateResponseCopyWithImpl(
      _UpdateResponse _value, $Res Function(_UpdateResponse) _then)
      : super(_value, (v) => _then(v as _UpdateResponse));

  @override
  _UpdateResponse get _value => super._value as _UpdateResponse;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_UpdateResponse(
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateResponse implements _UpdateResponse {
  const _$_UpdateResponse({required this.response});

  @override
  final String response;

  @override
  String toString() {
    return 'RegistrationEvent.updateResponse(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateResponse &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$UpdateResponseCopyWith<_UpdateResponse> get copyWith =>
      __$UpdateResponseCopyWithImpl<_UpdateResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return updateResponse(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return updateResponse?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (updateResponse != null) {
      return updateResponse(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return updateResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return updateResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
    required TResult orElse(),
  }) {
    if (updateResponse != null) {
      return updateResponse(this);
    }
    return orElse();
  }
}

abstract class _UpdateResponse implements RegistrationEvent {
  const factory _UpdateResponse({required String response}) = _$_UpdateResponse;

  String get response;
  @JsonKey(ignore: true)
  _$UpdateResponseCopyWith<_UpdateResponse> get copyWith =>
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
    extends _$RegistrationEventCopyWithImpl<$Res>
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
    return 'RegistrationEvent.updateCustomerId(customerId: $customerId)';
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
    required TResult Function() started,
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return updateCustomerId(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return updateCustomerId?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
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
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return updateCustomerId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return updateCustomerId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
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

abstract class _UpdateCustomerId implements RegistrationEvent {
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
    extends _$RegistrationEventCopyWithImpl<$Res>
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
    return 'RegistrationEvent.saveSplashToken(splashToken: $splashToken)';
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
    required TResult Function(String customerId) findMobileAndSendOtp,
    required TResult Function(String customerId) getEmployeeDetails,
    required TResult Function(String userName, String password)
        postRegistration,
    required TResult Function(int loginId) loginid,
    required TResult Function(String userName) updateUserName,
    required TResult Function(String userName) userNameAlreadyExistOrNot,
    required TResult Function(String response) updateResponse,
    required TResult Function(String customerId) updateCustomerId,
    required TResult Function(String splashToken) saveSplashToken,
  }) {
    return saveSplashToken(splashToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
    TResult Function(String customerId)? updateCustomerId,
    TResult Function(String splashToken)? saveSplashToken,
  }) {
    return saveSplashToken?.call(splashToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String customerId)? findMobileAndSendOtp,
    TResult Function(String customerId)? getEmployeeDetails,
    TResult Function(String userName, String password)? postRegistration,
    TResult Function(int loginId)? loginid,
    TResult Function(String userName)? updateUserName,
    TResult Function(String userName)? userNameAlreadyExistOrNot,
    TResult Function(String response)? updateResponse,
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
    required TResult Function(_Started value) started,
    required TResult Function(_FindMobileAndSendOtp value) findMobileAndSendOtp,
    required TResult Function(_GetEmployeeDetails value) getEmployeeDetails,
    required TResult Function(_PostRegistration value) postRegistration,
    required TResult Function(_Loginid value) loginid,
    required TResult Function(_UpdateUserName value) updateUserName,
    required TResult Function(_UserNameAlreadyExistOrNot value)
        userNameAlreadyExistOrNot,
    required TResult Function(_UpdateResponse value) updateResponse,
    required TResult Function(_UpdateCustomerId value) updateCustomerId,
    required TResult Function(_SaveSplashToken value) saveSplashToken,
  }) {
    return saveSplashToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
    TResult Function(_UpdateCustomerId value)? updateCustomerId,
    TResult Function(_SaveSplashToken value)? saveSplashToken,
  }) {
    return saveSplashToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_FindMobileAndSendOtp value)? findMobileAndSendOtp,
    TResult Function(_GetEmployeeDetails value)? getEmployeeDetails,
    TResult Function(_PostRegistration value)? postRegistration,
    TResult Function(_Loginid value)? loginid,
    TResult Function(_UpdateUserName value)? updateUserName,
    TResult Function(_UserNameAlreadyExistOrNot value)?
        userNameAlreadyExistOrNot,
    TResult Function(_UpdateResponse value)? updateResponse,
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

abstract class _SaveSplashToken implements RegistrationEvent {
  const factory _SaveSplashToken({required String splashToken}) =
      _$_SaveSplashToken;

  String get splashToken;
  @JsonKey(ignore: true)
  _$SaveSplashTokenCopyWith<_SaveSplashToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RegistrationStateTearOff {
  const _$RegistrationStateTearOff();

  _RegistrationState call(
      {required bool isLoading,
      required String mobileNumber,
      required String userName,
      required int id,
      required String response,
      required String registrationPostResponse,
      required String userNameResponse,
      required String customerId,
      required String splashToken,
      required Option<Either<RegistrationFailure, OtpModel>>
          mobileNumberSearchFailureOrSucces,
      required Option<Either<RegistrationFailure, GetCustomerDetails>>
          getEmployeeFailureOrSucces,
      GetCustomerDetails? getCustomerDetails,
      OtpModel? otpModel,
      required Option<Either<RegistrationFailure, String>>
          registerEmployeeSuccessOrFailure,
      required Option<Either<RegistrationFailure, String>>
          userNameAlreadyExistOrNot}) {
    return _RegistrationState(
      isLoading: isLoading,
      mobileNumber: mobileNumber,
      userName: userName,
      id: id,
      response: response,
      registrationPostResponse: registrationPostResponse,
      userNameResponse: userNameResponse,
      customerId: customerId,
      splashToken: splashToken,
      mobileNumberSearchFailureOrSucces: mobileNumberSearchFailureOrSucces,
      getEmployeeFailureOrSucces: getEmployeeFailureOrSucces,
      getCustomerDetails: getCustomerDetails,
      otpModel: otpModel,
      registerEmployeeSuccessOrFailure: registerEmployeeSuccessOrFailure,
      userNameAlreadyExistOrNot: userNameAlreadyExistOrNot,
    );
  }
}

/// @nodoc
const $RegistrationState = _$RegistrationStateTearOff();

/// @nodoc
mixin _$RegistrationState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get mobileNumber => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
  String get registrationPostResponse => throw _privateConstructorUsedError;
  String get userNameResponse => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get splashToken => throw _privateConstructorUsedError;
  Option<Either<RegistrationFailure, OtpModel>>
      get mobileNumberSearchFailureOrSucces =>
          throw _privateConstructorUsedError;
  Option<Either<RegistrationFailure, GetCustomerDetails>>
      get getEmployeeFailureOrSucces => throw _privateConstructorUsedError;
  GetCustomerDetails? get getCustomerDetails =>
      throw _privateConstructorUsedError;
  OtpModel? get otpModel => throw _privateConstructorUsedError;
  Option<Either<RegistrationFailure, String>>
      get registerEmployeeSuccessOrFailure =>
          throw _privateConstructorUsedError;
  Option<Either<RegistrationFailure, String>> get userNameAlreadyExistOrNot =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String mobileNumber,
      String userName,
      int id,
      String response,
      String registrationPostResponse,
      String userNameResponse,
      String customerId,
      String splashToken,
      Option<Either<RegistrationFailure, OtpModel>>
          mobileNumberSearchFailureOrSucces,
      Option<Either<RegistrationFailure, GetCustomerDetails>>
          getEmployeeFailureOrSucces,
      GetCustomerDetails? getCustomerDetails,
      OtpModel? otpModel,
      Option<Either<RegistrationFailure, String>>
          registerEmployeeSuccessOrFailure,
      Option<Either<RegistrationFailure, String>> userNameAlreadyExistOrNot});

  $GetCustomerDetailsCopyWith<$Res>? get getCustomerDetails;
  $OtpModelCopyWith<$Res>? get otpModel;
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  final RegistrationState _value;
  // ignore: unused_field
  final $Res Function(RegistrationState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? mobileNumber = freezed,
    Object? userName = freezed,
    Object? id = freezed,
    Object? response = freezed,
    Object? registrationPostResponse = freezed,
    Object? userNameResponse = freezed,
    Object? customerId = freezed,
    Object? splashToken = freezed,
    Object? mobileNumberSearchFailureOrSucces = freezed,
    Object? getEmployeeFailureOrSucces = freezed,
    Object? getCustomerDetails = freezed,
    Object? otpModel = freezed,
    Object? registerEmployeeSuccessOrFailure = freezed,
    Object? userNameAlreadyExistOrNot = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      registrationPostResponse: registrationPostResponse == freezed
          ? _value.registrationPostResponse
          : registrationPostResponse // ignore: cast_nullable_to_non_nullable
              as String,
      userNameResponse: userNameResponse == freezed
          ? _value.userNameResponse
          : userNameResponse // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      splashToken: splashToken == freezed
          ? _value.splashToken
          : splashToken // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumberSearchFailureOrSucces: mobileNumberSearchFailureOrSucces ==
              freezed
          ? _value.mobileNumberSearchFailureOrSucces
          : mobileNumberSearchFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegistrationFailure, OtpModel>>,
      getEmployeeFailureOrSucces: getEmployeeFailureOrSucces == freezed
          ? _value.getEmployeeFailureOrSucces
          : getEmployeeFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegistrationFailure, GetCustomerDetails>>,
      getCustomerDetails: getCustomerDetails == freezed
          ? _value.getCustomerDetails
          : getCustomerDetails // ignore: cast_nullable_to_non_nullable
              as GetCustomerDetails?,
      otpModel: otpModel == freezed
          ? _value.otpModel
          : otpModel // ignore: cast_nullable_to_non_nullable
              as OtpModel?,
      registerEmployeeSuccessOrFailure: registerEmployeeSuccessOrFailure ==
              freezed
          ? _value.registerEmployeeSuccessOrFailure
          : registerEmployeeSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegistrationFailure, String>>,
      userNameAlreadyExistOrNot: userNameAlreadyExistOrNot == freezed
          ? _value.userNameAlreadyExistOrNot
          : userNameAlreadyExistOrNot // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegistrationFailure, String>>,
    ));
  }

  @override
  $GetCustomerDetailsCopyWith<$Res>? get getCustomerDetails {
    if (_value.getCustomerDetails == null) {
      return null;
    }

    return $GetCustomerDetailsCopyWith<$Res>(_value.getCustomerDetails!,
        (value) {
      return _then(_value.copyWith(getCustomerDetails: value));
    });
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
abstract class _$RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$RegistrationStateCopyWith(
          _RegistrationState value, $Res Function(_RegistrationState) then) =
      __$RegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String mobileNumber,
      String userName,
      int id,
      String response,
      String registrationPostResponse,
      String userNameResponse,
      String customerId,
      String splashToken,
      Option<Either<RegistrationFailure, OtpModel>>
          mobileNumberSearchFailureOrSucces,
      Option<Either<RegistrationFailure, GetCustomerDetails>>
          getEmployeeFailureOrSucces,
      GetCustomerDetails? getCustomerDetails,
      OtpModel? otpModel,
      Option<Either<RegistrationFailure, String>>
          registerEmployeeSuccessOrFailure,
      Option<Either<RegistrationFailure, String>> userNameAlreadyExistOrNot});

  @override
  $GetCustomerDetailsCopyWith<$Res>? get getCustomerDetails;
  @override
  $OtpModelCopyWith<$Res>? get otpModel;
}

/// @nodoc
class __$RegistrationStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements _$RegistrationStateCopyWith<$Res> {
  __$RegistrationStateCopyWithImpl(
      _RegistrationState _value, $Res Function(_RegistrationState) _then)
      : super(_value, (v) => _then(v as _RegistrationState));

  @override
  _RegistrationState get _value => super._value as _RegistrationState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? mobileNumber = freezed,
    Object? userName = freezed,
    Object? id = freezed,
    Object? response = freezed,
    Object? registrationPostResponse = freezed,
    Object? userNameResponse = freezed,
    Object? customerId = freezed,
    Object? splashToken = freezed,
    Object? mobileNumberSearchFailureOrSucces = freezed,
    Object? getEmployeeFailureOrSucces = freezed,
    Object? getCustomerDetails = freezed,
    Object? otpModel = freezed,
    Object? registerEmployeeSuccessOrFailure = freezed,
    Object? userNameAlreadyExistOrNot = freezed,
  }) {
    return _then(_RegistrationState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mobileNumber: mobileNumber == freezed
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      registrationPostResponse: registrationPostResponse == freezed
          ? _value.registrationPostResponse
          : registrationPostResponse // ignore: cast_nullable_to_non_nullable
              as String,
      userNameResponse: userNameResponse == freezed
          ? _value.userNameResponse
          : userNameResponse // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      splashToken: splashToken == freezed
          ? _value.splashToken
          : splashToken // ignore: cast_nullable_to_non_nullable
              as String,
      mobileNumberSearchFailureOrSucces: mobileNumberSearchFailureOrSucces ==
              freezed
          ? _value.mobileNumberSearchFailureOrSucces
          : mobileNumberSearchFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegistrationFailure, OtpModel>>,
      getEmployeeFailureOrSucces: getEmployeeFailureOrSucces == freezed
          ? _value.getEmployeeFailureOrSucces
          : getEmployeeFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegistrationFailure, GetCustomerDetails>>,
      getCustomerDetails: getCustomerDetails == freezed
          ? _value.getCustomerDetails
          : getCustomerDetails // ignore: cast_nullable_to_non_nullable
              as GetCustomerDetails?,
      otpModel: otpModel == freezed
          ? _value.otpModel
          : otpModel // ignore: cast_nullable_to_non_nullable
              as OtpModel?,
      registerEmployeeSuccessOrFailure: registerEmployeeSuccessOrFailure ==
              freezed
          ? _value.registerEmployeeSuccessOrFailure
          : registerEmployeeSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegistrationFailure, String>>,
      userNameAlreadyExistOrNot: userNameAlreadyExistOrNot == freezed
          ? _value.userNameAlreadyExistOrNot
          : userNameAlreadyExistOrNot // ignore: cast_nullable_to_non_nullable
              as Option<Either<RegistrationFailure, String>>,
    ));
  }
}

/// @nodoc

class _$_RegistrationState implements _RegistrationState {
  const _$_RegistrationState(
      {required this.isLoading,
      required this.mobileNumber,
      required this.userName,
      required this.id,
      required this.response,
      required this.registrationPostResponse,
      required this.userNameResponse,
      required this.customerId,
      required this.splashToken,
      required this.mobileNumberSearchFailureOrSucces,
      required this.getEmployeeFailureOrSucces,
      this.getCustomerDetails,
      this.otpModel,
      required this.registerEmployeeSuccessOrFailure,
      required this.userNameAlreadyExistOrNot});

  @override
  final bool isLoading;
  @override
  final String mobileNumber;
  @override
  final String userName;
  @override
  final int id;
  @override
  final String response;
  @override
  final String registrationPostResponse;
  @override
  final String userNameResponse;
  @override
  final String customerId;
  @override
  final String splashToken;
  @override
  final Option<Either<RegistrationFailure, OtpModel>>
      mobileNumberSearchFailureOrSucces;
  @override
  final Option<Either<RegistrationFailure, GetCustomerDetails>>
      getEmployeeFailureOrSucces;
  @override
  final GetCustomerDetails? getCustomerDetails;
  @override
  final OtpModel? otpModel;
  @override
  final Option<Either<RegistrationFailure, String>>
      registerEmployeeSuccessOrFailure;
  @override
  final Option<Either<RegistrationFailure, String>> userNameAlreadyExistOrNot;

  @override
  String toString() {
    return 'RegistrationState(isLoading: $isLoading, mobileNumber: $mobileNumber, userName: $userName, id: $id, response: $response, registrationPostResponse: $registrationPostResponse, userNameResponse: $userNameResponse, customerId: $customerId, splashToken: $splashToken, mobileNumberSearchFailureOrSucces: $mobileNumberSearchFailureOrSucces, getEmployeeFailureOrSucces: $getEmployeeFailureOrSucces, getCustomerDetails: $getCustomerDetails, otpModel: $otpModel, registerEmployeeSuccessOrFailure: $registerEmployeeSuccessOrFailure, userNameAlreadyExistOrNot: $userNameAlreadyExistOrNot)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegistrationState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumber, mobileNumber) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.response, response) &&
            const DeepCollectionEquality().equals(
                other.registrationPostResponse, registrationPostResponse) &&
            const DeepCollectionEquality()
                .equals(other.userNameResponse, userNameResponse) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.splashToken, splashToken) &&
            const DeepCollectionEquality().equals(
                other.mobileNumberSearchFailureOrSucces,
                mobileNumberSearchFailureOrSucces) &&
            const DeepCollectionEquality().equals(
                other.getEmployeeFailureOrSucces, getEmployeeFailureOrSucces) &&
            const DeepCollectionEquality()
                .equals(other.getCustomerDetails, getCustomerDetails) &&
            const DeepCollectionEquality().equals(other.otpModel, otpModel) &&
            const DeepCollectionEquality().equals(
                other.registerEmployeeSuccessOrFailure,
                registerEmployeeSuccessOrFailure) &&
            const DeepCollectionEquality().equals(
                other.userNameAlreadyExistOrNot, userNameAlreadyExistOrNot));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(mobileNumber),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(response),
      const DeepCollectionEquality().hash(registrationPostResponse),
      const DeepCollectionEquality().hash(userNameResponse),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(splashToken),
      const DeepCollectionEquality().hash(mobileNumberSearchFailureOrSucces),
      const DeepCollectionEquality().hash(getEmployeeFailureOrSucces),
      const DeepCollectionEquality().hash(getCustomerDetails),
      const DeepCollectionEquality().hash(otpModel),
      const DeepCollectionEquality().hash(registerEmployeeSuccessOrFailure),
      const DeepCollectionEquality().hash(userNameAlreadyExistOrNot));

  @JsonKey(ignore: true)
  @override
  _$RegistrationStateCopyWith<_RegistrationState> get copyWith =>
      __$RegistrationStateCopyWithImpl<_RegistrationState>(this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {required bool isLoading,
      required String mobileNumber,
      required String userName,
      required int id,
      required String response,
      required String registrationPostResponse,
      required String userNameResponse,
      required String customerId,
      required String splashToken,
      required Option<Either<RegistrationFailure, OtpModel>>
          mobileNumberSearchFailureOrSucces,
      required Option<Either<RegistrationFailure, GetCustomerDetails>>
          getEmployeeFailureOrSucces,
      GetCustomerDetails? getCustomerDetails,
      OtpModel? otpModel,
      required Option<Either<RegistrationFailure, String>>
          registerEmployeeSuccessOrFailure,
      required Option<Either<RegistrationFailure, String>>
          userNameAlreadyExistOrNot}) = _$_RegistrationState;

  @override
  bool get isLoading;
  @override
  String get mobileNumber;
  @override
  String get userName;
  @override
  int get id;
  @override
  String get response;
  @override
  String get registrationPostResponse;
  @override
  String get userNameResponse;
  @override
  String get customerId;
  @override
  String get splashToken;
  @override
  Option<Either<RegistrationFailure, OtpModel>>
      get mobileNumberSearchFailureOrSucces;
  @override
  Option<Either<RegistrationFailure, GetCustomerDetails>>
      get getEmployeeFailureOrSucces;
  @override
  GetCustomerDetails? get getCustomerDetails;
  @override
  OtpModel? get otpModel;
  @override
  Option<Either<RegistrationFailure, String>>
      get registerEmployeeSuccessOrFailure;
  @override
  Option<Either<RegistrationFailure, String>> get userNameAlreadyExistOrNot;
  @override
  @JsonKey(ignore: true)
  _$RegistrationStateCopyWith<_RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
