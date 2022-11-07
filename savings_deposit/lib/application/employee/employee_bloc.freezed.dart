// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmployeeEventTearOff {
  const _$EmployeeEventTearOff();

  _Started started() {
    return const _Started();
  }

  _IndexChanging indexChanging(int index) {
    return _IndexChanging(
      index,
    );
  }

  _RadioButttonGroupValueEvent radioButttonGroupValueEvent(
      int selectedRadioButton) {
    return _RadioButttonGroupValueEvent(
      selectedRadioButton,
    );
  }

  _SearchCustomer searchCustomer(
      String searchValue, String searchType, int currentPage) {
    return _SearchCustomer(
      searchValue,
      searchType,
      currentPage,
    );
  }

  _SearchCustomerLoading searchCustomerLoading(
      String searchValue, String searchType) {
    return _SearchCustomerLoading(
      searchValue,
      searchType,
    );
  }

  _GetCustomerwiseReports getCustomerwiseReports(
      {required int branchId, required int firmId}) {
    return _GetCustomerwiseReports(
      branchId: branchId,
      firmId: firmId,
    );
  }

  _GetBranchwiseReports getBranchwiseReports(
      {required int flag, required int firmId}) {
    return _GetBranchwiseReports(
      flag: flag,
      firmId: firmId,
    );
  }

  _bhverificationinitialEvent bhverificationinitialEvent() {
    return const _bhverificationinitialEvent();
  }

  _Getbhdeletedscheduledtranscationdetails
      getbhdeletedscheduledtranscationdetails() {
    return const _Getbhdeletedscheduledtranscationdetails();
  }

  _bhverificationApproveEvent bhverificationApproveEvent(
      {required String depositid,
      required int bhid,
      required int branchid,
      required String chequeno,
      required int firmid,
      required int moduleid,
      required DateTime chequecleardate}) {
    return _bhverificationApproveEvent(
      depositid: depositid,
      bhid: bhid,
      branchid: branchid,
      chequeno: chequeno,
      firmid: firmid,
      moduleid: moduleid,
      chequecleardate: chequecleardate,
    );
  }

  _bhverificationReturnEvent bhverificationReturnEvent(
      {required String depositid, required String chequeno}) {
    return _bhverificationReturnEvent(
      depositid: depositid,
      chequeno: chequeno,
    );
  }

  _bhverificationSortEvent bhverificationSortEvent() {
    return const _bhverificationSortEvent();
  }

  _bhverificationSortbhverificationpageEvent
      bhverificationSortbhverificationpageEvent() {
    return const _bhverificationSortbhverificationpageEvent();
  }

  _bhverifyDropdownListButtonEvent bhverifyDropdownListButtonEvent(
      {required dynamic value}) {
    return _bhverifyDropdownListButtonEvent(
      value: value,
    );
  }

  _GetBhBounceListdetails getBhBounceListdetails() {
    return const _GetBhBounceListdetails();
  }

  _BhBouncebuttonPressed bhBouncebuttonPressed(
      {required String chequeno,
      required String depositid,
      required String empid}) {
    return _BhBouncebuttonPressed(
      chequeno: chequeno,
      depositid: depositid,
      empid: empid,
    );
  }

  _DeleteScheduledTranscations deleteScheduledTranscations(
      {required int flag,
      required int rtId,
      required DateTime transactionDate,
      required String userType,
      required int bhId}) {
    return _DeleteScheduledTranscations(
      flag: flag,
      rtId: rtId,
      transactionDate: transactionDate,
      userType: userType,
      bhId: bhId,
    );
  }

  _DeleteScheduledAnyMonth deleteScheduledAnyMonth() {
    return const _DeleteScheduledAnyMonth();
  }

  _deleteScheduledTransactionAllMonth deleteScheduledTransactionAllMonth() {
    return const _deleteScheduledTransactionAllMonth();
  }

  _Getemployeenotifications getEmployeeNotifications(
      {required String employeeid}) {
    return _Getemployeenotifications(
      employeeid: employeeid,
    );
  }

  _RemoveEmployeeNotification removeEmployeeNotification(
      {required String userId, required int alertId}) {
    return _RemoveEmployeeNotification(
      userId: userId,
      alertId: alertId,
    );
  }

  _SaveLoginToken saveLoginToken({required String loginToken}) {
    return _SaveLoginToken(
      loginToken: loginToken,
    );
  }
}

/// @nodoc
const $EmployeeEvent = _$EmployeeEventTearOff();

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  final EmployeeEvent _value;
  // ignore: unused_field
  final $Res Function(EmployeeEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$EmployeeEventCopyWithImpl<$Res>
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
    return 'EmployeeEvent.started()';
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
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
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
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EmployeeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$IndexChangingCopyWith<$Res> {
  factory _$IndexChangingCopyWith(
          _IndexChanging value, $Res Function(_IndexChanging) then) =
      __$IndexChangingCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$IndexChangingCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$IndexChangingCopyWith<$Res> {
  __$IndexChangingCopyWithImpl(
      _IndexChanging _value, $Res Function(_IndexChanging) _then)
      : super(_value, (v) => _then(v as _IndexChanging));

  @override
  _IndexChanging get _value => super._value as _IndexChanging;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_IndexChanging(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_IndexChanging implements _IndexChanging {
  const _$_IndexChanging(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'EmployeeEvent.indexChanging(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IndexChanging &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$IndexChangingCopyWith<_IndexChanging> get copyWith =>
      __$IndexChangingCopyWithImpl<_IndexChanging>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return indexChanging(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return indexChanging?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (indexChanging != null) {
      return indexChanging(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return indexChanging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return indexChanging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (indexChanging != null) {
      return indexChanging(this);
    }
    return orElse();
  }
}

abstract class _IndexChanging implements EmployeeEvent {
  const factory _IndexChanging(int index) = _$_IndexChanging;

  int get index;
  @JsonKey(ignore: true)
  _$IndexChangingCopyWith<_IndexChanging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RadioButttonGroupValueEventCopyWith<$Res> {
  factory _$RadioButttonGroupValueEventCopyWith(
          _RadioButttonGroupValueEvent value,
          $Res Function(_RadioButttonGroupValueEvent) then) =
      __$RadioButttonGroupValueEventCopyWithImpl<$Res>;
  $Res call({int selectedRadioButton});
}

/// @nodoc
class __$RadioButttonGroupValueEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$RadioButttonGroupValueEventCopyWith<$Res> {
  __$RadioButttonGroupValueEventCopyWithImpl(
      _RadioButttonGroupValueEvent _value,
      $Res Function(_RadioButttonGroupValueEvent) _then)
      : super(_value, (v) => _then(v as _RadioButttonGroupValueEvent));

  @override
  _RadioButttonGroupValueEvent get _value =>
      super._value as _RadioButttonGroupValueEvent;

  @override
  $Res call({
    Object? selectedRadioButton = freezed,
  }) {
    return _then(_RadioButttonGroupValueEvent(
      selectedRadioButton == freezed
          ? _value.selectedRadioButton
          : selectedRadioButton // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RadioButttonGroupValueEvent implements _RadioButttonGroupValueEvent {
  const _$_RadioButttonGroupValueEvent(this.selectedRadioButton);

  @override
  final int selectedRadioButton;

  @override
  String toString() {
    return 'EmployeeEvent.radioButttonGroupValueEvent(selectedRadioButton: $selectedRadioButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RadioButttonGroupValueEvent &&
            const DeepCollectionEquality()
                .equals(other.selectedRadioButton, selectedRadioButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedRadioButton));

  @JsonKey(ignore: true)
  @override
  _$RadioButttonGroupValueEventCopyWith<_RadioButttonGroupValueEvent>
      get copyWith => __$RadioButttonGroupValueEventCopyWithImpl<
          _RadioButttonGroupValueEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return radioButttonGroupValueEvent(selectedRadioButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return radioButttonGroupValueEvent?.call(selectedRadioButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (radioButttonGroupValueEvent != null) {
      return radioButttonGroupValueEvent(selectedRadioButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return radioButttonGroupValueEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return radioButttonGroupValueEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (radioButttonGroupValueEvent != null) {
      return radioButttonGroupValueEvent(this);
    }
    return orElse();
  }
}

abstract class _RadioButttonGroupValueEvent implements EmployeeEvent {
  const factory _RadioButttonGroupValueEvent(int selectedRadioButton) =
      _$_RadioButttonGroupValueEvent;

  int get selectedRadioButton;
  @JsonKey(ignore: true)
  _$RadioButttonGroupValueEventCopyWith<_RadioButttonGroupValueEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchCustomerCopyWith<$Res> {
  factory _$SearchCustomerCopyWith(
          _SearchCustomer value, $Res Function(_SearchCustomer) then) =
      __$SearchCustomerCopyWithImpl<$Res>;
  $Res call({String searchValue, String searchType, int currentPage});
}

/// @nodoc
class __$SearchCustomerCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$SearchCustomerCopyWith<$Res> {
  __$SearchCustomerCopyWithImpl(
      _SearchCustomer _value, $Res Function(_SearchCustomer) _then)
      : super(_value, (v) => _then(v as _SearchCustomer));

  @override
  _SearchCustomer get _value => super._value as _SearchCustomer;

  @override
  $Res call({
    Object? searchValue = freezed,
    Object? searchType = freezed,
    Object? currentPage = freezed,
  }) {
    return _then(_SearchCustomer(
      searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      searchType == freezed
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SearchCustomer implements _SearchCustomer {
  const _$_SearchCustomer(this.searchValue, this.searchType, this.currentPage);

  @override
  final String searchValue;
  @override
  final String searchType;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'EmployeeEvent.searchCustomer(searchValue: $searchValue, searchType: $searchType, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchCustomer &&
            const DeepCollectionEquality()
                .equals(other.searchValue, searchValue) &&
            const DeepCollectionEquality()
                .equals(other.searchType, searchType) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchValue),
      const DeepCollectionEquality().hash(searchType),
      const DeepCollectionEquality().hash(currentPage));

  @JsonKey(ignore: true)
  @override
  _$SearchCustomerCopyWith<_SearchCustomer> get copyWith =>
      __$SearchCustomerCopyWithImpl<_SearchCustomer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return searchCustomer(searchValue, searchType, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return searchCustomer?.call(searchValue, searchType, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(searchValue, searchType, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return searchCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return searchCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (searchCustomer != null) {
      return searchCustomer(this);
    }
    return orElse();
  }
}

abstract class _SearchCustomer implements EmployeeEvent {
  const factory _SearchCustomer(
          String searchValue, String searchType, int currentPage) =
      _$_SearchCustomer;

  String get searchValue;
  String get searchType;
  int get currentPage;
  @JsonKey(ignore: true)
  _$SearchCustomerCopyWith<_SearchCustomer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchCustomerLoadingCopyWith<$Res> {
  factory _$SearchCustomerLoadingCopyWith(_SearchCustomerLoading value,
          $Res Function(_SearchCustomerLoading) then) =
      __$SearchCustomerLoadingCopyWithImpl<$Res>;
  $Res call({String searchValue, String searchType});
}

/// @nodoc
class __$SearchCustomerLoadingCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$SearchCustomerLoadingCopyWith<$Res> {
  __$SearchCustomerLoadingCopyWithImpl(_SearchCustomerLoading _value,
      $Res Function(_SearchCustomerLoading) _then)
      : super(_value, (v) => _then(v as _SearchCustomerLoading));

  @override
  _SearchCustomerLoading get _value => super._value as _SearchCustomerLoading;

  @override
  $Res call({
    Object? searchValue = freezed,
    Object? searchType = freezed,
  }) {
    return _then(_SearchCustomerLoading(
      searchValue == freezed
          ? _value.searchValue
          : searchValue // ignore: cast_nullable_to_non_nullable
              as String,
      searchType == freezed
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchCustomerLoading implements _SearchCustomerLoading {
  const _$_SearchCustomerLoading(this.searchValue, this.searchType);

  @override
  final String searchValue;
  @override
  final String searchType;

  @override
  String toString() {
    return 'EmployeeEvent.searchCustomerLoading(searchValue: $searchValue, searchType: $searchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchCustomerLoading &&
            const DeepCollectionEquality()
                .equals(other.searchValue, searchValue) &&
            const DeepCollectionEquality()
                .equals(other.searchType, searchType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchValue),
      const DeepCollectionEquality().hash(searchType));

  @JsonKey(ignore: true)
  @override
  _$SearchCustomerLoadingCopyWith<_SearchCustomerLoading> get copyWith =>
      __$SearchCustomerLoadingCopyWithImpl<_SearchCustomerLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return searchCustomerLoading(searchValue, searchType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return searchCustomerLoading?.call(searchValue, searchType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (searchCustomerLoading != null) {
      return searchCustomerLoading(searchValue, searchType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return searchCustomerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return searchCustomerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (searchCustomerLoading != null) {
      return searchCustomerLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchCustomerLoading implements EmployeeEvent {
  const factory _SearchCustomerLoading(String searchValue, String searchType) =
      _$_SearchCustomerLoading;

  String get searchValue;
  String get searchType;
  @JsonKey(ignore: true)
  _$SearchCustomerLoadingCopyWith<_SearchCustomerLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetCustomerwiseReportsCopyWith<$Res> {
  factory _$GetCustomerwiseReportsCopyWith(_GetCustomerwiseReports value,
          $Res Function(_GetCustomerwiseReports) then) =
      __$GetCustomerwiseReportsCopyWithImpl<$Res>;
  $Res call({int branchId, int firmId});
}

/// @nodoc
class __$GetCustomerwiseReportsCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$GetCustomerwiseReportsCopyWith<$Res> {
  __$GetCustomerwiseReportsCopyWithImpl(_GetCustomerwiseReports _value,
      $Res Function(_GetCustomerwiseReports) _then)
      : super(_value, (v) => _then(v as _GetCustomerwiseReports));

  @override
  _GetCustomerwiseReports get _value => super._value as _GetCustomerwiseReports;

  @override
  $Res call({
    Object? branchId = freezed,
    Object? firmId = freezed,
  }) {
    return _then(_GetCustomerwiseReports(
      branchId: branchId == freezed
          ? _value.branchId
          : branchId // ignore: cast_nullable_to_non_nullable
              as int,
      firmId: firmId == freezed
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCustomerwiseReports implements _GetCustomerwiseReports {
  const _$_GetCustomerwiseReports(
      {required this.branchId, required this.firmId});

  @override
  final int branchId;
  @override
  final int firmId;

  @override
  String toString() {
    return 'EmployeeEvent.getCustomerwiseReports(branchId: $branchId, firmId: $firmId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCustomerwiseReports &&
            const DeepCollectionEquality().equals(other.branchId, branchId) &&
            const DeepCollectionEquality().equals(other.firmId, firmId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(branchId),
      const DeepCollectionEquality().hash(firmId));

  @JsonKey(ignore: true)
  @override
  _$GetCustomerwiseReportsCopyWith<_GetCustomerwiseReports> get copyWith =>
      __$GetCustomerwiseReportsCopyWithImpl<_GetCustomerwiseReports>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return getCustomerwiseReports(branchId, firmId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return getCustomerwiseReports?.call(branchId, firmId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getCustomerwiseReports != null) {
      return getCustomerwiseReports(branchId, firmId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return getCustomerwiseReports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return getCustomerwiseReports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getCustomerwiseReports != null) {
      return getCustomerwiseReports(this);
    }
    return orElse();
  }
}

abstract class _GetCustomerwiseReports implements EmployeeEvent {
  const factory _GetCustomerwiseReports(
      {required int branchId, required int firmId}) = _$_GetCustomerwiseReports;

  int get branchId;
  int get firmId;
  @JsonKey(ignore: true)
  _$GetCustomerwiseReportsCopyWith<_GetCustomerwiseReports> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetBranchwiseReportsCopyWith<$Res> {
  factory _$GetBranchwiseReportsCopyWith(_GetBranchwiseReports value,
          $Res Function(_GetBranchwiseReports) then) =
      __$GetBranchwiseReportsCopyWithImpl<$Res>;
  $Res call({int flag, int firmId});
}

/// @nodoc
class __$GetBranchwiseReportsCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$GetBranchwiseReportsCopyWith<$Res> {
  __$GetBranchwiseReportsCopyWithImpl(
      _GetBranchwiseReports _value, $Res Function(_GetBranchwiseReports) _then)
      : super(_value, (v) => _then(v as _GetBranchwiseReports));

  @override
  _GetBranchwiseReports get _value => super._value as _GetBranchwiseReports;

  @override
  $Res call({
    Object? flag = freezed,
    Object? firmId = freezed,
  }) {
    return _then(_GetBranchwiseReports(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      firmId: firmId == freezed
          ? _value.firmId
          : firmId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetBranchwiseReports implements _GetBranchwiseReports {
  const _$_GetBranchwiseReports({required this.flag, required this.firmId});

  @override
  final int flag;
  @override
  final int firmId;

  @override
  String toString() {
    return 'EmployeeEvent.getBranchwiseReports(flag: $flag, firmId: $firmId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetBranchwiseReports &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other.firmId, firmId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(firmId));

  @JsonKey(ignore: true)
  @override
  _$GetBranchwiseReportsCopyWith<_GetBranchwiseReports> get copyWith =>
      __$GetBranchwiseReportsCopyWithImpl<_GetBranchwiseReports>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return getBranchwiseReports(flag, firmId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return getBranchwiseReports?.call(flag, firmId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getBranchwiseReports != null) {
      return getBranchwiseReports(flag, firmId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return getBranchwiseReports(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return getBranchwiseReports?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getBranchwiseReports != null) {
      return getBranchwiseReports(this);
    }
    return orElse();
  }
}

abstract class _GetBranchwiseReports implements EmployeeEvent {
  const factory _GetBranchwiseReports(
      {required int flag, required int firmId}) = _$_GetBranchwiseReports;

  int get flag;
  int get firmId;
  @JsonKey(ignore: true)
  _$GetBranchwiseReportsCopyWith<_GetBranchwiseReports> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$bhverificationinitialEventCopyWith<$Res> {
  factory _$bhverificationinitialEventCopyWith(
          _bhverificationinitialEvent value,
          $Res Function(_bhverificationinitialEvent) then) =
      __$bhverificationinitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$bhverificationinitialEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$bhverificationinitialEventCopyWith<$Res> {
  __$bhverificationinitialEventCopyWithImpl(_bhverificationinitialEvent _value,
      $Res Function(_bhverificationinitialEvent) _then)
      : super(_value, (v) => _then(v as _bhverificationinitialEvent));

  @override
  _bhverificationinitialEvent get _value =>
      super._value as _bhverificationinitialEvent;
}

/// @nodoc

class _$_bhverificationinitialEvent implements _bhverificationinitialEvent {
  const _$_bhverificationinitialEvent();

  @override
  String toString() {
    return 'EmployeeEvent.bhverificationinitialEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _bhverificationinitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return bhverificationinitialEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return bhverificationinitialEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationinitialEvent != null) {
      return bhverificationinitialEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return bhverificationinitialEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return bhverificationinitialEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationinitialEvent != null) {
      return bhverificationinitialEvent(this);
    }
    return orElse();
  }
}

abstract class _bhverificationinitialEvent implements EmployeeEvent {
  const factory _bhverificationinitialEvent() = _$_bhverificationinitialEvent;
}

/// @nodoc
abstract class _$GetbhdeletedscheduledtranscationdetailsCopyWith<$Res> {
  factory _$GetbhdeletedscheduledtranscationdetailsCopyWith(
          _Getbhdeletedscheduledtranscationdetails value,
          $Res Function(_Getbhdeletedscheduledtranscationdetails) then) =
      __$GetbhdeletedscheduledtranscationdetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetbhdeletedscheduledtranscationdetailsCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$GetbhdeletedscheduledtranscationdetailsCopyWith<$Res> {
  __$GetbhdeletedscheduledtranscationdetailsCopyWithImpl(
      _Getbhdeletedscheduledtranscationdetails _value,
      $Res Function(_Getbhdeletedscheduledtranscationdetails) _then)
      : super(_value,
            (v) => _then(v as _Getbhdeletedscheduledtranscationdetails));

  @override
  _Getbhdeletedscheduledtranscationdetails get _value =>
      super._value as _Getbhdeletedscheduledtranscationdetails;
}

/// @nodoc

class _$_Getbhdeletedscheduledtranscationdetails
    implements _Getbhdeletedscheduledtranscationdetails {
  const _$_Getbhdeletedscheduledtranscationdetails();

  @override
  String toString() {
    return 'EmployeeEvent.getbhdeletedscheduledtranscationdetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Getbhdeletedscheduledtranscationdetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return getbhdeletedscheduledtranscationdetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return getbhdeletedscheduledtranscationdetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getbhdeletedscheduledtranscationdetails != null) {
      return getbhdeletedscheduledtranscationdetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return getbhdeletedscheduledtranscationdetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return getbhdeletedscheduledtranscationdetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getbhdeletedscheduledtranscationdetails != null) {
      return getbhdeletedscheduledtranscationdetails(this);
    }
    return orElse();
  }
}

abstract class _Getbhdeletedscheduledtranscationdetails
    implements EmployeeEvent {
  const factory _Getbhdeletedscheduledtranscationdetails() =
      _$_Getbhdeletedscheduledtranscationdetails;
}

/// @nodoc
abstract class _$bhverificationApproveEventCopyWith<$Res> {
  factory _$bhverificationApproveEventCopyWith(
          _bhverificationApproveEvent value,
          $Res Function(_bhverificationApproveEvent) then) =
      __$bhverificationApproveEventCopyWithImpl<$Res>;
  $Res call(
      {String depositid,
      int bhid,
      int branchid,
      String chequeno,
      int firmid,
      int moduleid,
      DateTime chequecleardate});
}

/// @nodoc
class __$bhverificationApproveEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$bhverificationApproveEventCopyWith<$Res> {
  __$bhverificationApproveEventCopyWithImpl(_bhverificationApproveEvent _value,
      $Res Function(_bhverificationApproveEvent) _then)
      : super(_value, (v) => _then(v as _bhverificationApproveEvent));

  @override
  _bhverificationApproveEvent get _value =>
      super._value as _bhverificationApproveEvent;

  @override
  $Res call({
    Object? depositid = freezed,
    Object? bhid = freezed,
    Object? branchid = freezed,
    Object? chequeno = freezed,
    Object? firmid = freezed,
    Object? moduleid = freezed,
    Object? chequecleardate = freezed,
  }) {
    return _then(_bhverificationApproveEvent(
      depositid: depositid == freezed
          ? _value.depositid
          : depositid // ignore: cast_nullable_to_non_nullable
              as String,
      bhid: bhid == freezed
          ? _value.bhid
          : bhid // ignore: cast_nullable_to_non_nullable
              as int,
      branchid: branchid == freezed
          ? _value.branchid
          : branchid // ignore: cast_nullable_to_non_nullable
              as int,
      chequeno: chequeno == freezed
          ? _value.chequeno
          : chequeno // ignore: cast_nullable_to_non_nullable
              as String,
      firmid: firmid == freezed
          ? _value.firmid
          : firmid // ignore: cast_nullable_to_non_nullable
              as int,
      moduleid: moduleid == freezed
          ? _value.moduleid
          : moduleid // ignore: cast_nullable_to_non_nullable
              as int,
      chequecleardate: chequecleardate == freezed
          ? _value.chequecleardate
          : chequecleardate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_bhverificationApproveEvent implements _bhverificationApproveEvent {
  const _$_bhverificationApproveEvent(
      {required this.depositid,
      required this.bhid,
      required this.branchid,
      required this.chequeno,
      required this.firmid,
      required this.moduleid,
      required this.chequecleardate});

  @override
  final String depositid;
  @override
  final int bhid;
  @override
  final int branchid;
  @override
  final String chequeno;
  @override
  final int firmid;
  @override
  final int moduleid;
  @override
  final DateTime chequecleardate;

  @override
  String toString() {
    return 'EmployeeEvent.bhverificationApproveEvent(depositid: $depositid, bhid: $bhid, branchid: $branchid, chequeno: $chequeno, firmid: $firmid, moduleid: $moduleid, chequecleardate: $chequecleardate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _bhverificationApproveEvent &&
            const DeepCollectionEquality().equals(other.depositid, depositid) &&
            const DeepCollectionEquality().equals(other.bhid, bhid) &&
            const DeepCollectionEquality().equals(other.branchid, branchid) &&
            const DeepCollectionEquality().equals(other.chequeno, chequeno) &&
            const DeepCollectionEquality().equals(other.firmid, firmid) &&
            const DeepCollectionEquality().equals(other.moduleid, moduleid) &&
            const DeepCollectionEquality()
                .equals(other.chequecleardate, chequecleardate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(depositid),
      const DeepCollectionEquality().hash(bhid),
      const DeepCollectionEquality().hash(branchid),
      const DeepCollectionEquality().hash(chequeno),
      const DeepCollectionEquality().hash(firmid),
      const DeepCollectionEquality().hash(moduleid),
      const DeepCollectionEquality().hash(chequecleardate));

  @JsonKey(ignore: true)
  @override
  _$bhverificationApproveEventCopyWith<_bhverificationApproveEvent>
      get copyWith => __$bhverificationApproveEventCopyWithImpl<
          _bhverificationApproveEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return bhverificationApproveEvent(
        depositid, bhid, branchid, chequeno, firmid, moduleid, chequecleardate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return bhverificationApproveEvent?.call(
        depositid, bhid, branchid, chequeno, firmid, moduleid, chequecleardate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationApproveEvent != null) {
      return bhverificationApproveEvent(depositid, bhid, branchid, chequeno,
          firmid, moduleid, chequecleardate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return bhverificationApproveEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return bhverificationApproveEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationApproveEvent != null) {
      return bhverificationApproveEvent(this);
    }
    return orElse();
  }
}

abstract class _bhverificationApproveEvent implements EmployeeEvent {
  const factory _bhverificationApproveEvent(
      {required String depositid,
      required int bhid,
      required int branchid,
      required String chequeno,
      required int firmid,
      required int moduleid,
      required DateTime chequecleardate}) = _$_bhverificationApproveEvent;

  String get depositid;
  int get bhid;
  int get branchid;
  String get chequeno;
  int get firmid;
  int get moduleid;
  DateTime get chequecleardate;
  @JsonKey(ignore: true)
  _$bhverificationApproveEventCopyWith<_bhverificationApproveEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$bhverificationReturnEventCopyWith<$Res> {
  factory _$bhverificationReturnEventCopyWith(_bhverificationReturnEvent value,
          $Res Function(_bhverificationReturnEvent) then) =
      __$bhverificationReturnEventCopyWithImpl<$Res>;
  $Res call({String depositid, String chequeno});
}

/// @nodoc
class __$bhverificationReturnEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$bhverificationReturnEventCopyWith<$Res> {
  __$bhverificationReturnEventCopyWithImpl(_bhverificationReturnEvent _value,
      $Res Function(_bhverificationReturnEvent) _then)
      : super(_value, (v) => _then(v as _bhverificationReturnEvent));

  @override
  _bhverificationReturnEvent get _value =>
      super._value as _bhverificationReturnEvent;

  @override
  $Res call({
    Object? depositid = freezed,
    Object? chequeno = freezed,
  }) {
    return _then(_bhverificationReturnEvent(
      depositid: depositid == freezed
          ? _value.depositid
          : depositid // ignore: cast_nullable_to_non_nullable
              as String,
      chequeno: chequeno == freezed
          ? _value.chequeno
          : chequeno // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_bhverificationReturnEvent implements _bhverificationReturnEvent {
  const _$_bhverificationReturnEvent(
      {required this.depositid, required this.chequeno});

  @override
  final String depositid;
  @override
  final String chequeno;

  @override
  String toString() {
    return 'EmployeeEvent.bhverificationReturnEvent(depositid: $depositid, chequeno: $chequeno)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _bhverificationReturnEvent &&
            const DeepCollectionEquality().equals(other.depositid, depositid) &&
            const DeepCollectionEquality().equals(other.chequeno, chequeno));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(depositid),
      const DeepCollectionEquality().hash(chequeno));

  @JsonKey(ignore: true)
  @override
  _$bhverificationReturnEventCopyWith<_bhverificationReturnEvent>
      get copyWith =>
          __$bhverificationReturnEventCopyWithImpl<_bhverificationReturnEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return bhverificationReturnEvent(depositid, chequeno);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return bhverificationReturnEvent?.call(depositid, chequeno);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationReturnEvent != null) {
      return bhverificationReturnEvent(depositid, chequeno);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return bhverificationReturnEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return bhverificationReturnEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationReturnEvent != null) {
      return bhverificationReturnEvent(this);
    }
    return orElse();
  }
}

abstract class _bhverificationReturnEvent implements EmployeeEvent {
  const factory _bhverificationReturnEvent(
      {required String depositid,
      required String chequeno}) = _$_bhverificationReturnEvent;

  String get depositid;
  String get chequeno;
  @JsonKey(ignore: true)
  _$bhverificationReturnEventCopyWith<_bhverificationReturnEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$bhverificationSortEventCopyWith<$Res> {
  factory _$bhverificationSortEventCopyWith(_bhverificationSortEvent value,
          $Res Function(_bhverificationSortEvent) then) =
      __$bhverificationSortEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$bhverificationSortEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$bhverificationSortEventCopyWith<$Res> {
  __$bhverificationSortEventCopyWithImpl(_bhverificationSortEvent _value,
      $Res Function(_bhverificationSortEvent) _then)
      : super(_value, (v) => _then(v as _bhverificationSortEvent));

  @override
  _bhverificationSortEvent get _value =>
      super._value as _bhverificationSortEvent;
}

/// @nodoc

class _$_bhverificationSortEvent implements _bhverificationSortEvent {
  const _$_bhverificationSortEvent();

  @override
  String toString() {
    return 'EmployeeEvent.bhverificationSortEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _bhverificationSortEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return bhverificationSortEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return bhverificationSortEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationSortEvent != null) {
      return bhverificationSortEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return bhverificationSortEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return bhverificationSortEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationSortEvent != null) {
      return bhverificationSortEvent(this);
    }
    return orElse();
  }
}

abstract class _bhverificationSortEvent implements EmployeeEvent {
  const factory _bhverificationSortEvent() = _$_bhverificationSortEvent;
}

/// @nodoc
abstract class _$bhverificationSortbhverificationpageEventCopyWith<$Res> {
  factory _$bhverificationSortbhverificationpageEventCopyWith(
          _bhverificationSortbhverificationpageEvent value,
          $Res Function(_bhverificationSortbhverificationpageEvent) then) =
      __$bhverificationSortbhverificationpageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$bhverificationSortbhverificationpageEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$bhverificationSortbhverificationpageEventCopyWith<$Res> {
  __$bhverificationSortbhverificationpageEventCopyWithImpl(
      _bhverificationSortbhverificationpageEvent _value,
      $Res Function(_bhverificationSortbhverificationpageEvent) _then)
      : super(_value,
            (v) => _then(v as _bhverificationSortbhverificationpageEvent));

  @override
  _bhverificationSortbhverificationpageEvent get _value =>
      super._value as _bhverificationSortbhverificationpageEvent;
}

/// @nodoc

class _$_bhverificationSortbhverificationpageEvent
    implements _bhverificationSortbhverificationpageEvent {
  const _$_bhverificationSortbhverificationpageEvent();

  @override
  String toString() {
    return 'EmployeeEvent.bhverificationSortbhverificationpageEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _bhverificationSortbhverificationpageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return bhverificationSortbhverificationpageEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return bhverificationSortbhverificationpageEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationSortbhverificationpageEvent != null) {
      return bhverificationSortbhverificationpageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return bhverificationSortbhverificationpageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return bhverificationSortbhverificationpageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverificationSortbhverificationpageEvent != null) {
      return bhverificationSortbhverificationpageEvent(this);
    }
    return orElse();
  }
}

abstract class _bhverificationSortbhverificationpageEvent
    implements EmployeeEvent {
  const factory _bhverificationSortbhverificationpageEvent() =
      _$_bhverificationSortbhverificationpageEvent;
}

/// @nodoc
abstract class _$bhverifyDropdownListButtonEventCopyWith<$Res> {
  factory _$bhverifyDropdownListButtonEventCopyWith(
          _bhverifyDropdownListButtonEvent value,
          $Res Function(_bhverifyDropdownListButtonEvent) then) =
      __$bhverifyDropdownListButtonEventCopyWithImpl<$Res>;
  $Res call({dynamic value});
}

/// @nodoc
class __$bhverifyDropdownListButtonEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$bhverifyDropdownListButtonEventCopyWith<$Res> {
  __$bhverifyDropdownListButtonEventCopyWithImpl(
      _bhverifyDropdownListButtonEvent _value,
      $Res Function(_bhverifyDropdownListButtonEvent) _then)
      : super(_value, (v) => _then(v as _bhverifyDropdownListButtonEvent));

  @override
  _bhverifyDropdownListButtonEvent get _value =>
      super._value as _bhverifyDropdownListButtonEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_bhverifyDropdownListButtonEvent(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_bhverifyDropdownListButtonEvent
    implements _bhverifyDropdownListButtonEvent {
  const _$_bhverifyDropdownListButtonEvent({required this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'EmployeeEvent.bhverifyDropdownListButtonEvent(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _bhverifyDropdownListButtonEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$bhverifyDropdownListButtonEventCopyWith<_bhverifyDropdownListButtonEvent>
      get copyWith => __$bhverifyDropdownListButtonEventCopyWithImpl<
          _bhverifyDropdownListButtonEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return bhverifyDropdownListButtonEvent(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return bhverifyDropdownListButtonEvent?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverifyDropdownListButtonEvent != null) {
      return bhverifyDropdownListButtonEvent(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return bhverifyDropdownListButtonEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return bhverifyDropdownListButtonEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhverifyDropdownListButtonEvent != null) {
      return bhverifyDropdownListButtonEvent(this);
    }
    return orElse();
  }
}

abstract class _bhverifyDropdownListButtonEvent implements EmployeeEvent {
  const factory _bhverifyDropdownListButtonEvent({required dynamic value}) =
      _$_bhverifyDropdownListButtonEvent;

  dynamic get value;
  @JsonKey(ignore: true)
  _$bhverifyDropdownListButtonEventCopyWith<_bhverifyDropdownListButtonEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetBhBounceListdetailsCopyWith<$Res> {
  factory _$GetBhBounceListdetailsCopyWith(_GetBhBounceListdetails value,
          $Res Function(_GetBhBounceListdetails) then) =
      __$GetBhBounceListdetailsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetBhBounceListdetailsCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$GetBhBounceListdetailsCopyWith<$Res> {
  __$GetBhBounceListdetailsCopyWithImpl(_GetBhBounceListdetails _value,
      $Res Function(_GetBhBounceListdetails) _then)
      : super(_value, (v) => _then(v as _GetBhBounceListdetails));

  @override
  _GetBhBounceListdetails get _value => super._value as _GetBhBounceListdetails;
}

/// @nodoc

class _$_GetBhBounceListdetails implements _GetBhBounceListdetails {
  const _$_GetBhBounceListdetails();

  @override
  String toString() {
    return 'EmployeeEvent.getBhBounceListdetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetBhBounceListdetails);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return getBhBounceListdetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return getBhBounceListdetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getBhBounceListdetails != null) {
      return getBhBounceListdetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return getBhBounceListdetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return getBhBounceListdetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getBhBounceListdetails != null) {
      return getBhBounceListdetails(this);
    }
    return orElse();
  }
}

abstract class _GetBhBounceListdetails implements EmployeeEvent {
  const factory _GetBhBounceListdetails() = _$_GetBhBounceListdetails;
}

/// @nodoc
abstract class _$BhBouncebuttonPressedCopyWith<$Res> {
  factory _$BhBouncebuttonPressedCopyWith(_BhBouncebuttonPressed value,
          $Res Function(_BhBouncebuttonPressed) then) =
      __$BhBouncebuttonPressedCopyWithImpl<$Res>;
  $Res call({String chequeno, String depositid, String empid});
}

/// @nodoc
class __$BhBouncebuttonPressedCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$BhBouncebuttonPressedCopyWith<$Res> {
  __$BhBouncebuttonPressedCopyWithImpl(_BhBouncebuttonPressed _value,
      $Res Function(_BhBouncebuttonPressed) _then)
      : super(_value, (v) => _then(v as _BhBouncebuttonPressed));

  @override
  _BhBouncebuttonPressed get _value => super._value as _BhBouncebuttonPressed;

  @override
  $Res call({
    Object? chequeno = freezed,
    Object? depositid = freezed,
    Object? empid = freezed,
  }) {
    return _then(_BhBouncebuttonPressed(
      chequeno: chequeno == freezed
          ? _value.chequeno
          : chequeno // ignore: cast_nullable_to_non_nullable
              as String,
      depositid: depositid == freezed
          ? _value.depositid
          : depositid // ignore: cast_nullable_to_non_nullable
              as String,
      empid: empid == freezed
          ? _value.empid
          : empid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BhBouncebuttonPressed implements _BhBouncebuttonPressed {
  const _$_BhBouncebuttonPressed(
      {required this.chequeno, required this.depositid, required this.empid});

  @override
  final String chequeno;
  @override
  final String depositid;
  @override
  final String empid;

  @override
  String toString() {
    return 'EmployeeEvent.bhBouncebuttonPressed(chequeno: $chequeno, depositid: $depositid, empid: $empid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BhBouncebuttonPressed &&
            const DeepCollectionEquality().equals(other.chequeno, chequeno) &&
            const DeepCollectionEquality().equals(other.depositid, depositid) &&
            const DeepCollectionEquality().equals(other.empid, empid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chequeno),
      const DeepCollectionEquality().hash(depositid),
      const DeepCollectionEquality().hash(empid));

  @JsonKey(ignore: true)
  @override
  _$BhBouncebuttonPressedCopyWith<_BhBouncebuttonPressed> get copyWith =>
      __$BhBouncebuttonPressedCopyWithImpl<_BhBouncebuttonPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return bhBouncebuttonPressed(chequeno, depositid, empid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return bhBouncebuttonPressed?.call(chequeno, depositid, empid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhBouncebuttonPressed != null) {
      return bhBouncebuttonPressed(chequeno, depositid, empid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return bhBouncebuttonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return bhBouncebuttonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (bhBouncebuttonPressed != null) {
      return bhBouncebuttonPressed(this);
    }
    return orElse();
  }
}

abstract class _BhBouncebuttonPressed implements EmployeeEvent {
  const factory _BhBouncebuttonPressed(
      {required String chequeno,
      required String depositid,
      required String empid}) = _$_BhBouncebuttonPressed;

  String get chequeno;
  String get depositid;
  String get empid;
  @JsonKey(ignore: true)
  _$BhBouncebuttonPressedCopyWith<_BhBouncebuttonPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteScheduledTranscationsCopyWith<$Res> {
  factory _$DeleteScheduledTranscationsCopyWith(
          _DeleteScheduledTranscations value,
          $Res Function(_DeleteScheduledTranscations) then) =
      __$DeleteScheduledTranscationsCopyWithImpl<$Res>;
  $Res call(
      {int flag,
      int rtId,
      DateTime transactionDate,
      String userType,
      int bhId});
}

/// @nodoc
class __$DeleteScheduledTranscationsCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$DeleteScheduledTranscationsCopyWith<$Res> {
  __$DeleteScheduledTranscationsCopyWithImpl(
      _DeleteScheduledTranscations _value,
      $Res Function(_DeleteScheduledTranscations) _then)
      : super(_value, (v) => _then(v as _DeleteScheduledTranscations));

  @override
  _DeleteScheduledTranscations get _value =>
      super._value as _DeleteScheduledTranscations;

  @override
  $Res call({
    Object? flag = freezed,
    Object? rtId = freezed,
    Object? transactionDate = freezed,
    Object? userType = freezed,
    Object? bhId = freezed,
  }) {
    return _then(_DeleteScheduledTranscations(
      flag: flag == freezed
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as int,
      rtId: rtId == freezed
          ? _value.rtId
          : rtId // ignore: cast_nullable_to_non_nullable
              as int,
      transactionDate: transactionDate == freezed
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String,
      bhId: bhId == freezed
          ? _value.bhId
          : bhId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteScheduledTranscations implements _DeleteScheduledTranscations {
  const _$_DeleteScheduledTranscations(
      {required this.flag,
      required this.rtId,
      required this.transactionDate,
      required this.userType,
      required this.bhId});

  @override
  final int flag;
  @override
  final int rtId;
  @override
  final DateTime transactionDate;
  @override
  final String userType;
  @override
  final int bhId;

  @override
  String toString() {
    return 'EmployeeEvent.deleteScheduledTranscations(flag: $flag, rtId: $rtId, transactionDate: $transactionDate, userType: $userType, bhId: $bhId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteScheduledTranscations &&
            const DeepCollectionEquality().equals(other.flag, flag) &&
            const DeepCollectionEquality().equals(other.rtId, rtId) &&
            const DeepCollectionEquality()
                .equals(other.transactionDate, transactionDate) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.bhId, bhId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(flag),
      const DeepCollectionEquality().hash(rtId),
      const DeepCollectionEquality().hash(transactionDate),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(bhId));

  @JsonKey(ignore: true)
  @override
  _$DeleteScheduledTranscationsCopyWith<_DeleteScheduledTranscations>
      get copyWith => __$DeleteScheduledTranscationsCopyWithImpl<
          _DeleteScheduledTranscations>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return deleteScheduledTranscations(
        flag, rtId, transactionDate, userType, bhId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return deleteScheduledTranscations?.call(
        flag, rtId, transactionDate, userType, bhId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (deleteScheduledTranscations != null) {
      return deleteScheduledTranscations(
          flag, rtId, transactionDate, userType, bhId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return deleteScheduledTranscations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return deleteScheduledTranscations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (deleteScheduledTranscations != null) {
      return deleteScheduledTranscations(this);
    }
    return orElse();
  }
}

abstract class _DeleteScheduledTranscations implements EmployeeEvent {
  const factory _DeleteScheduledTranscations(
      {required int flag,
      required int rtId,
      required DateTime transactionDate,
      required String userType,
      required int bhId}) = _$_DeleteScheduledTranscations;

  int get flag;
  int get rtId;
  DateTime get transactionDate;
  String get userType;
  int get bhId;
  @JsonKey(ignore: true)
  _$DeleteScheduledTranscationsCopyWith<_DeleteScheduledTranscations>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteScheduledAnyMonthCopyWith<$Res> {
  factory _$DeleteScheduledAnyMonthCopyWith(_DeleteScheduledAnyMonth value,
          $Res Function(_DeleteScheduledAnyMonth) then) =
      __$DeleteScheduledAnyMonthCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeleteScheduledAnyMonthCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$DeleteScheduledAnyMonthCopyWith<$Res> {
  __$DeleteScheduledAnyMonthCopyWithImpl(_DeleteScheduledAnyMonth _value,
      $Res Function(_DeleteScheduledAnyMonth) _then)
      : super(_value, (v) => _then(v as _DeleteScheduledAnyMonth));

  @override
  _DeleteScheduledAnyMonth get _value =>
      super._value as _DeleteScheduledAnyMonth;
}

/// @nodoc

class _$_DeleteScheduledAnyMonth implements _DeleteScheduledAnyMonth {
  const _$_DeleteScheduledAnyMonth();

  @override
  String toString() {
    return 'EmployeeEvent.deleteScheduledAnyMonth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _DeleteScheduledAnyMonth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return deleteScheduledAnyMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return deleteScheduledAnyMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (deleteScheduledAnyMonth != null) {
      return deleteScheduledAnyMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return deleteScheduledAnyMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return deleteScheduledAnyMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (deleteScheduledAnyMonth != null) {
      return deleteScheduledAnyMonth(this);
    }
    return orElse();
  }
}

abstract class _DeleteScheduledAnyMonth implements EmployeeEvent {
  const factory _DeleteScheduledAnyMonth() = _$_DeleteScheduledAnyMonth;
}

/// @nodoc
abstract class _$deleteScheduledTransactionAllMonthCopyWith<$Res> {
  factory _$deleteScheduledTransactionAllMonthCopyWith(
          _deleteScheduledTransactionAllMonth value,
          $Res Function(_deleteScheduledTransactionAllMonth) then) =
      __$deleteScheduledTransactionAllMonthCopyWithImpl<$Res>;
}

/// @nodoc
class __$deleteScheduledTransactionAllMonthCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$deleteScheduledTransactionAllMonthCopyWith<$Res> {
  __$deleteScheduledTransactionAllMonthCopyWithImpl(
      _deleteScheduledTransactionAllMonth _value,
      $Res Function(_deleteScheduledTransactionAllMonth) _then)
      : super(_value, (v) => _then(v as _deleteScheduledTransactionAllMonth));

  @override
  _deleteScheduledTransactionAllMonth get _value =>
      super._value as _deleteScheduledTransactionAllMonth;
}

/// @nodoc

class _$_deleteScheduledTransactionAllMonth
    implements _deleteScheduledTransactionAllMonth {
  const _$_deleteScheduledTransactionAllMonth();

  @override
  String toString() {
    return 'EmployeeEvent.deleteScheduledTransactionAllMonth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _deleteScheduledTransactionAllMonth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return deleteScheduledTransactionAllMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return deleteScheduledTransactionAllMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (deleteScheduledTransactionAllMonth != null) {
      return deleteScheduledTransactionAllMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return deleteScheduledTransactionAllMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return deleteScheduledTransactionAllMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (deleteScheduledTransactionAllMonth != null) {
      return deleteScheduledTransactionAllMonth(this);
    }
    return orElse();
  }
}

abstract class _deleteScheduledTransactionAllMonth implements EmployeeEvent {
  const factory _deleteScheduledTransactionAllMonth() =
      _$_deleteScheduledTransactionAllMonth;
}

/// @nodoc
abstract class _$GetemployeenotificationsCopyWith<$Res> {
  factory _$GetemployeenotificationsCopyWith(_Getemployeenotifications value,
          $Res Function(_Getemployeenotifications) then) =
      __$GetemployeenotificationsCopyWithImpl<$Res>;
  $Res call({String employeeid});
}

/// @nodoc
class __$GetemployeenotificationsCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$GetemployeenotificationsCopyWith<$Res> {
  __$GetemployeenotificationsCopyWithImpl(_Getemployeenotifications _value,
      $Res Function(_Getemployeenotifications) _then)
      : super(_value, (v) => _then(v as _Getemployeenotifications));

  @override
  _Getemployeenotifications get _value =>
      super._value as _Getemployeenotifications;

  @override
  $Res call({
    Object? employeeid = freezed,
  }) {
    return _then(_Getemployeenotifications(
      employeeid: employeeid == freezed
          ? _value.employeeid
          : employeeid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Getemployeenotifications implements _Getemployeenotifications {
  const _$_Getemployeenotifications({required this.employeeid});

  @override
  final String employeeid;

  @override
  String toString() {
    return 'EmployeeEvent.getEmployeeNotifications(employeeid: $employeeid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Getemployeenotifications &&
            const DeepCollectionEquality()
                .equals(other.employeeid, employeeid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(employeeid));

  @JsonKey(ignore: true)
  @override
  _$GetemployeenotificationsCopyWith<_Getemployeenotifications> get copyWith =>
      __$GetemployeenotificationsCopyWithImpl<_Getemployeenotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return getEmployeeNotifications(employeeid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return getEmployeeNotifications?.call(employeeid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getEmployeeNotifications != null) {
      return getEmployeeNotifications(employeeid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return getEmployeeNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return getEmployeeNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (getEmployeeNotifications != null) {
      return getEmployeeNotifications(this);
    }
    return orElse();
  }
}

abstract class _Getemployeenotifications implements EmployeeEvent {
  const factory _Getemployeenotifications({required String employeeid}) =
      _$_Getemployeenotifications;

  String get employeeid;
  @JsonKey(ignore: true)
  _$GetemployeenotificationsCopyWith<_Getemployeenotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveEmployeeNotificationCopyWith<$Res> {
  factory _$RemoveEmployeeNotificationCopyWith(
          _RemoveEmployeeNotification value,
          $Res Function(_RemoveEmployeeNotification) then) =
      __$RemoveEmployeeNotificationCopyWithImpl<$Res>;
  $Res call({String userId, int alertId});
}

/// @nodoc
class __$RemoveEmployeeNotificationCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$RemoveEmployeeNotificationCopyWith<$Res> {
  __$RemoveEmployeeNotificationCopyWithImpl(_RemoveEmployeeNotification _value,
      $Res Function(_RemoveEmployeeNotification) _then)
      : super(_value, (v) => _then(v as _RemoveEmployeeNotification));

  @override
  _RemoveEmployeeNotification get _value =>
      super._value as _RemoveEmployeeNotification;

  @override
  $Res call({
    Object? userId = freezed,
    Object? alertId = freezed,
  }) {
    return _then(_RemoveEmployeeNotification(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      alertId: alertId == freezed
          ? _value.alertId
          : alertId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveEmployeeNotification implements _RemoveEmployeeNotification {
  const _$_RemoveEmployeeNotification(
      {required this.userId, required this.alertId});

  @override
  final String userId;
  @override
  final int alertId;

  @override
  String toString() {
    return 'EmployeeEvent.removeEmployeeNotification(userId: $userId, alertId: $alertId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveEmployeeNotification &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.alertId, alertId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(alertId));

  @JsonKey(ignore: true)
  @override
  _$RemoveEmployeeNotificationCopyWith<_RemoveEmployeeNotification>
      get copyWith => __$RemoveEmployeeNotificationCopyWithImpl<
          _RemoveEmployeeNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return removeEmployeeNotification(userId, alertId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return removeEmployeeNotification?.call(userId, alertId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (removeEmployeeNotification != null) {
      return removeEmployeeNotification(userId, alertId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return removeEmployeeNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return removeEmployeeNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (removeEmployeeNotification != null) {
      return removeEmployeeNotification(this);
    }
    return orElse();
  }
}

abstract class _RemoveEmployeeNotification implements EmployeeEvent {
  const factory _RemoveEmployeeNotification(
      {required String userId,
      required int alertId}) = _$_RemoveEmployeeNotification;

  String get userId;
  int get alertId;
  @JsonKey(ignore: true)
  _$RemoveEmployeeNotificationCopyWith<_RemoveEmployeeNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveLoginTokenCopyWith<$Res> {
  factory _$SaveLoginTokenCopyWith(
          _SaveLoginToken value, $Res Function(_SaveLoginToken) then) =
      __$SaveLoginTokenCopyWithImpl<$Res>;
  $Res call({String loginToken});
}

/// @nodoc
class __$SaveLoginTokenCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res>
    implements _$SaveLoginTokenCopyWith<$Res> {
  __$SaveLoginTokenCopyWithImpl(
      _SaveLoginToken _value, $Res Function(_SaveLoginToken) _then)
      : super(_value, (v) => _then(v as _SaveLoginToken));

  @override
  _SaveLoginToken get _value => super._value as _SaveLoginToken;

  @override
  $Res call({
    Object? loginToken = freezed,
  }) {
    return _then(_SaveLoginToken(
      loginToken: loginToken == freezed
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveLoginToken implements _SaveLoginToken {
  const _$_SaveLoginToken({required this.loginToken});

  @override
  final String loginToken;

  @override
  String toString() {
    return 'EmployeeEvent.saveLoginToken(loginToken: $loginToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveLoginToken &&
            const DeepCollectionEquality()
                .equals(other.loginToken, loginToken));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(loginToken));

  @JsonKey(ignore: true)
  @override
  _$SaveLoginTokenCopyWith<_SaveLoginToken> get copyWith =>
      __$SaveLoginTokenCopyWithImpl<_SaveLoginToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) indexChanging,
    required TResult Function(int selectedRadioButton)
        radioButttonGroupValueEvent,
    required TResult Function(
            String searchValue, String searchType, int currentPage)
        searchCustomer,
    required TResult Function(String searchValue, String searchType)
        searchCustomerLoading,
    required TResult Function(int branchId, int firmId) getCustomerwiseReports,
    required TResult Function(int flag, int firmId) getBranchwiseReports,
    required TResult Function() bhverificationinitialEvent,
    required TResult Function() getbhdeletedscheduledtranscationdetails,
    required TResult Function(String depositid, int bhid, int branchid,
            String chequeno, int firmid, int moduleid, DateTime chequecleardate)
        bhverificationApproveEvent,
    required TResult Function(String depositid, String chequeno)
        bhverificationReturnEvent,
    required TResult Function() bhverificationSortEvent,
    required TResult Function() bhverificationSortbhverificationpageEvent,
    required TResult Function(dynamic value) bhverifyDropdownListButtonEvent,
    required TResult Function() getBhBounceListdetails,
    required TResult Function(String chequeno, String depositid, String empid)
        bhBouncebuttonPressed,
    required TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)
        deleteScheduledTranscations,
    required TResult Function() deleteScheduledAnyMonth,
    required TResult Function() deleteScheduledTransactionAllMonth,
    required TResult Function(String employeeid) getEmployeeNotifications,
    required TResult Function(String userId, int alertId)
        removeEmployeeNotification,
    required TResult Function(String loginToken) saveLoginToken,
  }) {
    return saveLoginToken(loginToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
  }) {
    return saveLoginToken?.call(loginToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? indexChanging,
    TResult Function(int selectedRadioButton)? radioButttonGroupValueEvent,
    TResult Function(String searchValue, String searchType, int currentPage)?
        searchCustomer,
    TResult Function(String searchValue, String searchType)?
        searchCustomerLoading,
    TResult Function(int branchId, int firmId)? getCustomerwiseReports,
    TResult Function(int flag, int firmId)? getBranchwiseReports,
    TResult Function()? bhverificationinitialEvent,
    TResult Function()? getbhdeletedscheduledtranscationdetails,
    TResult Function(String depositid, int bhid, int branchid, String chequeno,
            int firmid, int moduleid, DateTime chequecleardate)?
        bhverificationApproveEvent,
    TResult Function(String depositid, String chequeno)?
        bhverificationReturnEvent,
    TResult Function()? bhverificationSortEvent,
    TResult Function()? bhverificationSortbhverificationpageEvent,
    TResult Function(dynamic value)? bhverifyDropdownListButtonEvent,
    TResult Function()? getBhBounceListdetails,
    TResult Function(String chequeno, String depositid, String empid)?
        bhBouncebuttonPressed,
    TResult Function(int flag, int rtId, DateTime transactionDate,
            String userType, int bhId)?
        deleteScheduledTranscations,
    TResult Function()? deleteScheduledAnyMonth,
    TResult Function()? deleteScheduledTransactionAllMonth,
    TResult Function(String employeeid)? getEmployeeNotifications,
    TResult Function(String userId, int alertId)? removeEmployeeNotification,
    TResult Function(String loginToken)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (saveLoginToken != null) {
      return saveLoginToken(loginToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_IndexChanging value) indexChanging,
    required TResult Function(_RadioButttonGroupValueEvent value)
        radioButttonGroupValueEvent,
    required TResult Function(_SearchCustomer value) searchCustomer,
    required TResult Function(_SearchCustomerLoading value)
        searchCustomerLoading,
    required TResult Function(_GetCustomerwiseReports value)
        getCustomerwiseReports,
    required TResult Function(_GetBranchwiseReports value) getBranchwiseReports,
    required TResult Function(_bhverificationinitialEvent value)
        bhverificationinitialEvent,
    required TResult Function(_Getbhdeletedscheduledtranscationdetails value)
        getbhdeletedscheduledtranscationdetails,
    required TResult Function(_bhverificationApproveEvent value)
        bhverificationApproveEvent,
    required TResult Function(_bhverificationReturnEvent value)
        bhverificationReturnEvent,
    required TResult Function(_bhverificationSortEvent value)
        bhverificationSortEvent,
    required TResult Function(_bhverificationSortbhverificationpageEvent value)
        bhverificationSortbhverificationpageEvent,
    required TResult Function(_bhverifyDropdownListButtonEvent value)
        bhverifyDropdownListButtonEvent,
    required TResult Function(_GetBhBounceListdetails value)
        getBhBounceListdetails,
    required TResult Function(_BhBouncebuttonPressed value)
        bhBouncebuttonPressed,
    required TResult Function(_DeleteScheduledTranscations value)
        deleteScheduledTranscations,
    required TResult Function(_DeleteScheduledAnyMonth value)
        deleteScheduledAnyMonth,
    required TResult Function(_deleteScheduledTransactionAllMonth value)
        deleteScheduledTransactionAllMonth,
    required TResult Function(_Getemployeenotifications value)
        getEmployeeNotifications,
    required TResult Function(_RemoveEmployeeNotification value)
        removeEmployeeNotification,
    required TResult Function(_SaveLoginToken value) saveLoginToken,
  }) {
    return saveLoginToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
  }) {
    return saveLoginToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_IndexChanging value)? indexChanging,
    TResult Function(_RadioButttonGroupValueEvent value)?
        radioButttonGroupValueEvent,
    TResult Function(_SearchCustomer value)? searchCustomer,
    TResult Function(_SearchCustomerLoading value)? searchCustomerLoading,
    TResult Function(_GetCustomerwiseReports value)? getCustomerwiseReports,
    TResult Function(_GetBranchwiseReports value)? getBranchwiseReports,
    TResult Function(_bhverificationinitialEvent value)?
        bhverificationinitialEvent,
    TResult Function(_Getbhdeletedscheduledtranscationdetails value)?
        getbhdeletedscheduledtranscationdetails,
    TResult Function(_bhverificationApproveEvent value)?
        bhverificationApproveEvent,
    TResult Function(_bhverificationReturnEvent value)?
        bhverificationReturnEvent,
    TResult Function(_bhverificationSortEvent value)? bhverificationSortEvent,
    TResult Function(_bhverificationSortbhverificationpageEvent value)?
        bhverificationSortbhverificationpageEvent,
    TResult Function(_bhverifyDropdownListButtonEvent value)?
        bhverifyDropdownListButtonEvent,
    TResult Function(_GetBhBounceListdetails value)? getBhBounceListdetails,
    TResult Function(_BhBouncebuttonPressed value)? bhBouncebuttonPressed,
    TResult Function(_DeleteScheduledTranscations value)?
        deleteScheduledTranscations,
    TResult Function(_DeleteScheduledAnyMonth value)? deleteScheduledAnyMonth,
    TResult Function(_deleteScheduledTransactionAllMonth value)?
        deleteScheduledTransactionAllMonth,
    TResult Function(_Getemployeenotifications value)? getEmployeeNotifications,
    TResult Function(_RemoveEmployeeNotification value)?
        removeEmployeeNotification,
    TResult Function(_SaveLoginToken value)? saveLoginToken,
    required TResult orElse(),
  }) {
    if (saveLoginToken != null) {
      return saveLoginToken(this);
    }
    return orElse();
  }
}

abstract class _SaveLoginToken implements EmployeeEvent {
  const factory _SaveLoginToken({required String loginToken}) =
      _$_SaveLoginToken;

  String get loginToken;
  @JsonKey(ignore: true)
  _$SaveLoginTokenCopyWith<_SaveLoginToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EmployeeStateTearOff {
  const _$EmployeeStateTearOff();

  _EmployeeState call(
      {required String loginToken,
      required int index,
      required bool isLoading,
      required int radioButtonValue,
      required String searchType,
      required int currentPage,
      required bool todayNew,
      required bool todaySettled,
      required bool monthlyNew,
      required bool monthlySettled,
      required bool growthOS,
      required String reportType,
      List<CustomerwiseReportModel>? customerwisereports,
      List<GrowthReportDataModel>? branchwisereports,
      List<CustomerSearchModel>? customerSearchModel,
      required Option<Either<EmployeeFailures, List<CustomerSearchModel>>>
          customerSearchFailureOrSucces,
      required Option<Either<MainFailure, List<CustomerwiseReportModel>>>
          customerReportsFailureOrSuccess,
      required Option<Either<MainFailure, List<GrowthReportDataModel>>>
          growthReportFailureOrSuccess,
      required Option<Either<MainFailure, List<EmployeeNotificationModel>>>
          employeenotificationsFailureOrSuccess,
      required Option<Either<MainFailure, Unit>>
          removeEmployeeNotificationFailureOrSuccess,
      required bool? bhVerificationPage,
      required bool? bhApprovePage,
      required bool? bhbouncepage,
      required String? dropdownLabel,
      required int? deleteflag,
      List<BhverificationDatamodel>? bhverificationdatas,
      List<BhverificationSortDataModel>? bhverificationsortsdatas,
      List<BhverificationBounceDatamodel>? bhbouncedatas,
      List<BhDeleteScheduledTranscationsDataModel>? bhdeletescheduleddatas,
      String? bhverifyapprovedata,
      String? bhBouncechequedata,
      String? bhReturndata,
      required Option<Either<EmployeeFailures, String>>
          deletescheduleddeleteFailureOrSuccess,
      required Option<Either<EmployeeFailures, String>>
          bhreturnfailureorsuccess,
      List<EmployeeNotificationModel>? employeenotification,
      required Option<Either<EmployeeFailures, List<BhverificationDatamodel>>>
          bhverificationFailureOrSuccess,
      required Option<
              Either<EmployeeFailures,
                  List<BhDeleteScheduledTranscationsDataModel>>>
          bhdeletescheduledtranscationFailureorSuccess,
      required Option<Either<EmployeeFailures, String>>
          bhverifyapprovestatusfailureorSuccess,
      required Option<
              Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
          bhverificationbouncefailureorsuccess,
      required Option<
              Either<EmployeeFailures, List<BhverificationSortDataModel>>>
          bhverificationsortfailureorsuccess,
      required Option<Either<EmployeeFailures, String>>
          bhbouncefailureorsuccess}) {
    return _EmployeeState(
      loginToken: loginToken,
      index: index,
      isLoading: isLoading,
      radioButtonValue: radioButtonValue,
      searchType: searchType,
      currentPage: currentPage,
      todayNew: todayNew,
      todaySettled: todaySettled,
      monthlyNew: monthlyNew,
      monthlySettled: monthlySettled,
      growthOS: growthOS,
      reportType: reportType,
      customerwisereports: customerwisereports,
      branchwisereports: branchwisereports,
      customerSearchModel: customerSearchModel,
      customerSearchFailureOrSucces: customerSearchFailureOrSucces,
      customerReportsFailureOrSuccess: customerReportsFailureOrSuccess,
      growthReportFailureOrSuccess: growthReportFailureOrSuccess,
      employeenotificationsFailureOrSuccess:
          employeenotificationsFailureOrSuccess,
      removeEmployeeNotificationFailureOrSuccess:
          removeEmployeeNotificationFailureOrSuccess,
      bhVerificationPage: bhVerificationPage,
      bhApprovePage: bhApprovePage,
      bhbouncepage: bhbouncepage,
      dropdownLabel: dropdownLabel,
      deleteflag: deleteflag,
      bhverificationdatas: bhverificationdatas,
      bhverificationsortsdatas: bhverificationsortsdatas,
      bhbouncedatas: bhbouncedatas,
      bhdeletescheduleddatas: bhdeletescheduleddatas,
      bhverifyapprovedata: bhverifyapprovedata,
      bhBouncechequedata: bhBouncechequedata,
      bhReturndata: bhReturndata,
      deletescheduleddeleteFailureOrSuccess:
          deletescheduleddeleteFailureOrSuccess,
      bhreturnfailureorsuccess: bhreturnfailureorsuccess,
      employeenotification: employeenotification,
      bhverificationFailureOrSuccess: bhverificationFailureOrSuccess,
      bhdeletescheduledtranscationFailureorSuccess:
          bhdeletescheduledtranscationFailureorSuccess,
      bhverifyapprovestatusfailureorSuccess:
          bhverifyapprovestatusfailureorSuccess,
      bhverificationbouncefailureorsuccess:
          bhverificationbouncefailureorsuccess,
      bhverificationsortfailureorsuccess: bhverificationsortfailureorsuccess,
      bhbouncefailureorsuccess: bhbouncefailureorsuccess,
    );
  }
}

/// @nodoc
const $EmployeeState = _$EmployeeStateTearOff();

/// @nodoc
mixin _$EmployeeState {
  String get loginToken => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int get radioButtonValue => throw _privateConstructorUsedError;
  String get searchType => throw _privateConstructorUsedError;
  int get currentPage =>
      throw _privateConstructorUsedError; //-------------------Reports--------
  bool get todayNew => throw _privateConstructorUsedError;
  bool get todaySettled => throw _privateConstructorUsedError;
  bool get monthlyNew => throw _privateConstructorUsedError;
  bool get monthlySettled => throw _privateConstructorUsedError;
  bool get growthOS => throw _privateConstructorUsedError;
  String get reportType => throw _privateConstructorUsedError;
  List<CustomerwiseReportModel>? get customerwisereports =>
      throw _privateConstructorUsedError;
  List<GrowthReportDataModel>? get branchwisereports =>
      throw _privateConstructorUsedError;
  List<CustomerSearchModel>? get customerSearchModel =>
      throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, List<CustomerSearchModel>>>
      get customerSearchFailureOrSucces => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<CustomerwiseReportModel>>>
      get customerReportsFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<GrowthReportDataModel>>>
      get growthReportFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<EmployeeNotificationModel>>>
      get employeenotificationsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  Option<
      Either<MainFailure,
          Unit>> get removeEmployeeNotificationFailureOrSuccess =>
      throw _privateConstructorUsedError; ////////////////BH verification//////////////////////////
  bool? get bhVerificationPage => throw _privateConstructorUsedError;
  bool? get bhApprovePage => throw _privateConstructorUsedError;
  bool? get bhbouncepage => throw _privateConstructorUsedError;
  String? get dropdownLabel => throw _privateConstructorUsedError;
  int? get deleteflag => throw _privateConstructorUsedError;
  List<BhverificationDatamodel>? get bhverificationdatas =>
      throw _privateConstructorUsedError;
  List<BhverificationSortDataModel>? get bhverificationsortsdatas =>
      throw _privateConstructorUsedError;
  List<BhverificationBounceDatamodel>? get bhbouncedatas =>
      throw _privateConstructorUsedError;
  List<BhDeleteScheduledTranscationsDataModel>? get bhdeletescheduleddatas =>
      throw _privateConstructorUsedError;
  String? get bhverifyapprovedata => throw _privateConstructorUsedError;
  String? get bhBouncechequedata => throw _privateConstructorUsedError;
  String? get bhReturndata => throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, String>>
      get deletescheduleddeleteFailureOrSuccess =>
          throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, String>> get bhreturnfailureorsuccess =>
      throw _privateConstructorUsedError;
  List<EmployeeNotificationModel>? get employeenotification =>
      throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, List<BhverificationDatamodel>>>
      get bhverificationFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, List<BhDeleteScheduledTranscationsDataModel>>>
      get bhdeletescheduledtranscationFailureorSuccess =>
          throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, String>>
      get bhverifyapprovestatusfailureorSuccess =>
          throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
      get bhverificationbouncefailureorsuccess =>
          throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, List<BhverificationSortDataModel>>>
      get bhverificationsortfailureorsuccess =>
          throw _privateConstructorUsedError;
  Option<Either<EmployeeFailures, String>> get bhbouncefailureorsuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res>;
  $Res call(
      {String loginToken,
      int index,
      bool isLoading,
      int radioButtonValue,
      String searchType,
      int currentPage,
      bool todayNew,
      bool todaySettled,
      bool monthlyNew,
      bool monthlySettled,
      bool growthOS,
      String reportType,
      List<CustomerwiseReportModel>? customerwisereports,
      List<GrowthReportDataModel>? branchwisereports,
      List<CustomerSearchModel>? customerSearchModel,
      Option<Either<EmployeeFailures, List<CustomerSearchModel>>>
          customerSearchFailureOrSucces,
      Option<Either<MainFailure, List<CustomerwiseReportModel>>>
          customerReportsFailureOrSuccess,
      Option<Either<MainFailure, List<GrowthReportDataModel>>>
          growthReportFailureOrSuccess,
      Option<Either<MainFailure, List<EmployeeNotificationModel>>>
          employeenotificationsFailureOrSuccess,
      Option<Either<MainFailure, Unit>>
          removeEmployeeNotificationFailureOrSuccess,
      bool? bhVerificationPage,
      bool? bhApprovePage,
      bool? bhbouncepage,
      String? dropdownLabel,
      int? deleteflag,
      List<BhverificationDatamodel>? bhverificationdatas,
      List<BhverificationSortDataModel>? bhverificationsortsdatas,
      List<BhverificationBounceDatamodel>? bhbouncedatas,
      List<BhDeleteScheduledTranscationsDataModel>? bhdeletescheduleddatas,
      String? bhverifyapprovedata,
      String? bhBouncechequedata,
      String? bhReturndata,
      Option<Either<EmployeeFailures, String>>
          deletescheduleddeleteFailureOrSuccess,
      Option<Either<EmployeeFailures, String>> bhreturnfailureorsuccess,
      List<EmployeeNotificationModel>? employeenotification,
      Option<Either<EmployeeFailures, List<BhverificationDatamodel>>>
          bhverificationFailureOrSuccess,
      Option<
              Either<EmployeeFailures,
                  List<BhDeleteScheduledTranscationsDataModel>>>
          bhdeletescheduledtranscationFailureorSuccess,
      Option<Either<EmployeeFailures, String>>
          bhverifyapprovestatusfailureorSuccess,
      Option<Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
          bhverificationbouncefailureorsuccess,
      Option<Either<EmployeeFailures, List<BhverificationSortDataModel>>>
          bhverificationsortfailureorsuccess,
      Option<Either<EmployeeFailures, String>> bhbouncefailureorsuccess});
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  final EmployeeState _value;
  // ignore: unused_field
  final $Res Function(EmployeeState) _then;

  @override
  $Res call({
    Object? loginToken = freezed,
    Object? index = freezed,
    Object? isLoading = freezed,
    Object? radioButtonValue = freezed,
    Object? searchType = freezed,
    Object? currentPage = freezed,
    Object? todayNew = freezed,
    Object? todaySettled = freezed,
    Object? monthlyNew = freezed,
    Object? monthlySettled = freezed,
    Object? growthOS = freezed,
    Object? reportType = freezed,
    Object? customerwisereports = freezed,
    Object? branchwisereports = freezed,
    Object? customerSearchModel = freezed,
    Object? customerSearchFailureOrSucces = freezed,
    Object? customerReportsFailureOrSuccess = freezed,
    Object? growthReportFailureOrSuccess = freezed,
    Object? employeenotificationsFailureOrSuccess = freezed,
    Object? removeEmployeeNotificationFailureOrSuccess = freezed,
    Object? bhVerificationPage = freezed,
    Object? bhApprovePage = freezed,
    Object? bhbouncepage = freezed,
    Object? dropdownLabel = freezed,
    Object? deleteflag = freezed,
    Object? bhverificationdatas = freezed,
    Object? bhverificationsortsdatas = freezed,
    Object? bhbouncedatas = freezed,
    Object? bhdeletescheduleddatas = freezed,
    Object? bhverifyapprovedata = freezed,
    Object? bhBouncechequedata = freezed,
    Object? bhReturndata = freezed,
    Object? deletescheduleddeleteFailureOrSuccess = freezed,
    Object? bhreturnfailureorsuccess = freezed,
    Object? employeenotification = freezed,
    Object? bhverificationFailureOrSuccess = freezed,
    Object? bhdeletescheduledtranscationFailureorSuccess = freezed,
    Object? bhverifyapprovestatusfailureorSuccess = freezed,
    Object? bhverificationbouncefailureorsuccess = freezed,
    Object? bhverificationsortfailureorsuccess = freezed,
    Object? bhbouncefailureorsuccess = freezed,
  }) {
    return _then(_value.copyWith(
      loginToken: loginToken == freezed
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      radioButtonValue: radioButtonValue == freezed
          ? _value.radioButtonValue
          : radioButtonValue // ignore: cast_nullable_to_non_nullable
              as int,
      searchType: searchType == freezed
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      todayNew: todayNew == freezed
          ? _value.todayNew
          : todayNew // ignore: cast_nullable_to_non_nullable
              as bool,
      todaySettled: todaySettled == freezed
          ? _value.todaySettled
          : todaySettled // ignore: cast_nullable_to_non_nullable
              as bool,
      monthlyNew: monthlyNew == freezed
          ? _value.monthlyNew
          : monthlyNew // ignore: cast_nullable_to_non_nullable
              as bool,
      monthlySettled: monthlySettled == freezed
          ? _value.monthlySettled
          : monthlySettled // ignore: cast_nullable_to_non_nullable
              as bool,
      growthOS: growthOS == freezed
          ? _value.growthOS
          : growthOS // ignore: cast_nullable_to_non_nullable
              as bool,
      reportType: reportType == freezed
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      customerwisereports: customerwisereports == freezed
          ? _value.customerwisereports
          : customerwisereports // ignore: cast_nullable_to_non_nullable
              as List<CustomerwiseReportModel>?,
      branchwisereports: branchwisereports == freezed
          ? _value.branchwisereports
          : branchwisereports // ignore: cast_nullable_to_non_nullable
              as List<GrowthReportDataModel>?,
      customerSearchModel: customerSearchModel == freezed
          ? _value.customerSearchModel
          : customerSearchModel // ignore: cast_nullable_to_non_nullable
              as List<CustomerSearchModel>?,
      customerSearchFailureOrSucces: customerSearchFailureOrSucces == freezed
          ? _value.customerSearchFailureOrSucces
          : customerSearchFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<EmployeeFailures, List<CustomerSearchModel>>>,
      customerReportsFailureOrSuccess: customerReportsFailureOrSuccess ==
              freezed
          ? _value.customerReportsFailureOrSuccess
          : customerReportsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<CustomerwiseReportModel>>>,
      growthReportFailureOrSuccess: growthReportFailureOrSuccess == freezed
          ? _value.growthReportFailureOrSuccess
          : growthReportFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<GrowthReportDataModel>>>,
      employeenotificationsFailureOrSuccess:
          employeenotificationsFailureOrSuccess == freezed
              ? _value.employeenotificationsFailureOrSuccess
              : employeenotificationsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<
                      Either<MainFailure, List<EmployeeNotificationModel>>>,
      removeEmployeeNotificationFailureOrSuccess:
          removeEmployeeNotificationFailureOrSuccess == freezed
              ? _value.removeEmployeeNotificationFailureOrSuccess
              : removeEmployeeNotificationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<MainFailure, Unit>>,
      bhVerificationPage: bhVerificationPage == freezed
          ? _value.bhVerificationPage
          : bhVerificationPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      bhApprovePage: bhApprovePage == freezed
          ? _value.bhApprovePage
          : bhApprovePage // ignore: cast_nullable_to_non_nullable
              as bool?,
      bhbouncepage: bhbouncepage == freezed
          ? _value.bhbouncepage
          : bhbouncepage // ignore: cast_nullable_to_non_nullable
              as bool?,
      dropdownLabel: dropdownLabel == freezed
          ? _value.dropdownLabel
          : dropdownLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteflag: deleteflag == freezed
          ? _value.deleteflag
          : deleteflag // ignore: cast_nullable_to_non_nullable
              as int?,
      bhverificationdatas: bhverificationdatas == freezed
          ? _value.bhverificationdatas
          : bhverificationdatas // ignore: cast_nullable_to_non_nullable
              as List<BhverificationDatamodel>?,
      bhverificationsortsdatas: bhverificationsortsdatas == freezed
          ? _value.bhverificationsortsdatas
          : bhverificationsortsdatas // ignore: cast_nullable_to_non_nullable
              as List<BhverificationSortDataModel>?,
      bhbouncedatas: bhbouncedatas == freezed
          ? _value.bhbouncedatas
          : bhbouncedatas // ignore: cast_nullable_to_non_nullable
              as List<BhverificationBounceDatamodel>?,
      bhdeletescheduleddatas: bhdeletescheduleddatas == freezed
          ? _value.bhdeletescheduleddatas
          : bhdeletescheduleddatas // ignore: cast_nullable_to_non_nullable
              as List<BhDeleteScheduledTranscationsDataModel>?,
      bhverifyapprovedata: bhverifyapprovedata == freezed
          ? _value.bhverifyapprovedata
          : bhverifyapprovedata // ignore: cast_nullable_to_non_nullable
              as String?,
      bhBouncechequedata: bhBouncechequedata == freezed
          ? _value.bhBouncechequedata
          : bhBouncechequedata // ignore: cast_nullable_to_non_nullable
              as String?,
      bhReturndata: bhReturndata == freezed
          ? _value.bhReturndata
          : bhReturndata // ignore: cast_nullable_to_non_nullable
              as String?,
      deletescheduleddeleteFailureOrSuccess:
          deletescheduleddeleteFailureOrSuccess == freezed
              ? _value.deletescheduleddeleteFailureOrSuccess
              : deletescheduleddeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<EmployeeFailures, String>>,
      bhreturnfailureorsuccess: bhreturnfailureorsuccess == freezed
          ? _value.bhreturnfailureorsuccess
          : bhreturnfailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<EmployeeFailures, String>>,
      employeenotification: employeenotification == freezed
          ? _value.employeenotification
          : employeenotification // ignore: cast_nullable_to_non_nullable
              as List<EmployeeNotificationModel>?,
      bhverificationFailureOrSuccess: bhverificationFailureOrSuccess == freezed
          ? _value.bhverificationFailureOrSuccess
          : bhverificationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<EmployeeFailures, List<BhverificationDatamodel>>>,
      bhdeletescheduledtranscationFailureorSuccess:
          bhdeletescheduledtranscationFailureorSuccess == freezed
              ? _value.bhdeletescheduledtranscationFailureorSuccess
              : bhdeletescheduledtranscationFailureorSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<
                      Either<EmployeeFailures,
                          List<BhDeleteScheduledTranscationsDataModel>>>,
      bhverifyapprovestatusfailureorSuccess:
          bhverifyapprovestatusfailureorSuccess == freezed
              ? _value.bhverifyapprovestatusfailureorSuccess
              : bhverifyapprovestatusfailureorSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<EmployeeFailures, String>>,
      bhverificationbouncefailureorsuccess: bhverificationbouncefailureorsuccess ==
              freezed
          ? _value.bhverificationbouncefailureorsuccess
          : bhverificationbouncefailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<EmployeeFailures,
                      List<BhverificationBounceDatamodel>>>,
      bhverificationsortfailureorsuccess: bhverificationsortfailureorsuccess ==
              freezed
          ? _value.bhverificationsortfailureorsuccess
          : bhverificationsortfailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<EmployeeFailures, List<BhverificationSortDataModel>>>,
      bhbouncefailureorsuccess: bhbouncefailureorsuccess == freezed
          ? _value.bhbouncefailureorsuccess
          : bhbouncefailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<EmployeeFailures, String>>,
    ));
  }
}

/// @nodoc
abstract class _$EmployeeStateCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$EmployeeStateCopyWith(
          _EmployeeState value, $Res Function(_EmployeeState) then) =
      __$EmployeeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String loginToken,
      int index,
      bool isLoading,
      int radioButtonValue,
      String searchType,
      int currentPage,
      bool todayNew,
      bool todaySettled,
      bool monthlyNew,
      bool monthlySettled,
      bool growthOS,
      String reportType,
      List<CustomerwiseReportModel>? customerwisereports,
      List<GrowthReportDataModel>? branchwisereports,
      List<CustomerSearchModel>? customerSearchModel,
      Option<Either<EmployeeFailures, List<CustomerSearchModel>>>
          customerSearchFailureOrSucces,
      Option<Either<MainFailure, List<CustomerwiseReportModel>>>
          customerReportsFailureOrSuccess,
      Option<Either<MainFailure, List<GrowthReportDataModel>>>
          growthReportFailureOrSuccess,
      Option<Either<MainFailure, List<EmployeeNotificationModel>>>
          employeenotificationsFailureOrSuccess,
      Option<Either<MainFailure, Unit>>
          removeEmployeeNotificationFailureOrSuccess,
      bool? bhVerificationPage,
      bool? bhApprovePage,
      bool? bhbouncepage,
      String? dropdownLabel,
      int? deleteflag,
      List<BhverificationDatamodel>? bhverificationdatas,
      List<BhverificationSortDataModel>? bhverificationsortsdatas,
      List<BhverificationBounceDatamodel>? bhbouncedatas,
      List<BhDeleteScheduledTranscationsDataModel>? bhdeletescheduleddatas,
      String? bhverifyapprovedata,
      String? bhBouncechequedata,
      String? bhReturndata,
      Option<Either<EmployeeFailures, String>>
          deletescheduleddeleteFailureOrSuccess,
      Option<Either<EmployeeFailures, String>> bhreturnfailureorsuccess,
      List<EmployeeNotificationModel>? employeenotification,
      Option<Either<EmployeeFailures, List<BhverificationDatamodel>>>
          bhverificationFailureOrSuccess,
      Option<
              Either<EmployeeFailures,
                  List<BhDeleteScheduledTranscationsDataModel>>>
          bhdeletescheduledtranscationFailureorSuccess,
      Option<Either<EmployeeFailures, String>>
          bhverifyapprovestatusfailureorSuccess,
      Option<Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
          bhverificationbouncefailureorsuccess,
      Option<Either<EmployeeFailures, List<BhverificationSortDataModel>>>
          bhverificationsortfailureorsuccess,
      Option<Either<EmployeeFailures, String>> bhbouncefailureorsuccess});
}

/// @nodoc
class __$EmployeeStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res>
    implements _$EmployeeStateCopyWith<$Res> {
  __$EmployeeStateCopyWithImpl(
      _EmployeeState _value, $Res Function(_EmployeeState) _then)
      : super(_value, (v) => _then(v as _EmployeeState));

  @override
  _EmployeeState get _value => super._value as _EmployeeState;

  @override
  $Res call({
    Object? loginToken = freezed,
    Object? index = freezed,
    Object? isLoading = freezed,
    Object? radioButtonValue = freezed,
    Object? searchType = freezed,
    Object? currentPage = freezed,
    Object? todayNew = freezed,
    Object? todaySettled = freezed,
    Object? monthlyNew = freezed,
    Object? monthlySettled = freezed,
    Object? growthOS = freezed,
    Object? reportType = freezed,
    Object? customerwisereports = freezed,
    Object? branchwisereports = freezed,
    Object? customerSearchModel = freezed,
    Object? customerSearchFailureOrSucces = freezed,
    Object? customerReportsFailureOrSuccess = freezed,
    Object? growthReportFailureOrSuccess = freezed,
    Object? employeenotificationsFailureOrSuccess = freezed,
    Object? removeEmployeeNotificationFailureOrSuccess = freezed,
    Object? bhVerificationPage = freezed,
    Object? bhApprovePage = freezed,
    Object? bhbouncepage = freezed,
    Object? dropdownLabel = freezed,
    Object? deleteflag = freezed,
    Object? bhverificationdatas = freezed,
    Object? bhverificationsortsdatas = freezed,
    Object? bhbouncedatas = freezed,
    Object? bhdeletescheduleddatas = freezed,
    Object? bhverifyapprovedata = freezed,
    Object? bhBouncechequedata = freezed,
    Object? bhReturndata = freezed,
    Object? deletescheduleddeleteFailureOrSuccess = freezed,
    Object? bhreturnfailureorsuccess = freezed,
    Object? employeenotification = freezed,
    Object? bhverificationFailureOrSuccess = freezed,
    Object? bhdeletescheduledtranscationFailureorSuccess = freezed,
    Object? bhverifyapprovestatusfailureorSuccess = freezed,
    Object? bhverificationbouncefailureorsuccess = freezed,
    Object? bhverificationsortfailureorsuccess = freezed,
    Object? bhbouncefailureorsuccess = freezed,
  }) {
    return _then(_EmployeeState(
      loginToken: loginToken == freezed
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      radioButtonValue: radioButtonValue == freezed
          ? _value.radioButtonValue
          : radioButtonValue // ignore: cast_nullable_to_non_nullable
              as int,
      searchType: searchType == freezed
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      todayNew: todayNew == freezed
          ? _value.todayNew
          : todayNew // ignore: cast_nullable_to_non_nullable
              as bool,
      todaySettled: todaySettled == freezed
          ? _value.todaySettled
          : todaySettled // ignore: cast_nullable_to_non_nullable
              as bool,
      monthlyNew: monthlyNew == freezed
          ? _value.monthlyNew
          : monthlyNew // ignore: cast_nullable_to_non_nullable
              as bool,
      monthlySettled: monthlySettled == freezed
          ? _value.monthlySettled
          : monthlySettled // ignore: cast_nullable_to_non_nullable
              as bool,
      growthOS: growthOS == freezed
          ? _value.growthOS
          : growthOS // ignore: cast_nullable_to_non_nullable
              as bool,
      reportType: reportType == freezed
          ? _value.reportType
          : reportType // ignore: cast_nullable_to_non_nullable
              as String,
      customerwisereports: customerwisereports == freezed
          ? _value.customerwisereports
          : customerwisereports // ignore: cast_nullable_to_non_nullable
              as List<CustomerwiseReportModel>?,
      branchwisereports: branchwisereports == freezed
          ? _value.branchwisereports
          : branchwisereports // ignore: cast_nullable_to_non_nullable
              as List<GrowthReportDataModel>?,
      customerSearchModel: customerSearchModel == freezed
          ? _value.customerSearchModel
          : customerSearchModel // ignore: cast_nullable_to_non_nullable
              as List<CustomerSearchModel>?,
      customerSearchFailureOrSucces: customerSearchFailureOrSucces == freezed
          ? _value.customerSearchFailureOrSucces
          : customerSearchFailureOrSucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<EmployeeFailures, List<CustomerSearchModel>>>,
      customerReportsFailureOrSuccess: customerReportsFailureOrSuccess ==
              freezed
          ? _value.customerReportsFailureOrSuccess
          : customerReportsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<CustomerwiseReportModel>>>,
      growthReportFailureOrSuccess: growthReportFailureOrSuccess == freezed
          ? _value.growthReportFailureOrSuccess
          : growthReportFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<GrowthReportDataModel>>>,
      employeenotificationsFailureOrSuccess:
          employeenotificationsFailureOrSuccess == freezed
              ? _value.employeenotificationsFailureOrSuccess
              : employeenotificationsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<
                      Either<MainFailure, List<EmployeeNotificationModel>>>,
      removeEmployeeNotificationFailureOrSuccess:
          removeEmployeeNotificationFailureOrSuccess == freezed
              ? _value.removeEmployeeNotificationFailureOrSuccess
              : removeEmployeeNotificationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<MainFailure, Unit>>,
      bhVerificationPage: bhVerificationPage == freezed
          ? _value.bhVerificationPage
          : bhVerificationPage // ignore: cast_nullable_to_non_nullable
              as bool?,
      bhApprovePage: bhApprovePage == freezed
          ? _value.bhApprovePage
          : bhApprovePage // ignore: cast_nullable_to_non_nullable
              as bool?,
      bhbouncepage: bhbouncepage == freezed
          ? _value.bhbouncepage
          : bhbouncepage // ignore: cast_nullable_to_non_nullable
              as bool?,
      dropdownLabel: dropdownLabel == freezed
          ? _value.dropdownLabel
          : dropdownLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      deleteflag: deleteflag == freezed
          ? _value.deleteflag
          : deleteflag // ignore: cast_nullable_to_non_nullable
              as int?,
      bhverificationdatas: bhverificationdatas == freezed
          ? _value.bhverificationdatas
          : bhverificationdatas // ignore: cast_nullable_to_non_nullable
              as List<BhverificationDatamodel>?,
      bhverificationsortsdatas: bhverificationsortsdatas == freezed
          ? _value.bhverificationsortsdatas
          : bhverificationsortsdatas // ignore: cast_nullable_to_non_nullable
              as List<BhverificationSortDataModel>?,
      bhbouncedatas: bhbouncedatas == freezed
          ? _value.bhbouncedatas
          : bhbouncedatas // ignore: cast_nullable_to_non_nullable
              as List<BhverificationBounceDatamodel>?,
      bhdeletescheduleddatas: bhdeletescheduleddatas == freezed
          ? _value.bhdeletescheduleddatas
          : bhdeletescheduleddatas // ignore: cast_nullable_to_non_nullable
              as List<BhDeleteScheduledTranscationsDataModel>?,
      bhverifyapprovedata: bhverifyapprovedata == freezed
          ? _value.bhverifyapprovedata
          : bhverifyapprovedata // ignore: cast_nullable_to_non_nullable
              as String?,
      bhBouncechequedata: bhBouncechequedata == freezed
          ? _value.bhBouncechequedata
          : bhBouncechequedata // ignore: cast_nullable_to_non_nullable
              as String?,
      bhReturndata: bhReturndata == freezed
          ? _value.bhReturndata
          : bhReturndata // ignore: cast_nullable_to_non_nullable
              as String?,
      deletescheduleddeleteFailureOrSuccess:
          deletescheduleddeleteFailureOrSuccess == freezed
              ? _value.deletescheduleddeleteFailureOrSuccess
              : deletescheduleddeleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<EmployeeFailures, String>>,
      bhreturnfailureorsuccess: bhreturnfailureorsuccess == freezed
          ? _value.bhreturnfailureorsuccess
          : bhreturnfailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<EmployeeFailures, String>>,
      employeenotification: employeenotification == freezed
          ? _value.employeenotification
          : employeenotification // ignore: cast_nullable_to_non_nullable
              as List<EmployeeNotificationModel>?,
      bhverificationFailureOrSuccess: bhverificationFailureOrSuccess == freezed
          ? _value.bhverificationFailureOrSuccess
          : bhverificationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<EmployeeFailures, List<BhverificationDatamodel>>>,
      bhdeletescheduledtranscationFailureorSuccess:
          bhdeletescheduledtranscationFailureorSuccess == freezed
              ? _value.bhdeletescheduledtranscationFailureorSuccess
              : bhdeletescheduledtranscationFailureorSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<
                      Either<EmployeeFailures,
                          List<BhDeleteScheduledTranscationsDataModel>>>,
      bhverifyapprovestatusfailureorSuccess:
          bhverifyapprovestatusfailureorSuccess == freezed
              ? _value.bhverifyapprovestatusfailureorSuccess
              : bhverifyapprovestatusfailureorSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<EmployeeFailures, String>>,
      bhverificationbouncefailureorsuccess: bhverificationbouncefailureorsuccess ==
              freezed
          ? _value.bhverificationbouncefailureorsuccess
          : bhverificationbouncefailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<EmployeeFailures,
                      List<BhverificationBounceDatamodel>>>,
      bhverificationsortfailureorsuccess: bhverificationsortfailureorsuccess ==
              freezed
          ? _value.bhverificationsortfailureorsuccess
          : bhverificationsortfailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<EmployeeFailures, List<BhverificationSortDataModel>>>,
      bhbouncefailureorsuccess: bhbouncefailureorsuccess == freezed
          ? _value.bhbouncefailureorsuccess
          : bhbouncefailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<EmployeeFailures, String>>,
    ));
  }
}

/// @nodoc

class _$_EmployeeState implements _EmployeeState {
  const _$_EmployeeState(
      {required this.loginToken,
      required this.index,
      required this.isLoading,
      required this.radioButtonValue,
      required this.searchType,
      required this.currentPage,
      required this.todayNew,
      required this.todaySettled,
      required this.monthlyNew,
      required this.monthlySettled,
      required this.growthOS,
      required this.reportType,
      this.customerwisereports,
      this.branchwisereports,
      this.customerSearchModel,
      required this.customerSearchFailureOrSucces,
      required this.customerReportsFailureOrSuccess,
      required this.growthReportFailureOrSuccess,
      required this.employeenotificationsFailureOrSuccess,
      required this.removeEmployeeNotificationFailureOrSuccess,
      required this.bhVerificationPage,
      required this.bhApprovePage,
      required this.bhbouncepage,
      required this.dropdownLabel,
      required this.deleteflag,
      this.bhverificationdatas,
      this.bhverificationsortsdatas,
      this.bhbouncedatas,
      this.bhdeletescheduleddatas,
      this.bhverifyapprovedata,
      this.bhBouncechequedata,
      this.bhReturndata,
      required this.deletescheduleddeleteFailureOrSuccess,
      required this.bhreturnfailureorsuccess,
      this.employeenotification,
      required this.bhverificationFailureOrSuccess,
      required this.bhdeletescheduledtranscationFailureorSuccess,
      required this.bhverifyapprovestatusfailureorSuccess,
      required this.bhverificationbouncefailureorsuccess,
      required this.bhverificationsortfailureorsuccess,
      required this.bhbouncefailureorsuccess});

  @override
  final String loginToken;
  @override
  final int index;
  @override
  final bool isLoading;
  @override
  final int radioButtonValue;
  @override
  final String searchType;
  @override
  final int currentPage;
  @override //-------------------Reports--------
  final bool todayNew;
  @override
  final bool todaySettled;
  @override
  final bool monthlyNew;
  @override
  final bool monthlySettled;
  @override
  final bool growthOS;
  @override
  final String reportType;
  @override
  final List<CustomerwiseReportModel>? customerwisereports;
  @override
  final List<GrowthReportDataModel>? branchwisereports;
  @override
  final List<CustomerSearchModel>? customerSearchModel;
  @override
  final Option<Either<EmployeeFailures, List<CustomerSearchModel>>>
      customerSearchFailureOrSucces;
  @override
  final Option<Either<MainFailure, List<CustomerwiseReportModel>>>
      customerReportsFailureOrSuccess;
  @override
  final Option<Either<MainFailure, List<GrowthReportDataModel>>>
      growthReportFailureOrSuccess;
  @override
  final Option<Either<MainFailure, List<EmployeeNotificationModel>>>
      employeenotificationsFailureOrSuccess;
  @override
  final Option<Either<MainFailure, Unit>>
      removeEmployeeNotificationFailureOrSuccess;
  @override ////////////////BH verification//////////////////////////
  final bool? bhVerificationPage;
  @override
  final bool? bhApprovePage;
  @override
  final bool? bhbouncepage;
  @override
  final String? dropdownLabel;
  @override
  final int? deleteflag;
  @override
  final List<BhverificationDatamodel>? bhverificationdatas;
  @override
  final List<BhverificationSortDataModel>? bhverificationsortsdatas;
  @override
  final List<BhverificationBounceDatamodel>? bhbouncedatas;
  @override
  final List<BhDeleteScheduledTranscationsDataModel>? bhdeletescheduleddatas;
  @override
  final String? bhverifyapprovedata;
  @override
  final String? bhBouncechequedata;
  @override
  final String? bhReturndata;
  @override
  final Option<Either<EmployeeFailures, String>>
      deletescheduleddeleteFailureOrSuccess;
  @override
  final Option<Either<EmployeeFailures, String>> bhreturnfailureorsuccess;
  @override
  final List<EmployeeNotificationModel>? employeenotification;
  @override
  final Option<Either<EmployeeFailures, List<BhverificationDatamodel>>>
      bhverificationFailureOrSuccess;
  @override
  final Option<
          Either<EmployeeFailures,
              List<BhDeleteScheduledTranscationsDataModel>>>
      bhdeletescheduledtranscationFailureorSuccess;
  @override
  final Option<Either<EmployeeFailures, String>>
      bhverifyapprovestatusfailureorSuccess;
  @override
  final Option<Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
      bhverificationbouncefailureorsuccess;
  @override
  final Option<Either<EmployeeFailures, List<BhverificationSortDataModel>>>
      bhverificationsortfailureorsuccess;
  @override
  final Option<Either<EmployeeFailures, String>> bhbouncefailureorsuccess;

  @override
  String toString() {
    return 'EmployeeState(loginToken: $loginToken, index: $index, isLoading: $isLoading, radioButtonValue: $radioButtonValue, searchType: $searchType, currentPage: $currentPage, todayNew: $todayNew, todaySettled: $todaySettled, monthlyNew: $monthlyNew, monthlySettled: $monthlySettled, growthOS: $growthOS, reportType: $reportType, customerwisereports: $customerwisereports, branchwisereports: $branchwisereports, customerSearchModel: $customerSearchModel, customerSearchFailureOrSucces: $customerSearchFailureOrSucces, customerReportsFailureOrSuccess: $customerReportsFailureOrSuccess, growthReportFailureOrSuccess: $growthReportFailureOrSuccess, employeenotificationsFailureOrSuccess: $employeenotificationsFailureOrSuccess, removeEmployeeNotificationFailureOrSuccess: $removeEmployeeNotificationFailureOrSuccess, bhVerificationPage: $bhVerificationPage, bhApprovePage: $bhApprovePage, bhbouncepage: $bhbouncepage, dropdownLabel: $dropdownLabel, deleteflag: $deleteflag, bhverificationdatas: $bhverificationdatas, bhverificationsortsdatas: $bhverificationsortsdatas, bhbouncedatas: $bhbouncedatas, bhdeletescheduleddatas: $bhdeletescheduleddatas, bhverifyapprovedata: $bhverifyapprovedata, bhBouncechequedata: $bhBouncechequedata, bhReturndata: $bhReturndata, deletescheduleddeleteFailureOrSuccess: $deletescheduleddeleteFailureOrSuccess, bhreturnfailureorsuccess: $bhreturnfailureorsuccess, employeenotification: $employeenotification, bhverificationFailureOrSuccess: $bhverificationFailureOrSuccess, bhdeletescheduledtranscationFailureorSuccess: $bhdeletescheduledtranscationFailureorSuccess, bhverifyapprovestatusfailureorSuccess: $bhverifyapprovestatusfailureorSuccess, bhverificationbouncefailureorsuccess: $bhverificationbouncefailureorsuccess, bhverificationsortfailureorsuccess: $bhverificationsortfailureorsuccess, bhbouncefailureorsuccess: $bhbouncefailureorsuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmployeeState &&
            const DeepCollectionEquality()
                .equals(other.loginToken, loginToken) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.radioButtonValue, radioButtonValue) &&
            const DeepCollectionEquality()
                .equals(other.searchType, searchType) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality().equals(other.todayNew, todayNew) &&
            const DeepCollectionEquality()
                .equals(other.todaySettled, todaySettled) &&
            const DeepCollectionEquality()
                .equals(other.monthlyNew, monthlyNew) &&
            const DeepCollectionEquality()
                .equals(other.monthlySettled, monthlySettled) &&
            const DeepCollectionEquality().equals(other.growthOS, growthOS) &&
            const DeepCollectionEquality()
                .equals(other.reportType, reportType) &&
            const DeepCollectionEquality()
                .equals(other.customerwisereports, customerwisereports) &&
            const DeepCollectionEquality()
                .equals(other.branchwisereports, branchwisereports) &&
            const DeepCollectionEquality()
                .equals(other.customerSearchModel, customerSearchModel) &&
            const DeepCollectionEquality().equals(
                other.customerSearchFailureOrSucces,
                customerSearchFailureOrSucces) &&
            const DeepCollectionEquality().equals(
                other.customerReportsFailureOrSuccess,
                customerReportsFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.growthReportFailureOrSuccess,
                growthReportFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.employeenotificationsFailureOrSuccess,
                employeenotificationsFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.removeEmployeeNotificationFailureOrSuccess,
                removeEmployeeNotificationFailureOrSuccess) &&
            const DeepCollectionEquality()
                .equals(other.bhVerificationPage, bhVerificationPage) &&
            const DeepCollectionEquality()
                .equals(other.bhApprovePage, bhApprovePage) &&
            const DeepCollectionEquality()
                .equals(other.bhbouncepage, bhbouncepage) &&
            const DeepCollectionEquality()
                .equals(other.dropdownLabel, dropdownLabel) &&
            const DeepCollectionEquality()
                .equals(other.deleteflag, deleteflag) &&
            const DeepCollectionEquality()
                .equals(other.bhverificationdatas, bhverificationdatas) &&
            const DeepCollectionEquality().equals(
                other.bhverificationsortsdatas, bhverificationsortsdatas) &&
            const DeepCollectionEquality()
                .equals(other.bhbouncedatas, bhbouncedatas) &&
            const DeepCollectionEquality()
                .equals(other.bhdeletescheduleddatas, bhdeletescheduleddatas) &&
            const DeepCollectionEquality()
                .equals(other.bhverifyapprovedata, bhverifyapprovedata) &&
            const DeepCollectionEquality()
                .equals(other.bhBouncechequedata, bhBouncechequedata) &&
            const DeepCollectionEquality()
                .equals(other.bhReturndata, bhReturndata) &&
            const DeepCollectionEquality().equals(
                other.deletescheduleddeleteFailureOrSuccess,
                deletescheduleddeleteFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.bhreturnfailureorsuccess, bhreturnfailureorsuccess) &&
            const DeepCollectionEquality()
                .equals(other.employeenotification, employeenotification) &&
            const DeepCollectionEquality().equals(
                other.bhverificationFailureOrSuccess,
                bhverificationFailureOrSuccess) &&
            const DeepCollectionEquality().equals(
                other.bhdeletescheduledtranscationFailureorSuccess,
                bhdeletescheduledtranscationFailureorSuccess) &&
            const DeepCollectionEquality().equals(
                other.bhverifyapprovestatusfailureorSuccess,
                bhverifyapprovestatusfailureorSuccess) &&
            const DeepCollectionEquality().equals(
                other.bhverificationbouncefailureorsuccess,
                bhverificationbouncefailureorsuccess) &&
            const DeepCollectionEquality().equals(other.bhverificationsortfailureorsuccess, bhverificationsortfailureorsuccess) &&
            const DeepCollectionEquality().equals(other.bhbouncefailureorsuccess, bhbouncefailureorsuccess));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(loginToken),
        const DeepCollectionEquality().hash(index),
        const DeepCollectionEquality().hash(isLoading),
        const DeepCollectionEquality().hash(radioButtonValue),
        const DeepCollectionEquality().hash(searchType),
        const DeepCollectionEquality().hash(currentPage),
        const DeepCollectionEquality().hash(todayNew),
        const DeepCollectionEquality().hash(todaySettled),
        const DeepCollectionEquality().hash(monthlyNew),
        const DeepCollectionEquality().hash(monthlySettled),
        const DeepCollectionEquality().hash(growthOS),
        const DeepCollectionEquality().hash(reportType),
        const DeepCollectionEquality().hash(customerwisereports),
        const DeepCollectionEquality().hash(branchwisereports),
        const DeepCollectionEquality().hash(customerSearchModel),
        const DeepCollectionEquality().hash(customerSearchFailureOrSucces),
        const DeepCollectionEquality().hash(customerReportsFailureOrSuccess),
        const DeepCollectionEquality().hash(growthReportFailureOrSuccess),
        const DeepCollectionEquality()
            .hash(employeenotificationsFailureOrSuccess),
        const DeepCollectionEquality()
            .hash(removeEmployeeNotificationFailureOrSuccess),
        const DeepCollectionEquality().hash(bhVerificationPage),
        const DeepCollectionEquality().hash(bhApprovePage),
        const DeepCollectionEquality().hash(bhbouncepage),
        const DeepCollectionEquality().hash(dropdownLabel),
        const DeepCollectionEquality().hash(deleteflag),
        const DeepCollectionEquality().hash(bhverificationdatas),
        const DeepCollectionEquality().hash(bhverificationsortsdatas),
        const DeepCollectionEquality().hash(bhbouncedatas),
        const DeepCollectionEquality().hash(bhdeletescheduleddatas),
        const DeepCollectionEquality().hash(bhverifyapprovedata),
        const DeepCollectionEquality().hash(bhBouncechequedata),
        const DeepCollectionEquality().hash(bhReturndata),
        const DeepCollectionEquality()
            .hash(deletescheduleddeleteFailureOrSuccess),
        const DeepCollectionEquality().hash(bhreturnfailureorsuccess),
        const DeepCollectionEquality().hash(employeenotification),
        const DeepCollectionEquality().hash(bhverificationFailureOrSuccess),
        const DeepCollectionEquality()
            .hash(bhdeletescheduledtranscationFailureorSuccess),
        const DeepCollectionEquality()
            .hash(bhverifyapprovestatusfailureorSuccess),
        const DeepCollectionEquality()
            .hash(bhverificationbouncefailureorsuccess),
        const DeepCollectionEquality().hash(bhverificationsortfailureorsuccess),
        const DeepCollectionEquality().hash(bhbouncefailureorsuccess)
      ]);

  @JsonKey(ignore: true)
  @override
  _$EmployeeStateCopyWith<_EmployeeState> get copyWith =>
      __$EmployeeStateCopyWithImpl<_EmployeeState>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  const factory _EmployeeState(
      {required String loginToken,
      required int index,
      required bool isLoading,
      required int radioButtonValue,
      required String searchType,
      required int currentPage,
      required bool todayNew,
      required bool todaySettled,
      required bool monthlyNew,
      required bool monthlySettled,
      required bool growthOS,
      required String reportType,
      List<CustomerwiseReportModel>? customerwisereports,
      List<GrowthReportDataModel>? branchwisereports,
      List<CustomerSearchModel>? customerSearchModel,
      required Option<Either<EmployeeFailures, List<CustomerSearchModel>>>
          customerSearchFailureOrSucces,
      required Option<Either<MainFailure, List<CustomerwiseReportModel>>>
          customerReportsFailureOrSuccess,
      required Option<Either<MainFailure, List<GrowthReportDataModel>>>
          growthReportFailureOrSuccess,
      required Option<Either<MainFailure, List<EmployeeNotificationModel>>>
          employeenotificationsFailureOrSuccess,
      required Option<Either<MainFailure, Unit>>
          removeEmployeeNotificationFailureOrSuccess,
      required bool? bhVerificationPage,
      required bool? bhApprovePage,
      required bool? bhbouncepage,
      required String? dropdownLabel,
      required int? deleteflag,
      List<BhverificationDatamodel>? bhverificationdatas,
      List<BhverificationSortDataModel>? bhverificationsortsdatas,
      List<BhverificationBounceDatamodel>? bhbouncedatas,
      List<BhDeleteScheduledTranscationsDataModel>? bhdeletescheduleddatas,
      String? bhverifyapprovedata,
      String? bhBouncechequedata,
      String? bhReturndata,
      required Option<Either<EmployeeFailures, String>>
          deletescheduleddeleteFailureOrSuccess,
      required Option<Either<EmployeeFailures, String>>
          bhreturnfailureorsuccess,
      List<EmployeeNotificationModel>? employeenotification,
      required Option<Either<EmployeeFailures, List<BhverificationDatamodel>>>
          bhverificationFailureOrSuccess,
      required Option<
              Either<EmployeeFailures,
                  List<BhDeleteScheduledTranscationsDataModel>>>
          bhdeletescheduledtranscationFailureorSuccess,
      required Option<Either<EmployeeFailures, String>>
          bhverifyapprovestatusfailureorSuccess,
      required Option<
              Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
          bhverificationbouncefailureorsuccess,
      required Option<
              Either<EmployeeFailures, List<BhverificationSortDataModel>>>
          bhverificationsortfailureorsuccess,
      required Option<Either<EmployeeFailures, String>>
          bhbouncefailureorsuccess}) = _$_EmployeeState;

  @override
  String get loginToken;
  @override
  int get index;
  @override
  bool get isLoading;
  @override
  int get radioButtonValue;
  @override
  String get searchType;
  @override
  int get currentPage;
  @override //-------------------Reports--------
  bool get todayNew;
  @override
  bool get todaySettled;
  @override
  bool get monthlyNew;
  @override
  bool get monthlySettled;
  @override
  bool get growthOS;
  @override
  String get reportType;
  @override
  List<CustomerwiseReportModel>? get customerwisereports;
  @override
  List<GrowthReportDataModel>? get branchwisereports;
  @override
  List<CustomerSearchModel>? get customerSearchModel;
  @override
  Option<Either<EmployeeFailures, List<CustomerSearchModel>>>
      get customerSearchFailureOrSucces;
  @override
  Option<Either<MainFailure, List<CustomerwiseReportModel>>>
      get customerReportsFailureOrSuccess;
  @override
  Option<Either<MainFailure, List<GrowthReportDataModel>>>
      get growthReportFailureOrSuccess;
  @override
  Option<Either<MainFailure, List<EmployeeNotificationModel>>>
      get employeenotificationsFailureOrSuccess;
  @override
  Option<Either<MainFailure, Unit>>
      get removeEmployeeNotificationFailureOrSuccess;
  @override ////////////////BH verification//////////////////////////
  bool? get bhVerificationPage;
  @override
  bool? get bhApprovePage;
  @override
  bool? get bhbouncepage;
  @override
  String? get dropdownLabel;
  @override
  int? get deleteflag;
  @override
  List<BhverificationDatamodel>? get bhverificationdatas;
  @override
  List<BhverificationSortDataModel>? get bhverificationsortsdatas;
  @override
  List<BhverificationBounceDatamodel>? get bhbouncedatas;
  @override
  List<BhDeleteScheduledTranscationsDataModel>? get bhdeletescheduleddatas;
  @override
  String? get bhverifyapprovedata;
  @override
  String? get bhBouncechequedata;
  @override
  String? get bhReturndata;
  @override
  Option<Either<EmployeeFailures, String>>
      get deletescheduleddeleteFailureOrSuccess;
  @override
  Option<Either<EmployeeFailures, String>> get bhreturnfailureorsuccess;
  @override
  List<EmployeeNotificationModel>? get employeenotification;
  @override
  Option<Either<EmployeeFailures, List<BhverificationDatamodel>>>
      get bhverificationFailureOrSuccess;
  @override
  Option<Either<EmployeeFailures, List<BhDeleteScheduledTranscationsDataModel>>>
      get bhdeletescheduledtranscationFailureorSuccess;
  @override
  Option<Either<EmployeeFailures, String>>
      get bhverifyapprovestatusfailureorSuccess;
  @override
  Option<Either<EmployeeFailures, List<BhverificationBounceDatamodel>>>
      get bhverificationbouncefailureorsuccess;
  @override
  Option<Either<EmployeeFailures, List<BhverificationSortDataModel>>>
      get bhverificationsortfailureorsuccess;
  @override
  Option<Either<EmployeeFailures, String>> get bhbouncefailureorsuccess;
  @override
  @JsonKey(ignore: true)
  _$EmployeeStateCopyWith<_EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}
