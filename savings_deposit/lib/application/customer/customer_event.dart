part of 'customer_bloc.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  //---------------------------------MPIN lOGIN----------------------------------

  // const factory CustomerEvent.getdevicetokenUniqueID() =
  //     _GetdevicetokenUniqueID;

  //   const factory CustomerEvent.getdevicetokenUniqueID(
  // // {required String? devicetokenid}
  // ) = _GetdevicetokenUniqueID;

  // const factory CustomerEvent.mpinfetchpostdatas({
  //   required String mpincode,
  //   required String deviceid,
  // }) = _mpinfetchpostdatas;

  // const factory CustomerEvent.mpinType(String mpin) = _MpinType;

  const factory CustomerEvent.started() = _Started;

  const factory CustomerEvent.saveLoginToken({required String loginToken}) =
      _SaveLoginToken;

  const factory CustomerEvent.fetchCustomerProfile({
    required String customerId,
  }) = _FetchCustomerProfile;
  const factory CustomerEvent.fetchCustomerAccounts({
    required String customerId,
  }) = _FetchCustomerAccounts;
  const factory CustomerEvent.fetchCustomerNotifications({
    required String customerId,
  }) = _FetchCustomerNotifications;
  const factory CustomerEvent.fetchCustomerScheduledTransactions({
    required String customerId,
  }) = _FetchCustomerScheduledTransactions;

  const factory CustomerEvent.fetchAccountMoreInfo({
    required String depositId,
  }) = _FetchAccountMoreInfo;

  const factory CustomerEvent.saveCustomerStatementSelectedDate({
    required String fromDate,
    required String toDate,
  }) = _SaveCustomerStatementSelectedDate;

  const factory CustomerEvent.dropDownEvent({required dynamic value}) =
      _DropDownEvent;
  const factory CustomerEvent.statementAccountDetails({
    required String loginToken,
    required String customerId,
    required String accountNumber,
    required String fromDate,
    required String toDate,
  }) = _StatementAccountDetails;
  const factory CustomerEvent.statementTransactions({
    required String loginToken,
    required String customerId,
    required String accountNumber,
    required String fromDate,
    required String toDate,
  }) = _StatementTransactions;

  const factory CustomerEvent.storeUpdatedStatementTransactions(
      {required List<UpdatedCustomerStatementTransaction>
          updatedCustomerStatementTransaction,
      required double creditTotal,
      required double debitTotal}) = _StoreUpdatedStatementTransactions;

  //--------------------------Settlement-------------
  const factory CustomerEvent.checkboxSelectedCash({bool? setCheckboxValue}) =
      _CheckboxSelectedCash;

  const factory CustomerEvent.getSettlementDetails({
    required String accountNumber,
    required String customerId,
  }) = _GetSettlementDetails;
  const factory CustomerEvent.settleCustomer(
      {required String accountNumber,
      required String customerId}) = _SettleCustomer;

  //----------New Sd----------------------
  const factory CustomerEvent.newSdNomineeRelationListApiCall() =
      _NewSdNomineeRelationListApiCall;
  const factory CustomerEvent.coApplicantRightsApiCall() =
      _CoApplicantRightsApiCall;
  const factory CustomerEvent.newSDResponse({
    required String response,
  }) = _NewSDResponse;
  const factory CustomerEvent.newsdNomineeDob({
    required DateTime choosenDate,
  }) = _NewsdNomineeDob;
  const factory CustomerEvent.schemeCardChanged({
    required int? schemeCardIndex,
  }) = _SchemeCardChanged;
  const factory CustomerEvent.resetRadioButton() = _ResetRadioButton;
  const factory CustomerEvent.nomineeActive() = _NomineeActive;
  const factory CustomerEvent.nomineeMinor() = _NomineeMinor;
  const factory CustomerEvent.relationWithApplicant(
      {required dynamic relation}) = _RelationWithApplicant;
  const factory CustomerEvent.coApplicantRights({
    required int? coApplicantSubType,
    required dynamic coApplicantRights,
  }) = _CoApplicantRights;
  const factory CustomerEvent.employeeOrAgent(int employeeORagent) =
      _EmployeeOrAgent;

  const factory CustomerEvent.availableSchemes({required String branchid}) =
      _AvailableSchemes;
  const factory CustomerEvent.searchResultCustomerIdEvent(
    String customerIdSearchResult,
    String customerName,
    int firmId,
    int branchId,
  ) = _searchResultCustomerIdEvent;
  const factory CustomerEvent.newSdEmployeeBranchDetails({
    required int firmId,
    required int branchid,
    required int employeecode,
    required String? branchName,
  }) = _NewSdEmployeeBranchDetails;
  const factory CustomerEvent.newSdcoApplicantDetails(
    String? coApplicantName,
    String? coApplicantICustomerId,
    String? coApplicantdob,
    String? coApplicantPhoneNumber,
    String? coApplicantHouseName,
    String? coApplicantAddress,
  ) = _NewSdCoApplicantDetails;
  const factory CustomerEvent.newSdnomineeDetails({
    required String nomineeName,
    required String nomineedob,
    required String nomineePhoneNumber,
    required String nomineeGuardian,
    required String relationWithNominee,
    required String nomineeHouseName,
    required String nomineeParentOrSpouseName,
    required String nomineelocation,
  }) = _NewSdNomineeDetails;
  const factory CustomerEvent.newSdShemeDetails() = _NewSdShemeDetails;

  const factory CustomerEvent.newSdTransactionDetails({
    required String? realizationDate,
    required String? customerBank,
    required String? customerBankBranch,
    required int? branchBankAccountNuber,
    required String? branchBankAccountName,
    required String? chequeNo,
    required String transactionMethod,
  }) = _NewSdTransactionDetails;
  const factory CustomerEvent.newSdAmount({required String newSdAmount}) =
      _NewSdAmount;
  const factory CustomerEvent.newSdSalescode({
    required String newSdsalesCode,
  }) = _NewSdSalescode;
  const factory CustomerEvent.salescodevalidateOrNot({
    required String? found,
  }) = _SalescodevalidateOrNot;

  const factory CustomerEvent.resetSalesCode() = _ResetSalesCode;

  const factory CustomerEvent.newSdValidateAganeOrEmployee({
    required String newSdsalesCode,
    required String agentOrEmployee,
  }) = _NewSdValidateAganeOrEmployee;

  const factory CustomerEvent.newSdPostingValues(
      {required String customerId,
      required String customerName,
      required int firmId,
      required int subsidiaryAccountNo,
      required int moduleId}) = _NewSdPostingValues;

  const factory CustomerEvent.enableNewSdTaxpayer() = _EnableNewSdTaxpayer;

  //----------------------------Deposit--------------------

//-----------------------------fetch payment card---------------------//
  const factory CustomerEvent.fetchPaymentCards({
    required String userType,
    required String paymentType,
  }) = _FetchPaymentCards;

  //----------------------------------------------------------------------//
  const factory CustomerEvent.fetchIfscCode() = _FetchIfscCode;
  const factory CustomerEvent.subsidiaryBank(
      {required dynamic subsidiaryBank}) = _SubsidiaryBank;

  const factory CustomerEvent.subsidiaryAccountNumber(
      {required int subsidiaryAccountNumber}) = _SubsidiaryAccountNumber;

  const factory CustomerEvent.fetchBankDetails() = _FetchBankDetails;

  const factory CustomerEvent.setDropDownBankToInitial() =
      _SetDropDownBankToInitial;

  const factory CustomerEvent.deposit({
    required String? accountNumber,
    required int? branchId,
    required int? firmId,
    required String? depositAmount,
    required String? transactionMethod,
    required String? depositChequeNumber,
    required String? depositCustomerBank,
    required String? subsidiaryBank,
    required int? subsidiaryAccountNumber,
    required int? empCode,
    required String? customerName,
    required DateTime? depositRealizationDate,
  }) = _Deposit;

  const factory CustomerEvent.accountCardChanged({
    required int? accountCardIndex,
  }) = _AccountCardChanged;
  const factory CustomerEvent.paymentCardChanged({
    required int? paymentCardIndex,
  }) = _PaymentCardChanged;

  const factory CustomerEvent.updateChqueNumber(String depositChequeNumber) =
      _UpdateChqueNumber;
  const factory CustomerEvent.updateIfscCode(String depositIfscCode) =
      _UpdateIfscCode;

  const factory CustomerEvent.updateCustomerBank(String subsidiaryBank) =
      _UpdateCustomerBank;
  const factory CustomerEvent.updateRealizationDate(
      DateTime depositRealizationDate) = _UpdateRealizationDate;
  const factory CustomerEvent.updateAmount(String depositAmount) =
      _UpdateAmount;

  /////////////////////////////////removeScheduledTransaction/////////////
  const factory CustomerEvent.removeScheduledTransaction({
    required int rtId,
    required String transactionDate,
    required int flag,
    required String userType,
  }) = _RemoveScheduledTransaction;

  ///////////////////remove customer Notification//////////////////
  const factory CustomerEvent.removeCustomerNotification(
      {required String userId,
      required int alertId}) = _RemoveCustomerNotification;

  ///////////////////page events/////////////////////
  const factory CustomerEvent.newSdPageEvent() = _NewSdPageEvent;
  const factory CustomerEvent.customerAccountInfoPageEvent() =
      _CustomerAccountInfoPageEvent;
  const factory CustomerEvent.fundTransferPageEvent() = _FundTransferPageEvent;
  const factory CustomerEvent.depositPageEvent() = _DepositPageEvent;
  const factory CustomerEvent.settlementPageEvent() = _SettlementPageEvent;
  const factory CustomerEvent.statementPageEvent() = _StatementPageEvent;
  /////////////////////////////////////checkbox event////////////////
  const factory CustomerEvent.removeScheduledTransactionforOneDay() =
      _RemoveScheduledTransactionforOneDay;
  const factory CustomerEvent.removeScheduledTransactionforEveryMonth() =
      _RemoveScheduledTransactionforEveryMonth;

  const factory CustomerEvent.negateCheckBoxValue() = _NegateCheckBoxValue;

///////////date picker in withdrawal page///////////////////
  const factory CustomerEvent.datepicker({
    required String? tradatepicker,
  }) = _Datepicker;

  const factory CustomerEvent.withdrawalUpdated(String withdrawalAmount) =
      _WithdrawalUpdated;
  const factory CustomerEvent.scheduledWeekCheckbox(bool weekcheck) =
      _ScheduledWeekCheckbox;
  const factory CustomerEvent.scheduledMonthcheckbox(
    bool monthcheck,
  ) = _ScheduledMonthcheckbox;
  const factory CustomerEvent.clearCheckbox() = _clearCheckbox;

  const factory CustomerEvent.clearedtextfield() = _Clearedtextfield;
  const factory CustomerEvent.switchbutton(bool switchbutton) = _Switchbutton;

  const factory CustomerEvent.scheduledbutton(bool scheduleddatebutton) =
      _Scheduledbutton;

  const factory CustomerEvent.incrementbutton() = _Incrementbutton;
  const factory CustomerEvent.decrementbutton() = _Decrementbutton;

  //////////////Withdrawal Post Method Event////////////////////
  const factory CustomerEvent.otherBankcardchanged({
    required int? otherbankindex,
  }) = _OtherBankcardchanged;

  const factory CustomerEvent.nonSettledAccountcardchanged({
    required int? nonSettledcardindex,
  }) = _NonSettledAccountcardchanged;

  const factory CustomerEvent.fetchCustomerOtherBankAccounts({
    required String customerId,
    required String userType,
  }) = _FetchCustomerOtherBankAccounts;
  //---------------sdcard search Account number--------------
  const factory CustomerEvent.sdsearchaccountno(String sdsearchNo) =
      _sdsearchaccountno;
  // const factory CustomerEvent.sdsearchmobileno(String sdphonenumber) =
  //     _sdsearchmobileno;

  const factory CustomerEvent.searchsdaccountbutton({
    required String depositid,
    required String userType,
    // required String phonenumber,
  }) = _Searchsdaccountbutton;
  const factory CustomerEvent.searchgoldLoanno(
      {required String pledgeno, required String usertype}) = _SearchgoldLoanno;
  const factory CustomerEvent.searchRdNo(
      {required String depositid, required String userType}) = _SearchRdNo;

  // const factory CustomerEvent.sdsearchResponseStatus(
  //     {required String sdStatus}) = _SdsearchResponseStatus;
  const factory CustomerEvent.searchsdReponsesStatus(
      {required String sdstatus}) = _SearchsdReponsesStatus;

  const factory CustomerEvent.sdsearchclearDatamodel() =
      _SdsearchclearDatamodel;

  const factory CustomerEvent.withdrawalpostmethod({
    required String customerId,
    required String? depositid,
    required int? branchid,
    required int? firmid,
    required double? amount,
    required String? transactionMethod,
    required String? token,
    int? moduleId,
    // required String? traDate,
    // int? chqno,
    // String? customerBank,
    String? branchName,
    String? bankaccountNo,
    String? empcode,
    String? customerName,
    // int? userid,
    String? usertype,
    String? ifsccode,
    String? recurring,
    int? noOfTimes,
    DateTime? startDate,
    DateTime? closeDate,
    // DateTime? realizationDate
  }) = _Withdrawalpostmethod;
}
