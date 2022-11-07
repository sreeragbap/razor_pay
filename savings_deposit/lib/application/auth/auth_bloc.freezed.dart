// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _EmployeePageEvent employeePageEvent() {
    return const _EmployeePageEvent();
  }

  _CustomerPageEvent customerPageEvent() {
    return const _CustomerPageEvent();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() employeePageEvent,
    required TResult Function() customerPageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeePageEvent,
    TResult Function()? customerPageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeePageEvent,
    TResult Function()? customerPageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeePageEvent value) employeePageEvent,
    required TResult Function(_CustomerPageEvent value) customerPageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmployeePageEvent value)? employeePageEvent,
    TResult Function(_CustomerPageEvent value)? customerPageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeePageEvent value)? employeePageEvent,
    TResult Function(_CustomerPageEvent value)? customerPageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$EmployeePageEventCopyWith<$Res> {
  factory _$EmployeePageEventCopyWith(
          _EmployeePageEvent value, $Res Function(_EmployeePageEvent) then) =
      __$EmployeePageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmployeePageEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$EmployeePageEventCopyWith<$Res> {
  __$EmployeePageEventCopyWithImpl(
      _EmployeePageEvent _value, $Res Function(_EmployeePageEvent) _then)
      : super(_value, (v) => _then(v as _EmployeePageEvent));

  @override
  _EmployeePageEvent get _value => super._value as _EmployeePageEvent;
}

/// @nodoc

class _$_EmployeePageEvent implements _EmployeePageEvent {
  const _$_EmployeePageEvent();

  @override
  String toString() {
    return 'AuthEvent.employeePageEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmployeePageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() employeePageEvent,
    required TResult Function() customerPageEvent,
  }) {
    return employeePageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeePageEvent,
    TResult Function()? customerPageEvent,
  }) {
    return employeePageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeePageEvent,
    TResult Function()? customerPageEvent,
    required TResult orElse(),
  }) {
    if (employeePageEvent != null) {
      return employeePageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeePageEvent value) employeePageEvent,
    required TResult Function(_CustomerPageEvent value) customerPageEvent,
  }) {
    return employeePageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmployeePageEvent value)? employeePageEvent,
    TResult Function(_CustomerPageEvent value)? customerPageEvent,
  }) {
    return employeePageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeePageEvent value)? employeePageEvent,
    TResult Function(_CustomerPageEvent value)? customerPageEvent,
    required TResult orElse(),
  }) {
    if (employeePageEvent != null) {
      return employeePageEvent(this);
    }
    return orElse();
  }
}

abstract class _EmployeePageEvent implements AuthEvent {
  const factory _EmployeePageEvent() = _$_EmployeePageEvent;
}

/// @nodoc
abstract class _$CustomerPageEventCopyWith<$Res> {
  factory _$CustomerPageEventCopyWith(
          _CustomerPageEvent value, $Res Function(_CustomerPageEvent) then) =
      __$CustomerPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$CustomerPageEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$CustomerPageEventCopyWith<$Res> {
  __$CustomerPageEventCopyWithImpl(
      _CustomerPageEvent _value, $Res Function(_CustomerPageEvent) _then)
      : super(_value, (v) => _then(v as _CustomerPageEvent));

  @override
  _CustomerPageEvent get _value => super._value as _CustomerPageEvent;
}

/// @nodoc

class _$_CustomerPageEvent implements _CustomerPageEvent {
  const _$_CustomerPageEvent();

  @override
  String toString() {
    return 'AuthEvent.customerPageEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _CustomerPageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() employeePageEvent,
    required TResult Function() customerPageEvent,
  }) {
    return customerPageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeePageEvent,
    TResult Function()? customerPageEvent,
  }) {
    return customerPageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeePageEvent,
    TResult Function()? customerPageEvent,
    required TResult orElse(),
  }) {
    if (customerPageEvent != null) {
      return customerPageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeePageEvent value) employeePageEvent,
    required TResult Function(_CustomerPageEvent value) customerPageEvent,
  }) {
    return customerPageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmployeePageEvent value)? employeePageEvent,
    TResult Function(_CustomerPageEvent value)? customerPageEvent,
  }) {
    return customerPageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeePageEvent value)? employeePageEvent,
    TResult Function(_CustomerPageEvent value)? customerPageEvent,
    required TResult orElse(),
  }) {
    if (customerPageEvent != null) {
      return customerPageEvent(this);
    }
    return orElse();
  }
}

abstract class _CustomerPageEvent implements AuthEvent {
  const factory _CustomerPageEvent() = _$_CustomerPageEvent;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  EmployeePageState employeePageState() {
    return const EmployeePageState();
  }

  CustomerPageState customerPageState() {
    return const CustomerPageState();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() employeePageState,
    required TResult Function() customerPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeePageState,
    TResult Function()? customerPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeePageState,
    TResult Function()? customerPageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeePageState value) employeePageState,
    required TResult Function(CustomerPageState value) customerPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeePageState value)? employeePageState,
    TResult Function(CustomerPageState value)? customerPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeePageState value)? employeePageState,
    TResult Function(CustomerPageState value)? customerPageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $EmployeePageStateCopyWith<$Res> {
  factory $EmployeePageStateCopyWith(
          EmployeePageState value, $Res Function(EmployeePageState) then) =
      _$EmployeePageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployeePageStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $EmployeePageStateCopyWith<$Res> {
  _$EmployeePageStateCopyWithImpl(
      EmployeePageState _value, $Res Function(EmployeePageState) _then)
      : super(_value, (v) => _then(v as EmployeePageState));

  @override
  EmployeePageState get _value => super._value as EmployeePageState;
}

/// @nodoc

class _$EmployeePageState implements EmployeePageState {
  const _$EmployeePageState();

  @override
  String toString() {
    return 'AuthState.employeePageState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is EmployeePageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() employeePageState,
    required TResult Function() customerPageState,
  }) {
    return employeePageState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeePageState,
    TResult Function()? customerPageState,
  }) {
    return employeePageState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeePageState,
    TResult Function()? customerPageState,
    required TResult orElse(),
  }) {
    if (employeePageState != null) {
      return employeePageState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeePageState value) employeePageState,
    required TResult Function(CustomerPageState value) customerPageState,
  }) {
    return employeePageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeePageState value)? employeePageState,
    TResult Function(CustomerPageState value)? customerPageState,
  }) {
    return employeePageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeePageState value)? employeePageState,
    TResult Function(CustomerPageState value)? customerPageState,
    required TResult orElse(),
  }) {
    if (employeePageState != null) {
      return employeePageState(this);
    }
    return orElse();
  }
}

abstract class EmployeePageState implements AuthState {
  const factory EmployeePageState() = _$EmployeePageState;
}

/// @nodoc
abstract class $CustomerPageStateCopyWith<$Res> {
  factory $CustomerPageStateCopyWith(
          CustomerPageState value, $Res Function(CustomerPageState) then) =
      _$CustomerPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CustomerPageStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $CustomerPageStateCopyWith<$Res> {
  _$CustomerPageStateCopyWithImpl(
      CustomerPageState _value, $Res Function(CustomerPageState) _then)
      : super(_value, (v) => _then(v as CustomerPageState));

  @override
  CustomerPageState get _value => super._value as CustomerPageState;
}

/// @nodoc

class _$CustomerPageState implements CustomerPageState {
  const _$CustomerPageState();

  @override
  String toString() {
    return 'AuthState.customerPageState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CustomerPageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() employeePageState,
    required TResult Function() customerPageState,
  }) {
    return customerPageState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeePageState,
    TResult Function()? customerPageState,
  }) {
    return customerPageState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeePageState,
    TResult Function()? customerPageState,
    required TResult orElse(),
  }) {
    if (customerPageState != null) {
      return customerPageState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeePageState value) employeePageState,
    required TResult Function(CustomerPageState value) customerPageState,
  }) {
    return customerPageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeePageState value)? employeePageState,
    TResult Function(CustomerPageState value)? customerPageState,
  }) {
    return customerPageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeePageState value)? employeePageState,
    TResult Function(CustomerPageState value)? customerPageState,
    required TResult orElse(),
  }) {
    if (customerPageState != null) {
      return customerPageState(this);
    }
    return orElse();
  }
}

abstract class CustomerPageState implements AuthState {
  const factory CustomerPageState() = _$CustomerPageState;
}
