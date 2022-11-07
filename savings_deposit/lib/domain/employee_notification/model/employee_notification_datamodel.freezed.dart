// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_notification_datamodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeNotificationModel _$EmployeeNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _EmployeeNotificationModel.fromJson(json);
}

/// @nodoc
class _$EmployeeNotificationModelTearOff {
  const _$EmployeeNotificationModelTearOff();

  _EmployeeNotificationModel call(
      {required String? userId,
      required int? alertId,
      required String? type,
      required String? subject,
      required String? date,
      required String? description,
      required String? image}) {
    return _EmployeeNotificationModel(
      userId: userId,
      alertId: alertId,
      type: type,
      subject: subject,
      date: date,
      description: description,
      image: image,
    );
  }

  EmployeeNotificationModel fromJson(Map<String, Object?> json) {
    return EmployeeNotificationModel.fromJson(json);
  }
}

/// @nodoc
const $EmployeeNotificationModel = _$EmployeeNotificationModelTearOff();

/// @nodoc
mixin _$EmployeeNotificationModel {
  String? get userId => throw _privateConstructorUsedError;
  int? get alertId => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeNotificationModelCopyWith<EmployeeNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeNotificationModelCopyWith<$Res> {
  factory $EmployeeNotificationModelCopyWith(EmployeeNotificationModel value,
          $Res Function(EmployeeNotificationModel) then) =
      _$EmployeeNotificationModelCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      int? alertId,
      String? type,
      String? subject,
      String? date,
      String? description,
      String? image});
}

/// @nodoc
class _$EmployeeNotificationModelCopyWithImpl<$Res>
    implements $EmployeeNotificationModelCopyWith<$Res> {
  _$EmployeeNotificationModelCopyWithImpl(this._value, this._then);

  final EmployeeNotificationModel _value;
  // ignore: unused_field
  final $Res Function(EmployeeNotificationModel) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? alertId = freezed,
    Object? type = freezed,
    Object? subject = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      alertId: alertId == freezed
          ? _value.alertId
          : alertId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EmployeeNotificationModelCopyWith<$Res>
    implements $EmployeeNotificationModelCopyWith<$Res> {
  factory _$EmployeeNotificationModelCopyWith(_EmployeeNotificationModel value,
          $Res Function(_EmployeeNotificationModel) then) =
      __$EmployeeNotificationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      int? alertId,
      String? type,
      String? subject,
      String? date,
      String? description,
      String? image});
}

/// @nodoc
class __$EmployeeNotificationModelCopyWithImpl<$Res>
    extends _$EmployeeNotificationModelCopyWithImpl<$Res>
    implements _$EmployeeNotificationModelCopyWith<$Res> {
  __$EmployeeNotificationModelCopyWithImpl(_EmployeeNotificationModel _value,
      $Res Function(_EmployeeNotificationModel) _then)
      : super(_value, (v) => _then(v as _EmployeeNotificationModel));

  @override
  _EmployeeNotificationModel get _value =>
      super._value as _EmployeeNotificationModel;

  @override
  $Res call({
    Object? userId = freezed,
    Object? alertId = freezed,
    Object? type = freezed,
    Object? subject = freezed,
    Object? date = freezed,
    Object? description = freezed,
    Object? image = freezed,
  }) {
    return _then(_EmployeeNotificationModel(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      alertId: alertId == freezed
          ? _value.alertId
          : alertId // ignore: cast_nullable_to_non_nullable
              as int?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmployeeNotificationModel implements _EmployeeNotificationModel {
  const _$_EmployeeNotificationModel(
      {required this.userId,
      required this.alertId,
      required this.type,
      required this.subject,
      required this.date,
      required this.description,
      required this.image});

  factory _$_EmployeeNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeNotificationModelFromJson(json);

  @override
  final String? userId;
  @override
  final int? alertId;
  @override
  final String? type;
  @override
  final String? subject;
  @override
  final String? date;
  @override
  final String? description;
  @override
  final String? image;

  @override
  String toString() {
    return 'EmployeeNotificationModel(userId: $userId, alertId: $alertId, type: $type, subject: $subject, date: $date, description: $description, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmployeeNotificationModel &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.alertId, alertId) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(alertId),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$EmployeeNotificationModelCopyWith<_EmployeeNotificationModel>
      get copyWith =>
          __$EmployeeNotificationModelCopyWithImpl<_EmployeeNotificationModel>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeNotificationModelToJson(this);
  }
}

abstract class _EmployeeNotificationModel implements EmployeeNotificationModel {
  const factory _EmployeeNotificationModel(
      {required String? userId,
      required int? alertId,
      required String? type,
      required String? subject,
      required String? date,
      required String? description,
      required String? image}) = _$_EmployeeNotificationModel;

  factory _EmployeeNotificationModel.fromJson(Map<String, dynamic> json) =
      _$_EmployeeNotificationModel.fromJson;

  @override
  String? get userId;
  @override
  int? get alertId;
  @override
  String? get type;
  @override
  String? get subject;
  @override
  String? get date;
  @override
  String? get description;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$EmployeeNotificationModelCopyWith<_EmployeeNotificationModel>
      get copyWith => throw _privateConstructorUsedError;
}
