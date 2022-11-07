const _kBaseURl = "http://docker.mactech.net.in:6005";

double apiVersion = 1.0;

const urlPort = "9010";
const authority = "docker.mactech.net.in:$urlPort";

const urlport2 = "9010";
//WithdrawalRepo ->[/withdrawal, /WithdrawaltoGl, /WithdrawalToRD]
//CustomerRepo   ->[ /CustomerTOaccounts]
const authority2 = "docker.mactech.net.in:$urlport2";

class ApiEndPoints {
  static const addNote = "$_kBaseURl/addnotes";
  static const deleteNote = "$_kBaseURl/DeleteNote";
  static const getNote = "$_kBaseURl/Getnotes";
  static const resendOtp = "$_kBaseURl/sendOTP";
  static const customerStatement = "$_kBaseURl/GetStatementDetails";
  static const fetchIfscCode = "$_kBaseURl/IFSCsearch";
  static const getCustomerBanks = "$_kBaseURl/SubsidaryBanks";
  static const settlement = "$_kBaseURl/Settlement";
  static const getSettlementDetails = "$_kBaseURl/Accountsummary";
  static const getbhverificationDetails =
      "http://docker.mactech.net.in:6005/GetBhverification";
  static const getbhverificationsortDetails = "$_kBaseURl/sortedBhApprove";
  static const getbhverificationbounceDetails = "$_kBaseURl/sortedBouncecheque";

  static const putReturnBhDetails = "$_kBaseURl/return_cheque";
  static const putbhbouncedetails = "$_kBaseURl/PutBHBounceCheques";
  static const putApproveBhstatusDetails = "$_kBaseURl/PutBhApprove";

  static const chequeEmployeeBounce = "$_kBaseURl/PutemployeeBounceCheques";
  static const chequeEmployeeVerification =
      "$_kBaseURl/Cheque_EmployeeVerificaton";
  static const getChequeRecounciledList = "$_kBaseURl/ChequeReconsiledList";
  static const customerwiseReportDetails = "$_kBaseURl/Reports/Branch";
  static const branchwiseReportDetails = "$_kBaseURl/Reports/Company";
  static const fetchEmployeenotifications = "$_kBaseURl/Notifications";
  static const removeScheduledTransaction =
      "$_kBaseURl/DeleteScheduledTransactions/Ntransactions";
  static const removeEmployeeNotification = "$_kBaseURl/clearNotification";
  // static const confirmOtp = "$_kBaseURl/VerifyOTP";

  // static const splash = "$_kBaseURl/Splash/ApplicationDetails";
  // static const login = "$_kBaseURl/Login1";

  // static const getCustomerStatementTransactions =
  //     "$_kBaseURl/GetStatementTransatctionDetails";
  // static const customerDeposit = "$_kBaseURl/PostDeposit";
  // static const fetchPaymentCardDetails = "$_kBaseURl/GetPaymentGetwayMaster";

  // static const newSd = "$_kBaseURl/GetEligibleSchemes";

  // static const withdrawal = "$_kBaseURl/Withdrawal";
  // static const getCustomerAccountCardsDetails =
  //     "http://docker.mactech.net.in:6002/GetCustomerAccounts";

  // static const getCustomerOtherBankCardDetails =
  //     "$_kBaseURl/CustomerTOaccounts";
  // static const getCustomerDetails = "$_kBaseURl/GetcustomerDetails";
  // static const getCustomerScheduledTransactionDetails =
  //     "$_kBaseURl/GetScheduledTransactions";
  // static const getCustomertNotificationDetails = "$_kBaseURl/Notifications";

  // static const searchCustomers = "$_kBaseURl/SearchCustomer";

  // static const postNewSavingsAccount = "$_kBaseURl/PostAccountOpeningFinal";
  // static const validateSalescode = "$_kBaseURl/SearchAgent/Employee";
  // static const coApplicantRights = "$_kBaseURl/CoApplicantRights";
  // static const nomineeRelations =
  //     "http://docker.mactech.net.in:6002/Relationships";
  // static const checkMobileNumberAndSendOTP =
  //     "$_kBaseURl/OTPSendtoEmployeesForget";
  // static const changePassword = "$_kBaseURl/forgetpassword";
  // static const regcheckMobileNumberAndSendOTP =
  //     "$_kBaseURl/OTPSendtoEmployeesReg";
  // static const getEmployeeDetails = "$_kBaseURl/GetCustomer/mobilenumber";

  // static const registerEmployee = "$_kBaseURl/PostRegistration1";
  // static const removeCustomerNotification = "$_kBaseURl/clearNotification";

}
