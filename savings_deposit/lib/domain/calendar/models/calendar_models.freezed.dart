// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CalendarModels _$CalendarModelsFromJson(Map<String, dynamic> json) {
  return _CalendarModels.fromJson(json);
}

/// @nodoc
class _$CalendarModelsTearOff {
  const _$CalendarModelsTearOff();

  _CalendarModels call(
      {required String notedescription,
      required DateTime notedate,
      required int noteid,
      required int employeeId}) {
    return _CalendarModels(
      notedescription: notedescription,
      notedate: notedate,
      noteid: noteid,
      employeeId: employeeId,
    );
  }

  CalendarModels fromJson(Map<String, Object?> json) {
    return CalendarModels.fromJson(json);
  }
}

/// @nodoc
const $CalendarModels = _$CalendarModelsTearOff();

/// @nodoc
mixin _$CalendarModels {
  String get notedescription => throw _privateConstructorUsedError;
  DateTime get notedate => throw _privateConstructorUsedError;
  int get noteid => throw _privateConstructorUsedError;
  int get employeeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CalendarModelsCopyWith<CalendarModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarModelsCopyWith<$Res> {
  factory $CalendarModelsCopyWith(
          CalendarModels value, $Res Function(CalendarModels) then) =
      _$CalendarModelsCopyWithImpl<$Res>;
  $Res call(
      {String notedescription, DateTime notedate, int noteid, int employeeId});
}

/// @nodoc
class _$CalendarModelsCopyWithImpl<$Res>
    implements $CalendarModelsCopyWith<$Res> {
  _$CalendarModelsCopyWithImpl(this._value, this._then);

  final CalendarModels _value;
  // ignore: unused_field
  final $Res Function(CalendarModels) _then;

  @override
  $Res call({
    Object? notedescription = freezed,
    Object? notedate = freezed,
    Object? noteid = freezed,
    Object? employeeId = freezed,
  }) {
    return _then(_value.copyWith(
      notedescription: notedescription == freezed
          ? _value.notedescription
          : notedescription // ignore: cast_nullable_to_non_nullable
              as String,
      notedate: notedate == freezed
          ? _value.notedate
          : notedate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      noteid: noteid == freezed
          ? _value.noteid
          : noteid // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CalendarModelsCopyWith<$Res>
    implements $CalendarModelsCopyWith<$Res> {
  factory _$CalendarModelsCopyWith(
          _CalendarModels value, $Res Function(_CalendarModels) then) =
      __$CalendarModelsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String notedescription, DateTime notedate, int noteid, int employeeId});
}

/// @nodoc
class __$CalendarModelsCopyWithImpl<$Res>
    extends _$CalendarModelsCopyWithImpl<$Res>
    implements _$CalendarModelsCopyWith<$Res> {
  __$CalendarModelsCopyWithImpl(
      _CalendarModels _value, $Res Function(_CalendarModels) _then)
      : super(_value, (v) => _then(v as _CalendarModels));

  @override
  _CalendarModels get _value => super._value as _CalendarModels;

  @override
  $Res call({
    Object? notedescription = freezed,
    Object? notedate = freezed,
    Object? noteid = freezed,
    Object? employeeId = freezed,
  }) {
    return _then(_CalendarModels(
      notedescription: notedescription == freezed
          ? _value.notedescription
          : notedescription // ignore: cast_nullable_to_non_nullable
              as String,
      notedate: notedate == freezed
          ? _value.notedate
          : notedate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      noteid: noteid == freezed
          ? _value.noteid
          : noteid // ignore: cast_nullable_to_non_nullable
              as int,
      employeeId: employeeId == freezed
          ? _value.employeeId
          : employeeId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CalendarModels implements _CalendarModels {
  const _$_CalendarModels(
      {required this.notedescription,
      required this.notedate,
      required this.noteid,
      required this.employeeId});

  factory _$_CalendarModels.fromJson(Map<String, dynamic> json) =>
      _$$_CalendarModelsFromJson(json);

  @override
  final String notedescription;
  @override
  final DateTime notedate;
  @override
  final int noteid;
  @override
  final int employeeId;

  @override
  String toString() {
    return 'CalendarModels(notedescription: $notedescription, notedate: $notedate, noteid: $noteid, employeeId: $employeeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalendarModels &&
            const DeepCollectionEquality()
                .equals(other.notedescription, notedescription) &&
            const DeepCollectionEquality().equals(other.notedate, notedate) &&
            const DeepCollectionEquality().equals(other.noteid, noteid) &&
            const DeepCollectionEquality()
                .equals(other.employeeId, employeeId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(notedescription),
      const DeepCollectionEquality().hash(notedate),
      const DeepCollectionEquality().hash(noteid),
      const DeepCollectionEquality().hash(employeeId));

  @JsonKey(ignore: true)
  @override
  _$CalendarModelsCopyWith<_CalendarModels> get copyWith =>
      __$CalendarModelsCopyWithImpl<_CalendarModels>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CalendarModelsToJson(this);
  }
}

abstract class _CalendarModels implements CalendarModels {
  const factory _CalendarModels(
      {required String notedescription,
      required DateTime notedate,
      required int noteid,
      required int employeeId}) = _$_CalendarModels;

  factory _CalendarModels.fromJson(Map<String, dynamic> json) =
      _$_CalendarModels.fromJson;

  @override
  String get notedescription;
  @override
  DateTime get notedate;
  @override
  int get noteid;
  @override
  int get employeeId;
  @override
  @JsonKey(ignore: true)
  _$CalendarModelsCopyWith<_CalendarModels> get copyWith =>
      throw _privateConstructorUsedError;
}
