// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SuccessTearOff {
  const _$SuccessTearOff();

  _HadListOfModels hadListOfModels(List<CalendarModels> calendarModels) {
    return _HadListOfModels(
      calendarModels,
    );
  }

  _NoData noData(String status) {
    return _NoData(
      status,
    );
  }
}

/// @nodoc
const $Success = _$SuccessTearOff();

/// @nodoc
mixin _$Success {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CalendarModels> calendarModels)
        hadListOfModels,
    required TResult Function(String status) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CalendarModels> calendarModels)? hadListOfModels,
    TResult Function(String status)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CalendarModels> calendarModels)? hadListOfModels,
    TResult Function(String status)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HadListOfModels value) hadListOfModels,
    required TResult Function(_NoData value) noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HadListOfModels value)? hadListOfModels,
    TResult Function(_NoData value)? noData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HadListOfModels value)? hadListOfModels,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res> implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._value, this._then);

  final Success _value;
  // ignore: unused_field
  final $Res Function(Success) _then;
}

/// @nodoc
abstract class _$HadListOfModelsCopyWith<$Res> {
  factory _$HadListOfModelsCopyWith(
          _HadListOfModels value, $Res Function(_HadListOfModels) then) =
      __$HadListOfModelsCopyWithImpl<$Res>;
  $Res call({List<CalendarModels> calendarModels});
}

/// @nodoc
class __$HadListOfModelsCopyWithImpl<$Res> extends _$SuccessCopyWithImpl<$Res>
    implements _$HadListOfModelsCopyWith<$Res> {
  __$HadListOfModelsCopyWithImpl(
      _HadListOfModels _value, $Res Function(_HadListOfModels) _then)
      : super(_value, (v) => _then(v as _HadListOfModels));

  @override
  _HadListOfModels get _value => super._value as _HadListOfModels;

  @override
  $Res call({
    Object? calendarModels = freezed,
  }) {
    return _then(_HadListOfModels(
      calendarModels == freezed
          ? _value.calendarModels
          : calendarModels // ignore: cast_nullable_to_non_nullable
              as List<CalendarModels>,
    ));
  }
}

/// @nodoc

class _$_HadListOfModels implements _HadListOfModels {
  const _$_HadListOfModels(this.calendarModels);

  @override
  final List<CalendarModels> calendarModels;

  @override
  String toString() {
    return 'Success.hadListOfModels(calendarModels: $calendarModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HadListOfModels &&
            const DeepCollectionEquality()
                .equals(other.calendarModels, calendarModels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(calendarModels));

  @JsonKey(ignore: true)
  @override
  _$HadListOfModelsCopyWith<_HadListOfModels> get copyWith =>
      __$HadListOfModelsCopyWithImpl<_HadListOfModels>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CalendarModels> calendarModels)
        hadListOfModels,
    required TResult Function(String status) noData,
  }) {
    return hadListOfModels(calendarModels);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CalendarModels> calendarModels)? hadListOfModels,
    TResult Function(String status)? noData,
  }) {
    return hadListOfModels?.call(calendarModels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CalendarModels> calendarModels)? hadListOfModels,
    TResult Function(String status)? noData,
    required TResult orElse(),
  }) {
    if (hadListOfModels != null) {
      return hadListOfModels(calendarModels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HadListOfModels value) hadListOfModels,
    required TResult Function(_NoData value) noData,
  }) {
    return hadListOfModels(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HadListOfModels value)? hadListOfModels,
    TResult Function(_NoData value)? noData,
  }) {
    return hadListOfModels?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HadListOfModels value)? hadListOfModels,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) {
    if (hadListOfModels != null) {
      return hadListOfModels(this);
    }
    return orElse();
  }
}

abstract class _HadListOfModels implements Success {
  const factory _HadListOfModels(List<CalendarModels> calendarModels) =
      _$_HadListOfModels;

  List<CalendarModels> get calendarModels;
  @JsonKey(ignore: true)
  _$HadListOfModelsCopyWith<_HadListOfModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoDataCopyWith<$Res> {
  factory _$NoDataCopyWith(_NoData value, $Res Function(_NoData) then) =
      __$NoDataCopyWithImpl<$Res>;
  $Res call({String status});
}

/// @nodoc
class __$NoDataCopyWithImpl<$Res> extends _$SuccessCopyWithImpl<$Res>
    implements _$NoDataCopyWith<$Res> {
  __$NoDataCopyWithImpl(_NoData _value, $Res Function(_NoData) _then)
      : super(_value, (v) => _then(v as _NoData));

  @override
  _NoData get _value => super._value as _NoData;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_NoData(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoData implements _NoData {
  const _$_NoData(this.status);

  @override
  final String status;

  @override
  String toString() {
    return 'Success.noData(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoData &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$NoDataCopyWith<_NoData> get copyWith =>
      __$NoDataCopyWithImpl<_NoData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CalendarModels> calendarModels)
        hadListOfModels,
    required TResult Function(String status) noData,
  }) {
    return noData(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<CalendarModels> calendarModels)? hadListOfModels,
    TResult Function(String status)? noData,
  }) {
    return noData?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CalendarModels> calendarModels)? hadListOfModels,
    TResult Function(String status)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HadListOfModels value) hadListOfModels,
    required TResult Function(_NoData value) noData,
  }) {
    return noData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HadListOfModels value)? hadListOfModels,
    TResult Function(_NoData value)? noData,
  }) {
    return noData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HadListOfModels value)? hadListOfModels,
    TResult Function(_NoData value)? noData,
    required TResult orElse(),
  }) {
    if (noData != null) {
      return noData(this);
    }
    return orElse();
  }
}

abstract class _NoData implements Success {
  const factory _NoData(String status) = _$_NoData;

  String get status;
  @JsonKey(ignore: true)
  _$NoDataCopyWith<_NoData> get copyWith => throw _privateConstructorUsedError;
}
