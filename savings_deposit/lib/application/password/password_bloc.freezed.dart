// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasswordEventTearOff {
  const _$PasswordEventTearOff();

  _CheckPasswordEvent checkPasswordEvent(double value) {
    return _CheckPasswordEvent(
      value,
    );
  }

  _NewPassword newPassword({required String newPassword}) {
    return _NewPassword(
      newPassword: newPassword,
    );
  }

  _ConfirmPassword confirmPassword({required String confirmPassword}) {
    return _ConfirmPassword(
      confirmPassword: confirmPassword,
    );
  }

  _UpdateStrengthValue updateStrengthValue(double strength) {
    return _UpdateStrengthValue(
      strength,
    );
  }

  _Reset reset() {
    return const _Reset();
  }
}

/// @nodoc
const $PasswordEvent = _$PasswordEventTearOff();

/// @nodoc
mixin _$PasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) checkPasswordEvent,
    required TResult Function(String newPassword) newPassword,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(double strength) updateStrengthValue,
    required TResult Function() reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPasswordEvent value) checkPasswordEvent,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_UpdateStrengthValue value) updateStrengthValue,
    required TResult Function(_Reset value) reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordEventCopyWith<$Res> {
  factory $PasswordEventCopyWith(
          PasswordEvent value, $Res Function(PasswordEvent) then) =
      _$PasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordEventCopyWithImpl<$Res>
    implements $PasswordEventCopyWith<$Res> {
  _$PasswordEventCopyWithImpl(this._value, this._then);

  final PasswordEvent _value;
  // ignore: unused_field
  final $Res Function(PasswordEvent) _then;
}

/// @nodoc
abstract class _$CheckPasswordEventCopyWith<$Res> {
  factory _$CheckPasswordEventCopyWith(
          _CheckPasswordEvent value, $Res Function(_CheckPasswordEvent) then) =
      __$CheckPasswordEventCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$CheckPasswordEventCopyWithImpl<$Res>
    extends _$PasswordEventCopyWithImpl<$Res>
    implements _$CheckPasswordEventCopyWith<$Res> {
  __$CheckPasswordEventCopyWithImpl(
      _CheckPasswordEvent _value, $Res Function(_CheckPasswordEvent) _then)
      : super(_value, (v) => _then(v as _CheckPasswordEvent));

  @override
  _CheckPasswordEvent get _value => super._value as _CheckPasswordEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_CheckPasswordEvent(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CheckPasswordEvent implements _CheckPasswordEvent {
  const _$_CheckPasswordEvent(this.value);

  @override
  final double value;

  @override
  String toString() {
    return 'PasswordEvent.checkPasswordEvent(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckPasswordEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$CheckPasswordEventCopyWith<_CheckPasswordEvent> get copyWith =>
      __$CheckPasswordEventCopyWithImpl<_CheckPasswordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) checkPasswordEvent,
    required TResult Function(String newPassword) newPassword,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(double strength) updateStrengthValue,
    required TResult Function() reset,
  }) {
    return checkPasswordEvent(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
  }) {
    return checkPasswordEvent?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (checkPasswordEvent != null) {
      return checkPasswordEvent(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPasswordEvent value) checkPasswordEvent,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_UpdateStrengthValue value) updateStrengthValue,
    required TResult Function(_Reset value) reset,
  }) {
    return checkPasswordEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
  }) {
    return checkPasswordEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (checkPasswordEvent != null) {
      return checkPasswordEvent(this);
    }
    return orElse();
  }
}

abstract class _CheckPasswordEvent implements PasswordEvent {
  const factory _CheckPasswordEvent(double value) = _$_CheckPasswordEvent;

  double get value;
  @JsonKey(ignore: true)
  _$CheckPasswordEventCopyWith<_CheckPasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewPasswordCopyWith<$Res> {
  factory _$NewPasswordCopyWith(
          _NewPassword value, $Res Function(_NewPassword) then) =
      __$NewPasswordCopyWithImpl<$Res>;
  $Res call({String newPassword});
}

/// @nodoc
class __$NewPasswordCopyWithImpl<$Res> extends _$PasswordEventCopyWithImpl<$Res>
    implements _$NewPasswordCopyWith<$Res> {
  __$NewPasswordCopyWithImpl(
      _NewPassword _value, $Res Function(_NewPassword) _then)
      : super(_value, (v) => _then(v as _NewPassword));

  @override
  _NewPassword get _value => super._value as _NewPassword;

  @override
  $Res call({
    Object? newPassword = freezed,
  }) {
    return _then(_NewPassword(
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPassword implements _NewPassword {
  const _$_NewPassword({required this.newPassword});

  @override
  final String newPassword;

  @override
  String toString() {
    return 'PasswordEvent.newPassword(newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewPassword &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$NewPasswordCopyWith<_NewPassword> get copyWith =>
      __$NewPasswordCopyWithImpl<_NewPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) checkPasswordEvent,
    required TResult Function(String newPassword) newPassword,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(double strength) updateStrengthValue,
    required TResult Function() reset,
  }) {
    return newPassword(this.newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
  }) {
    return newPassword?.call(this.newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (newPassword != null) {
      return newPassword(this.newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPasswordEvent value) checkPasswordEvent,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_UpdateStrengthValue value) updateStrengthValue,
    required TResult Function(_Reset value) reset,
  }) {
    return newPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
  }) {
    return newPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (newPassword != null) {
      return newPassword(this);
    }
    return orElse();
  }
}

abstract class _NewPassword implements PasswordEvent {
  const factory _NewPassword({required String newPassword}) = _$_NewPassword;

  String get newPassword;
  @JsonKey(ignore: true)
  _$NewPasswordCopyWith<_NewPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmPasswordCopyWith<$Res> {
  factory _$ConfirmPasswordCopyWith(
          _ConfirmPassword value, $Res Function(_ConfirmPassword) then) =
      __$ConfirmPasswordCopyWithImpl<$Res>;
  $Res call({String confirmPassword});
}

/// @nodoc
class __$ConfirmPasswordCopyWithImpl<$Res>
    extends _$PasswordEventCopyWithImpl<$Res>
    implements _$ConfirmPasswordCopyWith<$Res> {
  __$ConfirmPasswordCopyWithImpl(
      _ConfirmPassword _value, $Res Function(_ConfirmPassword) _then)
      : super(_value, (v) => _then(v as _ConfirmPassword));

  @override
  _ConfirmPassword get _value => super._value as _ConfirmPassword;

  @override
  $Res call({
    Object? confirmPassword = freezed,
  }) {
    return _then(_ConfirmPassword(
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmPassword implements _ConfirmPassword {
  const _$_ConfirmPassword({required this.confirmPassword});

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'PasswordEvent.confirmPassword(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmPassword &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$ConfirmPasswordCopyWith<_ConfirmPassword> get copyWith =>
      __$ConfirmPasswordCopyWithImpl<_ConfirmPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) checkPasswordEvent,
    required TResult Function(String newPassword) newPassword,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(double strength) updateStrengthValue,
    required TResult Function() reset,
  }) {
    return confirmPassword(this.confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
  }) {
    return confirmPassword?.call(this.confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (confirmPassword != null) {
      return confirmPassword(this.confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPasswordEvent value) checkPasswordEvent,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_UpdateStrengthValue value) updateStrengthValue,
    required TResult Function(_Reset value) reset,
  }) {
    return confirmPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
  }) {
    return confirmPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (confirmPassword != null) {
      return confirmPassword(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPassword implements PasswordEvent {
  const factory _ConfirmPassword({required String confirmPassword}) =
      _$_ConfirmPassword;

  String get confirmPassword;
  @JsonKey(ignore: true)
  _$ConfirmPasswordCopyWith<_ConfirmPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateStrengthValueCopyWith<$Res> {
  factory _$UpdateStrengthValueCopyWith(_UpdateStrengthValue value,
          $Res Function(_UpdateStrengthValue) then) =
      __$UpdateStrengthValueCopyWithImpl<$Res>;
  $Res call({double strength});
}

/// @nodoc
class __$UpdateStrengthValueCopyWithImpl<$Res>
    extends _$PasswordEventCopyWithImpl<$Res>
    implements _$UpdateStrengthValueCopyWith<$Res> {
  __$UpdateStrengthValueCopyWithImpl(
      _UpdateStrengthValue _value, $Res Function(_UpdateStrengthValue) _then)
      : super(_value, (v) => _then(v as _UpdateStrengthValue));

  @override
  _UpdateStrengthValue get _value => super._value as _UpdateStrengthValue;

  @override
  $Res call({
    Object? strength = freezed,
  }) {
    return _then(_UpdateStrengthValue(
      strength == freezed
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_UpdateStrengthValue implements _UpdateStrengthValue {
  const _$_UpdateStrengthValue(this.strength);

  @override
  final double strength;

  @override
  String toString() {
    return 'PasswordEvent.updateStrengthValue(strength: $strength)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateStrengthValue &&
            const DeepCollectionEquality().equals(other.strength, strength));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(strength));

  @JsonKey(ignore: true)
  @override
  _$UpdateStrengthValueCopyWith<_UpdateStrengthValue> get copyWith =>
      __$UpdateStrengthValueCopyWithImpl<_UpdateStrengthValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) checkPasswordEvent,
    required TResult Function(String newPassword) newPassword,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(double strength) updateStrengthValue,
    required TResult Function() reset,
  }) {
    return updateStrengthValue(strength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
  }) {
    return updateStrengthValue?.call(strength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (updateStrengthValue != null) {
      return updateStrengthValue(strength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPasswordEvent value) checkPasswordEvent,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_UpdateStrengthValue value) updateStrengthValue,
    required TResult Function(_Reset value) reset,
  }) {
    return updateStrengthValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
  }) {
    return updateStrengthValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (updateStrengthValue != null) {
      return updateStrengthValue(this);
    }
    return orElse();
  }
}

abstract class _UpdateStrengthValue implements PasswordEvent {
  const factory _UpdateStrengthValue(double strength) = _$_UpdateStrengthValue;

  double get strength;
  @JsonKey(ignore: true)
  _$UpdateStrengthValueCopyWith<_UpdateStrengthValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResetCopyWith<$Res> {
  factory _$ResetCopyWith(_Reset value, $Res Function(_Reset) then) =
      __$ResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResetCopyWithImpl<$Res> extends _$PasswordEventCopyWithImpl<$Res>
    implements _$ResetCopyWith<$Res> {
  __$ResetCopyWithImpl(_Reset _value, $Res Function(_Reset) _then)
      : super(_value, (v) => _then(v as _Reset));

  @override
  _Reset get _value => super._value as _Reset;
}

/// @nodoc

class _$_Reset implements _Reset {
  const _$_Reset();

  @override
  String toString() {
    return 'PasswordEvent.reset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) checkPasswordEvent,
    required TResult Function(String newPassword) newPassword,
    required TResult Function(String confirmPassword) confirmPassword,
    required TResult Function(double strength) updateStrengthValue,
    required TResult Function() reset,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double value)? checkPasswordEvent,
    TResult Function(String newPassword)? newPassword,
    TResult Function(String confirmPassword)? confirmPassword,
    TResult Function(double strength)? updateStrengthValue,
    TResult Function()? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckPasswordEvent value) checkPasswordEvent,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_ConfirmPassword value) confirmPassword,
    required TResult Function(_UpdateStrengthValue value) updateStrengthValue,
    required TResult Function(_Reset value) reset,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckPasswordEvent value)? checkPasswordEvent,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_ConfirmPassword value)? confirmPassword,
    TResult Function(_UpdateStrengthValue value)? updateStrengthValue,
    TResult Function(_Reset value)? reset,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements PasswordEvent {
  const factory _Reset() = _$_Reset;
}

/// @nodoc
class _$PasswordStateTearOff {
  const _$PasswordStateTearOff();

  _PasswordState call(
      {required String displayText,
      required double strength,
      required String newPassword,
      required String confirmPassword}) {
    return _PasswordState(
      displayText: displayText,
      strength: strength,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
    );
  }
}

/// @nodoc
const $PasswordState = _$PasswordStateTearOff();

/// @nodoc
mixin _$PasswordState {
  String get displayText => throw _privateConstructorUsedError;
  double get strength => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordStateCopyWith<PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordStateCopyWith<$Res> {
  factory $PasswordStateCopyWith(
          PasswordState value, $Res Function(PasswordState) then) =
      _$PasswordStateCopyWithImpl<$Res>;
  $Res call(
      {String displayText,
      double strength,
      String newPassword,
      String confirmPassword});
}

/// @nodoc
class _$PasswordStateCopyWithImpl<$Res>
    implements $PasswordStateCopyWith<$Res> {
  _$PasswordStateCopyWithImpl(this._value, this._then);

  final PasswordState _value;
  // ignore: unused_field
  final $Res Function(PasswordState) _then;

  @override
  $Res call({
    Object? displayText = freezed,
    Object? strength = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      displayText: displayText == freezed
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String,
      strength: strength == freezed
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PasswordStateCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$PasswordStateCopyWith(
          _PasswordState value, $Res Function(_PasswordState) then) =
      __$PasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String displayText,
      double strength,
      String newPassword,
      String confirmPassword});
}

/// @nodoc
class __$PasswordStateCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res>
    implements _$PasswordStateCopyWith<$Res> {
  __$PasswordStateCopyWithImpl(
      _PasswordState _value, $Res Function(_PasswordState) _then)
      : super(_value, (v) => _then(v as _PasswordState));

  @override
  _PasswordState get _value => super._value as _PasswordState;

  @override
  $Res call({
    Object? displayText = freezed,
    Object? strength = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_PasswordState(
      displayText: displayText == freezed
          ? _value.displayText
          : displayText // ignore: cast_nullable_to_non_nullable
              as String,
      strength: strength == freezed
          ? _value.strength
          : strength // ignore: cast_nullable_to_non_nullable
              as double,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordState implements _PasswordState {
  const _$_PasswordState(
      {required this.displayText,
      required this.strength,
      required this.newPassword,
      required this.confirmPassword});

  @override
  final String displayText;
  @override
  final double strength;
  @override
  final String newPassword;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'PasswordState(displayText: $displayText, strength: $strength, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordState &&
            const DeepCollectionEquality()
                .equals(other.displayText, displayText) &&
            const DeepCollectionEquality().equals(other.strength, strength) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(displayText),
      const DeepCollectionEquality().hash(strength),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$PasswordStateCopyWith<_PasswordState> get copyWith =>
      __$PasswordStateCopyWithImpl<_PasswordState>(this, _$identity);
}

abstract class _PasswordState implements PasswordState {
  const factory _PasswordState(
      {required String displayText,
      required double strength,
      required String newPassword,
      required String confirmPassword}) = _$_PasswordState;

  @override
  String get displayText;
  @override
  double get strength;
  @override
  String get newPassword;
  @override
  String get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$PasswordStateCopyWith<_PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
