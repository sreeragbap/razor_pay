part of 'employee_bloc.dart';

@freezed
class EmployeeEvent with _$EmployeeEvent {
  const factory EmployeeEvent.started() = _Started;
  const factory EmployeeEvent.indexChanging(int index) = _IndexChanging;
  const factory EmployeeEvent.radioButttonGroupValueEvent(
    int selectedRadioButton,
  ) = _RadioButttonGroupValueEvent;
  const factory EmployeeEvent.searchCustomer(
    String searchValue,
    String searchType,
    int currentPage,
  ) = _SearchCustomer;
  const factory EmployeeEvent.searchCustomerLoading(
    String searchValue,
    String searchType,
  ) = _SearchCustomerLoading;
  const factory EmployeeEvent.getCustomerwiseReports(
      {required int branchId, required int firmId}) = _GetCustomerwiseReports;
  const factory EmployeeEvent.getBranchwiseReports(
      {required int flag, required int firmId}) = _GetBranchwiseReports;

  //-----------Bh verify Getdatas--------------------------
  const factory EmployeeEvent.bhverificationinitialEvent() =
      _bhverificationinitialEvent;
  //------------------Get DeletedScheduledTranscation details--------------
  const factory EmployeeEvent.getbhdeletedscheduledtranscationdetails() =
      _Getbhdeletedscheduledtranscationdetails;

  //----Bh verify Button Event---------
  const factory EmployeeEvent.bhverificationApproveEvent({
    required String depositid,
    required int bhid,
    required int branchid,
    required String chequeno,
    required int firmid,
    required int moduleid,
    required DateTime chequecleardate,
  }) = _bhverificationApproveEvent;
  //---------------Bh Return Button Event--------------------

  const factory EmployeeEvent.bhverificationReturnEvent({
    required String depositid,
    required String chequeno,
  }) = _bhverificationReturnEvent;
  //----------Bh verify Sortget data Dropdown List---------------
  const factory EmployeeEvent.bhverificationSortEvent() =
      _bhverificationSortEvent;
  //----------------2nd option------------------------
  const factory EmployeeEvent.bhverificationSortbhverificationpageEvent() =
      _bhverificationSortbhverificationpageEvent;
  //-----------Bhverification DropDown List---------------
  const factory EmployeeEvent.bhverifyDropdownListButtonEvent(
      {required dynamic value}) = _bhverifyDropdownListButtonEvent;
  //------------------Bh verification get Bounce Details--------------------

  const factory EmployeeEvent.getBhBounceListdetails() =
      _GetBhBounceListdetails;
  //-------------------BH Bounce button pressed----------------------------
  const factory EmployeeEvent.bhBouncebuttonPressed(
      {required String chequeno,
      required String depositid,
      required String empid}) = _BhBouncebuttonPressed;

// //-------------------Bh-Delete-Scheduled-Transcations----------------
  const factory EmployeeEvent.deleteScheduledTranscations({
    required int flag,
    required int rtId,
    required DateTime transactionDate,
    required String userType,
    required int bhId,
  }) = _DeleteScheduledTranscations;
  //-----------------bh Deleted only- one month-----------------
  const factory EmployeeEvent.deleteScheduledAnyMonth() =
      _DeleteScheduledAnyMonth;
  const factory EmployeeEvent.deleteScheduledTransactionAllMonth() =
      _deleteScheduledTransactionAllMonth;
//-------------------------------------------------------------------------------------
  const factory EmployeeEvent.getEmployeeNotifications(
      {required String employeeid}) = _Getemployeenotifications;
  const factory EmployeeEvent.removeEmployeeNotification(
      {required String userId,
      required int alertId}) = _RemoveEmployeeNotification;
     

  const factory EmployeeEvent.saveLoginToken({required String loginToken}) = _SaveLoginToken;
  

}
