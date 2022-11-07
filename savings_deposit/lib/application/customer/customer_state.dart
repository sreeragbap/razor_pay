part of 'customer_bloc.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState({
    ////////token///////////////
    required String loginToken,
    ///////////loading variables////////////////
    required bool customerAccountsLoading,
    required bool customerProfileLoading,
    required bool customerScheduledTRansactionLoading,
    required bool customerNotificationLoading,
    required bool customerStatementDetailsLoading,
    required bool customerStatementTransactionsLoading,
    required bool customerSettlementLoading,
    required bool accountMoreInfoLoading,

    //------- New Sd -----------------

    required bool availableSchemesLoading,
    required bool newsdresponseLoading,
    required bool radioButtonActive,
    required bool nomineeACtive,
    required bool minor,
    required bool coApplicant,
    required int? coApplicantsubType,
    String? newSDdepositId,
    required String relationLabel,
    required String coapplicantRightsValue,
    required int employeeOrAgent,
    //----dob picker for nominne ----
    required DateTime currentDate,
    required int age,

    //-----newsd- Applicant----
    required String searchResultCustomerID,
    required String searchResultCustomerName,
    required int searchResultFirmId,
    required int searchResultBranchId,

    //-----newsd- scheme----
    required String? found,
    required int newSdschemeId,
    required String newSdschemeName,
    required double newSdinterest,
    required int newSdMinimumAmount,
    required int newSdMaximumAmount,
    required int newSdfirmId,
    required int newSdbranchid,
    //-----newsd- amount----
    required String newSdamount,
    //-----newsd- nominee----
    required String newSdnomineeName,
    required String newSdnomineedob,
    required String newSdnomineePhoneNumber,
    required String newSdnomineeGuardian,
    required String newSdrelationWithNominee,
    required String newSdnomineeHouseName,
    required String newSdnomineeSpouseOrParentName,
    required String newSdnomineeLocation,
    //-----newsd- employee----
    int? newSdemployeecode,
    String? newSdValidsalesCode,
    String? newsdResponse,
    required String newsdSalescode,
    required String newSdSalesPersonType,
    required int statusid,
    //-----newsd- co applicant----
    String? newSdcoApplicantName,
    String? newSdcoApplicantdob,
    String? newSdcoApplicantId,
    String? newSdcoApplicantPhoneNumber,
    String? newSdcoApplicantHouseName,
    String? newSdcoApplicantAddress,
    //----newsd- transaction detials------
    String? newSdchequeNo,
    String? newSdcustomerBank,
    String? newSdbranchName,
    String? newSdrealizationDate,
    int? branchBankAccounNumber,
    String? branchBankAccountName,
    required String newSdtransactionMethod,
    //------------ Deposit-----------------

    required bool customerPaymentCardLoading,
    required bool depositLoading,
    required int accountCardIndex,
    required int schemeCardIndex,
    required int paymentCardIndex,
    required String chequeNumber,
    required String depositIfscCode,
    required DateTime depositRealizationDate,
    required String depositAmount,
    required bool isIfscValid,
    required String subsidiaryBank,
    required int subsidiaryAccountNumber,

    //----------------Mpin-----------------

    // required bool mpinLoading,

    //-------------withdrawal-----------------
    required bool sdsearchaccountdetailsLoading,
    required bool goldLoanaccountdetailsLoading,
    required bool customerOtherBankLoading,
    required int otherbankindex,
    required int nonSettledcardindex,
    required bool withdarawalpostLoading,
    required double withdrawalAmount,
    required bool scheduleWeek,
    required bool scheduleMonth,
    required String recurringType,
    required bool switchbuttondate,
    required bool scheduledbutton,
    // required int addcount,
    // required int subcount,
    required int count,
    required String sdsearchNo,
    required String sdResponse,
    required String sdstatus,
    // required String sdphonenumber,

    //---------------MPIN LOGIN-------------------

    // required String devicetokenid,
    // required String mpincode,
    // required String deviceid,
    // required String mpin,

    //-----------------Settlement---------

    required bool checkboxSelectionCash,

    ///////////////succ or fail ////////////////

    //-----------------Mpin Success or Failure----------------
    // required Option<Either<MpinFailure, MpinDataModel>>
    //     mpinSuccessorfailureOption,
    // //-------------------------------------------------------
    required Option<Either<CustomerFailure, List<CustomerAccountsModel>>>
        customerAccountSuccessOrfailOption,
    required Option<Either<CustomerFailure, List<CustomerNotificationModel>>>
        customerNotificationSuccessOrfailOption,
    required Option<Either<CustomerFailure, CustomerProfileModel>>
        customerProfileSuccessOrfailOption,
    required Option<
            Either<CustomerFailure, List<CustomerScheduleTransactionModel>>>
        customerScheduledTransactionSuccessOrfailOption,
    required Option<Either<MainFailure, CustomerStatementDetails>>
        customerStatementSuccessOrfailOption,
    required Option<Either<MainFailure, List<CustomerStatementTransactions>>>
        customerStatementTransactionsSuccessOrfailOption,
    required Option<Either<MainFailure, SettlementModel>>
        settlementDetailsFailureOrSuccess,
    required Option<Either<MainFailure, Unit>> settlementFailureOrSuccess,
    required Option<Either<RemoveScheduledTransactionFailure, String>>
        removeScheduledTransactionFailureOrSuccess,
    required Option<Either<MainFailure, Unit>>
        removeCustomerNotificationFailureOrSuccess,
    required Option<Either<CustomerFailure, AccountMoreInfoModel>>
        accountMoreInfoFailureOrSuccess,

    //-----------------New Sd-------------------
    required Option<Either<NewSdFailure, List<AvailableSchemesDataModel>>>
        availableSchemeFailureOrSuccess,
    required Option<Either<NewSdFailure, NewSdPostResponseDataModel>>
        newSdPostFailureOrSuccess,
    required Option<Either<NewSdFailure, List<NomineeRelationDataModel>>>
        nomineeRelationFailureOrSuccess,
    required Option<Either<NewSdFailure, List<CoApplicantRightsModel>>>
        coApplicantRightsFailureOrSuccess,
    required Option<Either<NewSdFailure, EmployeeOrAgentDataModel>>
        validateSalescodeFailureOrSuccess,
    required int tdsCode,
    required bool taxPayer,
    //--------------------Deposit---------------

    required Option<Either<DepositFailure, DepositModel>>
        depositFailureOrSuccess,
    required Option<Either<DepositFailure, List<PaymentCardModel>>>
        customerPaymentSuccessOrfailOption,
    required Option<Either<DepositFailure, IfscCodeModel>>
        ifscCodeFailureOrSuccess,
    required Option<Either<DepositFailure, List<CustomerBankModel>>>
        customerBankFailureOrSuccess,

    //-------------------withdrawal-----------------------
    required Option<Either<CustomerFailure, List<CustomerOtherBankDataModel>>>
        customerOtherBankSuccessOrfailOption,
    required Option<Either<CustomerFailure, PostwithdrawalResponseDatamodel>>
        withdrawalPostFailureOrSuccess,
    required Option<Either<CustomerFailure, SdAccountSearchDataModel>>
        sdaccountdetailsFailureorSuccess,
    required Option<Either<CustomerFailure, GoldLoanSearchDataModel>>
        goldLoandetailsFailureorSuccess,
    required Option<Either<CustomerFailure, RdDataModel>>
        rddetailsFailureorSuccess,

    ////////////////////data variables/////////////////////////
    NewSdPostResponseDataModel? newSdPostResponseDataModel,
    EmployeeOrAgentDataModel? employeeOrAgentDataModel,
    CustomerProfileModel? customerProfile,
    List<CustomerAccountsModel>? customerAccounts,
    List<CustomerAccountsModel>? customerActiveAccounts,
    List<CustomerNotificationModel>? customerNotification,
    List<CustomerScheduleTransactionModel>? customerScheduleTransaction,
    CustomerStatementDetails? customerStatementDetails,
    List<CustomerStatementTransactions>? customerStatementTransactions,
    List<UpdatedCustomerStatementTransaction>?
        updatedCustomerStatementTransaction,
    AccountMoreInfoModel? accountMoreInfo,
    CustomerStatementSelectedDate? customerStatementSelectedDate,
    double? creditTotal,
    double? debitTotal,
    SettlementModel? settlementDetails,
    //-----------New sd Models --------------------
    List<AvailableSchemesDataModel>? availableschemeModel,
    List<NomineeRelationDataModel>? nomineeRelationDataModel,
    List<CoApplicantRightsModel>? coApplicantRightsModel,
    //------------------Deposit Models-----------

    List<PaymentCardModel>? customerPaymentDetails,
    IfscCodeModel? ifscCodeDetails,
    List<CustomerBankModel>? customerBankDetails,
    DepositModel? depositDetails,
    //------------------Withdrawal-------------------
    // String? withdrawalpostdatas,
    PostwithdrawalResponseDatamodel? postwithdrawaldatas,
    List<CustomerOtherBankDataModel>? customerOtherBankAccounts,
    SdAccountSearchDataModel? sdaccountsearchdatas,
    GoldLoanSearchDataModel? goldloansearchdatas,
    RdDataModel? rdsearchDatas,

    //--------------------Mpin Datamodel----------------------
    // MpinDataModel? mpindatas,

    ////////////////////////page variables/////////////////////////////
    required bool? statementPage,
    required bool? customerAccountInfoPage,
    required bool? settlementPage,
    required bool? withdrawalPage,
    required bool? depositPage,
    required bool? newSdPage,
    /////////////////////////////////////////////////
    String? dropDownLabel,
    required bool? forOneDay,
    required bool? forEveryMonth,
    required int? removeScheduledTransactionflag,
    required String? datepicker,
  }) = _CustomerState;
  factory CustomerState.initial() {
    return CustomerState(
      loginToken: "",
      age: 0,
      customerAccountInfoPage: true,
      customerStatementTransactionsLoading: false,
      customerStatementDetailsLoading: false,
      accountMoreInfoLoading: false,
      customerSettlementLoading: false,
      statementPage: false,
      settlementPage: false,
      withdrawalPage: false,
      depositPage: false,
      newSdPage: false,
      customerAccountsLoading: false,
      customerOtherBankLoading: false,
      withdarawalpostLoading: false,
      customerNotificationLoading: false,
      customerProfileLoading: false,
      customerScheduledTRansactionLoading: false,
      customerAccounts: [],
      customerActiveAccounts: [],
      customerOtherBankAccounts: [],
      customerNotification: [],
      customerScheduleTransaction: [],
      customerStatementTransactions: [],
      updatedCustomerStatementTransaction: [],
      creditTotal: 0,
      debitTotal: 0,
      dropDownLabel: "Sort",
      datepicker: "",
      customerAccountSuccessOrfailOption: none(),
      customerOtherBankSuccessOrfailOption: none(),
      customerNotificationSuccessOrfailOption: none(),
      customerProfileSuccessOrfailOption: none(),
      customerScheduledTransactionSuccessOrfailOption: none(),
      customerStatementSuccessOrfailOption: none(),
      customerStatementTransactionsSuccessOrfailOption: none(),
      settlementDetailsFailureOrSuccess: none(),
      settlementFailureOrSuccess: none(),
      removeScheduledTransactionFailureOrSuccess: none(),
      availableSchemeFailureOrSuccess: none(),
      depositFailureOrSuccess: none(),
      customerPaymentSuccessOrfailOption: none(),
      sdaccountdetailsFailureorSuccess: none(),
      rddetailsFailureorSuccess: none(),
      goldLoandetailsFailureorSuccess: none(),

      withdrawalPostFailureOrSuccess: none(),
      removeCustomerNotificationFailureOrSuccess: none(),
      newSdPostFailureOrSuccess: none(),
      validateSalescodeFailureOrSuccess: none(),
      ifscCodeFailureOrSuccess: none(),
      customerBankFailureOrSuccess: none(),
      coApplicantRightsFailureOrSuccess: none(),
      nomineeRelationFailureOrSuccess: none(),
      accountMoreInfoFailureOrSuccess: none(),
      radioButtonActive: false,
      relationLabel: 'Relation',
      minor: false,
      employeeOrAgent: 0,
      coApplicant: false,
      availableSchemesLoading: false,
      forEveryMonth: false,
      forOneDay: false,
      removeScheduledTransactionflag: 0,
      searchResultCustomerID: '',
      searchResultBranchId: 0,
      searchResultCustomerName: '',
      searchResultFirmId: 0,
      newSdschemeId: 0,
      newSdfirmId: 0,
      newSdbranchid: 0,
      newSdamount: "",
      newSdinterest: 0.0,
      newSdnomineeName: "",
      newSdnomineedob: "",
      newSdnomineePhoneNumber: "",
      newSdnomineeGuardian: "",
      newSdrelationWithNominee: "",
      newSdnomineeHouseName: "",
      newSdnomineeLocation: "",
      newSdtransactionMethod: "",
      newSdemployeecode: 0,
      depositLoading: false,
      customerPaymentCardLoading: false,
      customerPaymentDetails: [],
      accountCardIndex: 0,
      paymentCardIndex: 0,
      nonSettledcardindex: 0,
      depositAmount: '',
      depositIfscCode: '',
      subsidiaryBank: 'Branch Bank',
      depositRealizationDate: DateTime.now(),
      chequeNumber: '',
      schemeCardIndex: 0,
      otherbankindex: 0,
      newSdMaximumAmount: 0,
      newSdMinimumAmount: 0,
      newSdschemeName: '',
      nomineeACtive: false,
      withdrawalAmount: 0.0,
      checkboxSelectionCash: false,
      scheduleWeek: false,
      scheduleMonth: false,
      newSdnomineeSpouseOrParentName: "",
      currentDate: DateTime.now(),
      switchbuttondate: false,
      scheduledbutton: false,
      sdsearchNo: '',
      sdstatus: "",
      // sdphonenumber: '',
      sdResponse: "",
      sdsearchaccountdetailsLoading: false,
      goldLoanaccountdetailsLoading: false,
// sdaccountsearchdatas: ,

      // addcount: 0,
      // subcount: 0,
      tdsCode: 0,
      coApplicantsubType: 0,
      taxPayer: false,
      count: 1,
      recurringType: "",
      newsdSalescode: '',
      newSdSalesPersonType: '',
      found: '',
      isIfscValid: false,
      customerBankDetails: [],
      subsidiaryAccountNumber: 0,
      newsdresponseLoading: false,
      coapplicantRightsValue: 'Select',
      statusid: 0,
      // mpinLoading: true,
      // mpinSuccessorfailureOption: none(),

//------Mpin-----------

      // devicetokenid: "",
      // mpincode: "",
      // deviceid: "",
      // mpin: "",
    );
  }
}
