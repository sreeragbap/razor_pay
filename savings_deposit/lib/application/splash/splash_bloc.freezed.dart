// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SplashStateTearOff {
  const _$SplashStateTearOff();

  _SplashState call(
      {required bool isloading,
      SplashModel? splashModel,
      required Option<Either<MainFailure, SplashModel>>
          splashpageFailureOrSuccess}) {
    return _SplashState(
      isloading: isloading,
      splashModel: splashModel,
      splashpageFailureOrSuccess: splashpageFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SplashState = _$SplashStateTearOff();

/// @nodoc
mixin _$SplashState {
  bool get isloading => throw _privateConstructorUsedError;
  SplashModel? get splashModel => throw _privateConstructorUsedError;
  Option<Either<MainFailure, SplashModel>> get splashpageFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashStateCopyWith<SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res>;
  $Res call(
      {bool isloading,
      SplashModel? splashModel,
      Option<Either<MainFailure, SplashModel>> splashpageFailureOrSuccess});

  $SplashModelCopyWith<$Res>? get splashModel;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res> implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  final SplashState _value;
  // ignore: unused_field
  final $Res Function(SplashState) _then;

  @override
  $Res call({
    Object? isloading = freezed,
    Object? splashModel = freezed,
    Object? splashpageFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      splashModel: splashModel == freezed
          ? _value.splashModel
          : splashModel // ignore: cast_nullable_to_non_nullable
              as SplashModel?,
      splashpageFailureOrSuccess: splashpageFailureOrSuccess == freezed
          ? _value.splashpageFailureOrSuccess
          : splashpageFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SplashModel>>,
    ));
  }

  @override
  $SplashModelCopyWith<$Res>? get splashModel {
    if (_value.splashModel == null) {
      return null;
    }

    return $SplashModelCopyWith<$Res>(_value.splashModel!, (value) {
      return _then(_value.copyWith(splashModel: value));
    });
  }
}

/// @nodoc
abstract class _$SplashStateCopyWith<$Res>
    implements $SplashStateCopyWith<$Res> {
  factory _$SplashStateCopyWith(
          _SplashState value, $Res Function(_SplashState) then) =
      __$SplashStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isloading,
      SplashModel? splashModel,
      Option<Either<MainFailure, SplashModel>> splashpageFailureOrSuccess});

  @override
  $SplashModelCopyWith<$Res>? get splashModel;
}

/// @nodoc
class __$SplashStateCopyWithImpl<$Res> extends _$SplashStateCopyWithImpl<$Res>
    implements _$SplashStateCopyWith<$Res> {
  __$SplashStateCopyWithImpl(
      _SplashState _value, $Res Function(_SplashState) _then)
      : super(_value, (v) => _then(v as _SplashState));

  @override
  _SplashState get _value => super._value as _SplashState;

  @override
  $Res call({
    Object? isloading = freezed,
    Object? splashModel = freezed,
    Object? splashpageFailureOrSuccess = freezed,
  }) {
    return _then(_SplashState(
      isloading: isloading == freezed
          ? _value.isloading
          : isloading // ignore: cast_nullable_to_non_nullable
              as bool,
      splashModel: splashModel == freezed
          ? _value.splashModel
          : splashModel // ignore: cast_nullable_to_non_nullable
              as SplashModel?,
      splashpageFailureOrSuccess: splashpageFailureOrSuccess == freezed
          ? _value.splashpageFailureOrSuccess
          : splashpageFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, SplashModel>>,
    ));
  }
}

/// @nodoc

class _$_SplashState implements _SplashState {
  const _$_SplashState(
      {required this.isloading,
      this.splashModel,
      required this.splashpageFailureOrSuccess});

  @override
  final bool isloading;
  @override
  final SplashModel? splashModel;
  @override
  final Option<Either<MainFailure, SplashModel>> splashpageFailureOrSuccess;

  @override
  String toString() {
    return 'SplashState(isloading: $isloading, splashModel: $splashModel, splashpageFailureOrSuccess: $splashpageFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SplashState &&
            const DeepCollectionEquality().equals(other.isloading, isloading) &&
            const DeepCollectionEquality()
                .equals(other.splashModel, splashModel) &&
            const DeepCollectionEquality().equals(
                other.splashpageFailureOrSuccess, splashpageFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isloading),
      const DeepCollectionEquality().hash(splashModel),
      const DeepCollectionEquality().hash(splashpageFailureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      __$SplashStateCopyWithImpl<_SplashState>(this, _$identity);
}

abstract class _SplashState implements SplashState {
  const factory _SplashState(
      {required bool isloading,
      SplashModel? splashModel,
      required Option<Either<MainFailure, SplashModel>>
          splashpageFailureOrSuccess}) = _$_SplashState;

  @override
  bool get isloading;
  @override
  SplashModel? get splashModel;
  @override
  Option<Either<MainFailure, SplashModel>> get splashpageFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SplashStateCopyWith<_SplashState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SplashEventTearOff {
  const _$SplashEventTearOff();

  _Splashinitialevent splashinitialevent(String applicationId) {
    return _Splashinitialevent(
      applicationId,
    );
  }
}

/// @nodoc
const $SplashEvent = _$SplashEventTearOff();

/// @nodoc
mixin _$SplashEvent {
  String get applicationId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String applicationId) splashinitialevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String applicationId)? splashinitialevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String applicationId)? splashinitialevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splashinitialevent value) splashinitialevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Splashinitialevent value)? splashinitialevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splashinitialevent value)? splashinitialevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashEventCopyWith<SplashEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res>;
  $Res call({String applicationId});
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res> implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  final SplashEvent _value;
  // ignore: unused_field
  final $Res Function(SplashEvent) _then;

  @override
  $Res call({
    Object? applicationId = freezed,
  }) {
    return _then(_value.copyWith(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SplashinitialeventCopyWith<$Res>
    implements $SplashEventCopyWith<$Res> {
  factory _$SplashinitialeventCopyWith(
          _Splashinitialevent value, $Res Function(_Splashinitialevent) then) =
      __$SplashinitialeventCopyWithImpl<$Res>;
  @override
  $Res call({String applicationId});
}

/// @nodoc
class __$SplashinitialeventCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res>
    implements _$SplashinitialeventCopyWith<$Res> {
  __$SplashinitialeventCopyWithImpl(
      _Splashinitialevent _value, $Res Function(_Splashinitialevent) _then)
      : super(_value, (v) => _then(v as _Splashinitialevent));

  @override
  _Splashinitialevent get _value => super._value as _Splashinitialevent;

  @override
  $Res call({
    Object? applicationId = freezed,
  }) {
    return _then(_Splashinitialevent(
      applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Splashinitialevent implements _Splashinitialevent {
  const _$_Splashinitialevent(this.applicationId);

  @override
  final String applicationId;

  @override
  String toString() {
    return 'SplashEvent.splashinitialevent(applicationId: $applicationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Splashinitialevent &&
            const DeepCollectionEquality()
                .equals(other.applicationId, applicationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(applicationId));

  @JsonKey(ignore: true)
  @override
  _$SplashinitialeventCopyWith<_Splashinitialevent> get copyWith =>
      __$SplashinitialeventCopyWithImpl<_Splashinitialevent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String applicationId) splashinitialevent,
  }) {
    return splashinitialevent(applicationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String applicationId)? splashinitialevent,
  }) {
    return splashinitialevent?.call(applicationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String applicationId)? splashinitialevent,
    required TResult orElse(),
  }) {
    if (splashinitialevent != null) {
      return splashinitialevent(applicationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Splashinitialevent value) splashinitialevent,
  }) {
    return splashinitialevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Splashinitialevent value)? splashinitialevent,
  }) {
    return splashinitialevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Splashinitialevent value)? splashinitialevent,
    required TResult orElse(),
  }) {
    if (splashinitialevent != null) {
      return splashinitialevent(this);
    }
    return orElse();
  }
}

abstract class _Splashinitialevent implements SplashEvent {
  const factory _Splashinitialevent(String applicationId) =
      _$_Splashinitialevent;

  @override
  String get applicationId;
  @override
  @JsonKey(ignore: true)
  _$SplashinitialeventCopyWith<_Splashinitialevent> get copyWith =>
      throw _privateConstructorUsedError;
}
