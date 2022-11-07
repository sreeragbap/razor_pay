// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Already have an account?`
  String get alreadyHaveanAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveanAccount',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get customer {
    return Intl.message(
      'Customer',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter UserId`
  String get EnterUserID {
    return Intl.message(
      'Please Enter UserId',
      name: 'EnterUserID',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP`
  String get EnterOtp {
    return Intl.message(
      'Enter OTP',
      name: 'EnterOtp',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter You Password`
  String get EnterPassword {
    return Intl.message(
      'Please Enter You Password',
      name: 'EnterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter OTP in`
  String get EnterOtpWithin {
    return Intl.message(
      'Enter OTP in',
      name: 'EnterOtpWithin',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPasswordLabel {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPasswordLabel',
      desc: '',
      args: [],
    );
  }

  /// `here`
  String get here {
    return Intl.message(
      'here',
      name: 'here',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get initialPageRegister {
    return Intl.message(
      'Register',
      name: 'initialPageRegister',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get initialPageLogin {
    return Intl.message(
      'Login',
      name: 'initialPageLogin',
      desc: '',
      args: [],
    );
  }

  /// `Login Success`
  String get loginSuccess {
    return Intl.message(
      'Login Success',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get labelPhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'labelPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Login Here`
  String get loginHere {
    return Intl.message(
      'Login Here',
      name: 'loginHere',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Password and UserID is not Matching`
  String get passwordandIdNotMatching {
    return Intl.message(
      'Password and UserID is not Matching',
      name: 'passwordandIdNotMatching',
      desc: '',
      args: [],
    );
  }

  /// `Login ID`
  String get loginId {
    return Intl.message(
      'Login ID',
      name: 'loginId',
      desc: '',
      args: [],
    );
  }

  /// `മലയാളം`
  String get malayalam {
    return Intl.message(
      'മലയാളം',
      name: 'malayalam',
      desc: '',
      args: [],
    );
  }

  /// `MABEN NIDHI LIMITED`
  String get MABEN_NIDHI_LIMITED {
    return Intl.message(
      'MABEN NIDHI LIMITED',
      name: 'MABEN_NIDHI_LIMITED',
      desc: '',
      args: [],
    );
  }

  /// `Not Registered? Register`
  String get notRegistered {
    return Intl.message(
      'Not Registered? Register',
      name: 'notRegistered',
      desc: '',
      args: [],
    );
  }

  /// `We’ll send you a code by SMS to confirm your Phone Number.`
  String get otpSendInfo {
    return Intl.message(
      'We’ll send you a code by SMS to confirm your Phone Number.',
      name: 'otpSendInfo',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get okay {
    return Intl.message(
      'Okay',
      name: 'okay',
      desc: '',
      args: [],
    );
  }

  /// `Password `
  String get Password {
    return Intl.message(
      'Password ',
      name: 'Password',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get ResendOTP {
    return Intl.message(
      'Resend OTP',
      name: 'ResendOTP',
      desc: '',
      args: [],
    );
  }

  /// `Send OTP`
  String get sendOtp {
    return Intl.message(
      'Send OTP',
      name: 'sendOtp',
      desc: '',
      args: [],
    );
  }

  /// `Something Went Wrong !`
  String get somethingWentWrong {
    return Intl.message(
      'Something Went Wrong !',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `We’ll send you a code by SMS to confirm your Phone Number.`
  String get sendYouCodeBySMSToConfirm {
    return Intl.message(
      'We’ll send you a code by SMS to confirm your Phone Number.',
      name: 'sendYouCodeBySMSToConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Your succesfully registered. Please login using your Employee ID and Password`
  String get successfullyRegistered {
    return Intl.message(
      'Your succesfully registered. Please login using your Employee ID and Password',
      name: 'successfullyRegistered',
      desc: '',
      args: [],
    );
  }

  /// `UserId `
  String get UserID {
    return Intl.message(
      'UserId ',
      name: 'UserID',
      desc: '',
      args: [],
    );
  }

  /// `UserId is Wrong`
  String get UserIDisWrong {
    return Intl.message(
      'UserId is Wrong',
      name: 'UserIDisWrong',
      desc: '',
      args: [],
    );
  }

  /// `Hello, welcome back to MABEN NIDHI LIMITED!`
  String get welcomeToMaben {
    return Intl.message(
      'Hello, welcome back to MABEN NIDHI LIMITED!',
      name: 'welcomeToMaben',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get customerProfileContact {
    return Intl.message(
      'Contact',
      name: 'customerProfileContact',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get customerProfileAddress {
    return Intl.message(
      'Address',
      name: 'customerProfileAddress',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get customerProfileDistrict {
    return Intl.message(
      'District',
      name: 'customerProfileDistrict',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get customerProfileState {
    return Intl.message(
      'State',
      name: 'customerProfileState',
      desc: '',
      args: [],
    );
  }

  /// `Share Count`
  String get customerProfileShareCount {
    return Intl.message(
      'Share Count',
      name: 'customerProfileShareCount',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Mark as read`
  String get notificationPopupMarkAsRead {
    return Intl.message(
      'Mark as read',
      name: 'notificationPopupMarkAsRead',
      desc: '',
      args: [],
    );
  }

  /// `No Accounts`
  String get customerAccountInfoNoAccounts {
    return Intl.message(
      'No Accounts',
      name: 'customerAccountInfoNoAccounts',
      desc: '',
      args: [],
    );
  }

  /// `Select Your Option`
  String get customerAccountInfoSelectYourOption {
    return Intl.message(
      'Select Your Option',
      name: 'customerAccountInfoSelectYourOption',
      desc: '',
      args: [],
    );
  }

  /// `Account Statement`
  String get customerAccountInfoAccountStatement {
    return Intl.message(
      'Account Statement',
      name: 'customerAccountInfoAccountStatement',
      desc: '',
      args: [],
    );
  }

  /// `Settle Account`
  String get customerAccountInfoSettleAccount {
    return Intl.message(
      'Settle Account',
      name: 'customerAccountInfoSettleAccount',
      desc: '',
      args: [],
    );
  }

  /// `New SD Opening`
  String get customerAccountInfoNewSDOpening {
    return Intl.message(
      'New SD Opening',
      name: 'customerAccountInfoNewSDOpening',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal`
  String get customerAccountInfoWithdrawal {
    return Intl.message(
      'Withdrawal',
      name: 'customerAccountInfoWithdrawal',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get customerAccountInfoDeposit {
    return Intl.message(
      'Deposit',
      name: 'customerAccountInfoDeposit',
      desc: '',
      args: [],
    );
  }

  /// `Scheduled Transactions`
  String get customerAccountInfoScheduledTransactions {
    return Intl.message(
      'Scheduled Transactions',
      name: 'customerAccountInfoScheduledTransactions',
      desc: '',
      args: [],
    );
  }

  /// `No Scheduled Transactions`
  String get customerAccountInfoNoScheduledTransactions {
    return Intl.message(
      'No Scheduled Transactions',
      name: 'customerAccountInfoNoScheduledTransactions',
      desc: '',
      args: [],
    );
  }

  /// `Debit`
  String get customerAccountInfoDebit {
    return Intl.message(
      'Debit',
      name: 'customerAccountInfoDebit',
      desc: '',
      args: [],
    );
  }

  /// `Savings Account From Ac No`
  String get customerAccountInfoSavingsAccountFromAcNo {
    return Intl.message(
      'Savings Account From Ac No',
      name: 'customerAccountInfoSavingsAccountFromAcNo',
      desc: '',
      args: [],
    );
  }

  /// `Cancel this particular transaction`
  String get customerAccountInfoCancelTheTransactionOfToday {
    return Intl.message(
      'Cancel this particular transaction',
      name: 'customerAccountInfoCancelTheTransactionOfToday',
      desc: '',
      args: [],
    );
  }

  /// `Cancel this series of transactions`
  String get customerAccountInfoCancelRemainingNTransactionsOfTheSeries {
    return Intl.message(
      'Cancel this series of transactions',
      name: 'customerAccountInfoCancelRemainingNTransactionsOfTheSeries',
      desc: '',
      args: [],
    );
  }

  /// `Delete Transaction`
  String get customerAccountInfoDeleteTransaction {
    return Intl.message(
      'Delete Transaction',
      name: 'customerAccountInfoDeleteTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get customerAccountInfoYes {
    return Intl.message(
      'Yes',
      name: 'customerAccountInfoYes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get customerAccountInfoNo {
    return Intl.message(
      'No',
      name: 'customerAccountInfoNo',
      desc: '',
      args: [],
    );
  }

  /// `Scheme`
  String get customerAccountInfoSchemeId {
    return Intl.message(
      'Scheme',
      name: 'customerAccountInfoSchemeId',
      desc: '',
      args: [],
    );
  }

  /// `Interest`
  String get customerAccountInfoInterestRate {
    return Intl.message(
      'Interest',
      name: 'customerAccountInfoInterestRate',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get pieChartSummary {
    return Intl.message(
      'Summary',
      name: 'pieChartSummary',
      desc: '',
      args: [],
    );
  }

  /// `Account Summary`
  String get customerAccountStatementAccountSummary {
    return Intl.message(
      'Account Summary',
      name: 'customerAccountStatementAccountSummary',
      desc: '',
      args: [],
    );
  }

  /// `Statement Period`
  String get customerAccountStatementPeriod {
    return Intl.message(
      'Statement Period',
      name: 'customerAccountStatementPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get customerAccountStatementDate {
    return Intl.message(
      'Date',
      name: 'customerAccountStatementDate',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get customerAccountStatementDescription {
    return Intl.message(
      'Description',
      name: 'customerAccountStatementDescription',
      desc: '',
      args: [],
    );
  }

  /// `Credit`
  String get customerAccountStatementCredit {
    return Intl.message(
      'Credit',
      name: 'customerAccountStatementCredit',
      desc: '',
      args: [],
    );
  }

  /// `Debit`
  String get customerAccountStatementDebit {
    return Intl.message(
      'Debit',
      name: 'customerAccountStatementDebit',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get customerAccountStatementBalance {
    return Intl.message(
      'Balance',
      name: 'customerAccountStatementBalance',
      desc: '',
      args: [],
    );
  }

  /// `Select Date`
  String get customerAccountStatementSelectDate {
    return Intl.message(
      'Select Date',
      name: 'customerAccountStatementSelectDate',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get customerAccountStatementCancel {
    return Intl.message(
      'Cancel',
      name: 'customerAccountStatementCancel',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get customerAccountStatementOk {
    return Intl.message(
      'Ok',
      name: 'customerAccountStatementOk',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get customerAccountStatementFrom {
    return Intl.message(
      'From',
      name: 'customerAccountStatementFrom',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get customerAccountStatementTo {
    return Intl.message(
      'To',
      name: 'customerAccountStatementTo',
      desc: '',
      args: [],
    );
  }

  /// `Cheque Reconciliation`
  String get chequeRecouncilationHeading {
    return Intl.message(
      'Cheque Reconciliation',
      name: 'chequeRecouncilationHeading',
      desc: '',
      args: [],
    );
  }

  /// `EMPLOYEE CODE`
  String get chequeEmployeeCode {
    return Intl.message(
      'EMPLOYEE CODE',
      name: 'chequeEmployeeCode',
      desc: '',
      args: [],
    );
  }

  /// `CUSTOMER NAME`
  String get chequeCustomerName {
    return Intl.message(
      'CUSTOMER NAME',
      name: 'chequeCustomerName',
      desc: '',
      args: [],
    );
  }

  /// `CHEQUE NUMBER`
  String get chequeChequeNumber {
    return Intl.message(
      'CHEQUE NUMBER',
      name: 'chequeChequeNumber',
      desc: '',
      args: [],
    );
  }

  /// `AMOUNT`
  String get chequeAmount {
    return Intl.message(
      'AMOUNT',
      name: 'chequeAmount',
      desc: '',
      args: [],
    );
  }

  /// `DATE`
  String get chequeDate {
    return Intl.message(
      'DATE',
      name: 'chequeDate',
      desc: '',
      args: [],
    );
  }

  /// `ACTION`
  String get chequeAction {
    return Intl.message(
      'ACTION',
      name: 'chequeAction',
      desc: '',
      args: [],
    );
  }

  /// `Cheque Status`
  String get chequeStatusHeading {
    return Intl.message(
      'Cheque Status',
      name: 'chequeStatusHeading',
      desc: '',
      args: [],
    );
  }

  /// `Employee Code`
  String get chequeStatusEmployeeCode {
    return Intl.message(
      'Employee Code',
      name: 'chequeStatusEmployeeCode',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get chequeStatusCustomerName {
    return Intl.message(
      'Customer Name',
      name: 'chequeStatusCustomerName',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get chequeStatusAmount {
    return Intl.message(
      'Amount',
      name: 'chequeStatusAmount',
      desc: '',
      args: [],
    );
  }

  /// `Cheque No`
  String get chequeStatusChequeNo {
    return Intl.message(
      'Cheque No',
      name: 'chequeStatusChequeNo',
      desc: '',
      args: [],
    );
  }

  /// `Received Date`
  String get chequeStatusReceivedDate {
    return Intl.message(
      'Received Date',
      name: 'chequeStatusReceivedDate',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get chequeStatusClear {
    return Intl.message(
      'Clear',
      name: 'chequeStatusClear',
      desc: '',
      args: [],
    );
  }

  /// `Bounce`
  String get chequeStatusBounce {
    return Intl.message(
      'Bounce',
      name: 'chequeStatusBounce',
      desc: '',
      args: [],
    );
  }

  /// `Deposit`
  String get depositDeposit {
    return Intl.message(
      'Deposit',
      name: 'depositDeposit',
      desc: '',
      args: [],
    );
  }

  /// `CASH`
  String get depositCash {
    return Intl.message(
      'CASH',
      name: 'depositCash',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get depositAmount {
    return Intl.message(
      'Amount',
      name: 'depositAmount',
      desc: '',
      args: [],
    );
  }

  /// `TO`
  String get depositTo {
    return Intl.message(
      'TO',
      name: 'depositTo',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get depositSubmit {
    return Intl.message(
      'Submit',
      name: 'depositSubmit',
      desc: '',
      args: [],
    );
  }

  /// `Enter The Amount`
  String get depositEnterTheAmount {
    return Intl.message(
      'Enter The Amount',
      name: 'depositEnterTheAmount',
      desc: '',
      args: [],
    );
  }

  /// `Amount Limit Exceeded`
  String get depositAmountLimitExceeded {
    return Intl.message(
      'Amount Limit Exceeded',
      name: 'depositAmountLimitExceeded',
      desc: '',
      args: [],
    );
  }

  /// `Deposited To`
  String get depositDepositedTo {
    return Intl.message(
      'Deposited To',
      name: 'depositDepositedTo',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get depositDate {
    return Intl.message(
      'Date',
      name: 'depositDate',
      desc: '',
      args: [],
    );
  }

  /// `Customer Id`
  String get depositCustomerId {
    return Intl.message(
      'Customer Id',
      name: 'depositCustomerId',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get depositCustomerName {
    return Intl.message(
      'Customer Name',
      name: 'depositCustomerName',
      desc: '',
      args: [],
    );
  }

  /// `SD No`
  String get depositSdNo {
    return Intl.message(
      'SD No',
      name: 'depositSdNo',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Type`
  String get depositTransactionType {
    return Intl.message(
      'Transaction Type',
      name: 'depositTransactionType',
      desc: '',
      args: [],
    );
  }

  /// `Deposited`
  String get depositDeposited {
    return Intl.message(
      'Deposited',
      name: 'depositDeposited',
      desc: '',
      args: [],
    );
  }

  /// `CHEQUE`
  String get depositCheque {
    return Intl.message(
      'CHEQUE',
      name: 'depositCheque',
      desc: '',
      args: [],
    );
  }

  /// `Cheque Number`
  String get depositChequeNo {
    return Intl.message(
      'Cheque Number',
      name: 'depositChequeNo',
      desc: '',
      args: [],
    );
  }

  /// `Branch Bank`
  String get depositBranchBank {
    return Intl.message(
      'Branch Bank',
      name: 'depositBranchBank',
      desc: '',
      args: [],
    );
  }

  /// `IFSC Code On The Cheque`
  String get depositIfscCode {
    return Intl.message(
      'IFSC Code On The Cheque',
      name: 'depositIfscCode',
      desc: '',
      args: [],
    );
  }

  /// `Enter The Date`
  String get depositEnterTheDate {
    return Intl.message(
      'Enter The Date',
      name: 'depositEnterTheDate',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Your Branch Bank`
  String get depositPleaseSelectYourBank {
    return Intl.message(
      'Please Select Your Branch Bank',
      name: 'depositPleaseSelectYourBank',
      desc: '',
      args: [],
    );
  }

  /// `Enter The Cheque Number`
  String get depositEnterTheChequeNumber {
    return Intl.message(
      'Enter The Cheque Number',
      name: 'depositEnterTheChequeNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter IFSC Code`
  String get depositEnterIfscCode {
    return Intl.message(
      'Enter IFSC Code',
      name: 'depositEnterIfscCode',
      desc: '',
      args: [],
    );
  }

  /// `Invalid IFSC Code`
  String get depositInvalidIfscCode {
    return Intl.message(
      'Invalid IFSC Code',
      name: 'depositInvalidIfscCode',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get depositOk {
    return Intl.message(
      'OK',
      name: 'depositOk',
      desc: '',
      args: [],
    );
  }

  /// `Settlement`
  String get settlementSettlement {
    return Intl.message(
      'Settlement',
      name: 'settlementSettlement',
      desc: '',
      args: [],
    );
  }

  /// `Account Summary`
  String get settlementAccountSummary {
    return Intl.message(
      'Account Summary',
      name: 'settlementAccountSummary',
      desc: '',
      args: [],
    );
  }

  /// `Account Type`
  String get settlementAccountType {
    return Intl.message(
      'Account Type',
      name: 'settlementAccountType',
      desc: '',
      args: [],
    );
  }

  /// `Interest Rate`
  String get settlementInterestRate {
    return Intl.message(
      'Interest Rate',
      name: 'settlementInterestRate',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get settlementBalance {
    return Intl.message(
      'Balance',
      name: 'settlementBalance',
      desc: '',
      args: [],
    );
  }

  /// `Account Number`
  String get settlementAccountNumber {
    return Intl.message(
      'Account Number',
      name: 'settlementAccountNumber',
      desc: '',
      args: [],
    );
  }

  /// `Rounding Difference`
  String get settlementRoundingDifference {
    return Intl.message(
      'Rounding Difference',
      name: 'settlementRoundingDifference',
      desc: '',
      args: [],
    );
  }

  /// `Total Interest`
  String get settlementTotalInterest {
    return Intl.message(
      'Total Interest',
      name: 'settlementTotalInterest',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get settlementPaymentMethods {
    return Intl.message(
      'Payment Methods',
      name: 'settlementPaymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `Settle Amount`
  String get settlementSettleAmount {
    return Intl.message(
      'Settle Amount',
      name: 'settlementSettleAmount',
      desc: '',
      args: [],
    );
  }

  /// `Account Settled`
  String get settlementAccountSettled {
    return Intl.message(
      'Account Settled',
      name: 'settlementAccountSettled',
      desc: '',
      args: [],
    );
  }

  /// `Do You Want To Continue ?`
  String get settlementDoYouWantToContinue {
    return Intl.message(
      'Do You Want To Continue ?',
      name: 'settlementDoYouWantToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get settlementCustomerName {
    return Intl.message(
      'Customer Name',
      name: 'settlementCustomerName',
      desc: '',
      args: [],
    );
  }

  /// `Customer ID`
  String get settlementCustomerId {
    return Intl.message(
      'Customer ID',
      name: 'settlementCustomerId',
      desc: '',
      args: [],
    );
  }

  /// `YES`
  String get settlementYES {
    return Intl.message(
      'YES',
      name: 'settlementYES',
      desc: '',
      args: [],
    );
  }

  /// `NO`
  String get settlementNO {
    return Intl.message(
      'NO',
      name: 'settlementNO',
      desc: '',
      args: [],
    );
  }

  /// `Growth Report`
  String get reportsGrowthreport {
    return Intl.message(
      'Growth Report',
      name: 'reportsGrowthreport',
      desc: '',
      args: [],
    );
  }

  /// `Customer-Wise`
  String get reportsCustomerwisereport {
    return Intl.message(
      'Customer-Wise',
      name: 'reportsCustomerwisereport',
      desc: '',
      args: [],
    );
  }

  /// `TODAY NEW`
  String get reportsTodayNew {
    return Intl.message(
      'TODAY NEW',
      name: 'reportsTodayNew',
      desc: '',
      args: [],
    );
  }

  /// `MONTHLY NEW`
  String get reportsMonthlyNew {
    return Intl.message(
      'MONTHLY NEW',
      name: 'reportsMonthlyNew',
      desc: '',
      args: [],
    );
  }

  /// `TODAY SETTLED`
  String get reportsTodaySettled {
    return Intl.message(
      'TODAY SETTLED',
      name: 'reportsTodaySettled',
      desc: '',
      args: [],
    );
  }

  /// `MONTHLY SETTLED`
  String get reportsMonthlySettled {
    return Intl.message(
      'MONTHLY SETTLED',
      name: 'reportsMonthlySettled',
      desc: '',
      args: [],
    );
  }

  /// `GROWTH OS`
  String get reportsGrowthOs {
    return Intl.message(
      'GROWTH OS',
      name: 'reportsGrowthOs',
      desc: '',
      args: [],
    );
  }

  /// `MABEN NIDHI LIMITED`
  String get reportsMabenNidhiLimited {
    return Intl.message(
      'MABEN NIDHI LIMITED',
      name: 'reportsMabenNidhiLimited',
      desc: '',
      args: [],
    );
  }

  /// `BRANCH_ID`
  String get reportsBranchID {
    return Intl.message(
      'BRANCH_ID',
      name: 'reportsBranchID',
      desc: '',
      args: [],
    );
  }

  /// `BRANCH_NAME`
  String get reportsBranchName {
    return Intl.message(
      'BRANCH_NAME',
      name: 'reportsBranchName',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get reportDate {
    return Intl.message(
      'Date',
      name: 'reportDate',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get reportsTime {
    return Intl.message(
      'Time',
      name: 'reportsTime',
      desc: '',
      args: [],
    );
  }

  /// `Reports On`
  String get reportsAsOn {
    return Intl.message(
      'Reports On',
      name: 'reportsAsOn',
      desc: '',
      args: [],
    );
  }

  /// `REGION`
  String get reportsRegion {
    return Intl.message(
      'REGION',
      name: 'reportsRegion',
      desc: '',
      args: [],
    );
  }

  /// `AREA`
  String get reportsArea {
    return Intl.message(
      'AREA',
      name: 'reportsArea',
      desc: '',
      args: [],
    );
  }

  /// `COUNT`
  String get reportsCount {
    return Intl.message(
      'COUNT',
      name: 'reportsCount',
      desc: '',
      args: [],
    );
  }

  /// `AMOUNT`
  String get reportsAmount {
    return Intl.message(
      'AMOUNT',
      name: 'reportsAmount',
      desc: '',
      args: [],
    );
  }

  /// `DAILY GROWTH`
  String get reportsDailyGrowth {
    return Intl.message(
      'DAILY GROWTH',
      name: 'reportsDailyGrowth',
      desc: '',
      args: [],
    );
  }

  /// `MONTHLY GROWTH`
  String get reportsMonthlyGrowth {
    return Intl.message(
      'MONTHLY GROWTH',
      name: 'reportsMonthlyGrowth',
      desc: '',
      args: [],
    );
  }

  /// `OUTSTANDING`
  String get reportsOutstanding {
    return Intl.message(
      'OUTSTANDING',
      name: 'reportsOutstanding',
      desc: '',
      args: [],
    );
  }

  /// `RATE`
  String get reportsRate {
    return Intl.message(
      'RATE',
      name: 'reportsRate',
      desc: '',
      args: [],
    );
  }

  /// `DATE`
  String get reportsDate {
    return Intl.message(
      'DATE',
      name: 'reportsDate',
      desc: '',
      args: [],
    );
  }

  /// `ACCRUED`
  String get reportsAccured {
    return Intl.message(
      'ACCRUED',
      name: 'reportsAccured',
      desc: '',
      args: [],
    );
  }

  /// `PAYABLE`
  String get reportsPayable {
    return Intl.message(
      'PAYABLE',
      name: 'reportsPayable',
      desc: '',
      args: [],
    );
  }

  /// `SAVINGS DEPOSIT`
  String get reportsSavingsDeposit {
    return Intl.message(
      'SAVINGS DEPOSIT',
      name: 'reportsSavingsDeposit',
      desc: '',
      args: [],
    );
  }

  /// `TYPE`
  String get reportsType {
    return Intl.message(
      'TYPE',
      name: 'reportsType',
      desc: '',
      args: [],
    );
  }

  /// `DOC ID`
  String get reportsDocId {
    return Intl.message(
      'DOC ID',
      name: 'reportsDocId',
      desc: '',
      args: [],
    );
  }

  /// `NAME`
  String get reportsName {
    return Intl.message(
      'NAME',
      name: 'reportsName',
      desc: '',
      args: [],
    );
  }

  /// `Search Customer`
  String get CsSearchcustomer {
    return Intl.message(
      'Search Customer',
      name: 'CsSearchcustomer',
      desc: '',
      args: [],
    );
  }

  /// `Search Co-Applicant`
  String get CsSearchCoApplicant {
    return Intl.message(
      'Search Co-Applicant',
      name: 'CsSearchCoApplicant',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get CsCancelButton {
    return Intl.message(
      'Cancel',
      name: 'CsCancelButton',
      desc: '',
      args: [],
    );
  }

  /// `Pan not found`
  String get CsFailurePanNotFound {
    return Intl.message(
      'Pan not found',
      name: 'CsFailurePanNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number not found`
  String get CsFailurePhoneNotFound {
    return Intl.message(
      'Phone Number not found',
      name: 'CsFailurePhoneNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Document Number not found`
  String get CsFailureDocumentNotFound {
    return Intl.message(
      'Document Number not found',
      name: 'CsFailureDocumentNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Customer Id not found`
  String get CsFailureCustomerIdNotFound {
    return Intl.message(
      'Customer Id not found',
      name: 'CsFailureCustomerIdNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name not found`
  String get CsFailureCustomerNameNotFound {
    return Intl.message(
      'Customer Name not found',
      name: 'CsFailureCustomerNameNotFound',
      desc: '',
      args: [],
    );
  }

  /// `Network error`
  String get CsFailureClientFailure {
    return Intl.message(
      'Network error',
      name: 'CsFailureClientFailure',
      desc: '',
      args: [],
    );
  }

  /// `Server error`
  String get CsFailureServerFailure {
    return Intl.message(
      'Server error',
      name: 'CsFailureServerFailure',
      desc: '',
      args: [],
    );
  }

  /// `CUSTOMER ID`
  String get CsDataTableCustomerId {
    return Intl.message(
      'CUSTOMER ID',
      name: 'CsDataTableCustomerId',
      desc: '',
      args: [],
    );
  }

  /// `CUSTOMER NAME`
  String get CsDataTableCustomerName {
    return Intl.message(
      'CUSTOMER NAME',
      name: 'CsDataTableCustomerName',
      desc: '',
      args: [],
    );
  }

  /// `CUSTOMER ADDRESS`
  String get CsDataTableCustomerAddress {
    return Intl.message(
      'CUSTOMER ADDRESS',
      name: 'CsDataTableCustomerAddress',
      desc: '',
      args: [],
    );
  }

  /// `PHONE NUMBER 1`
  String get CsDataTablePhoneNumber1 {
    return Intl.message(
      'PHONE NUMBER 1',
      name: 'CsDataTablePhoneNumber1',
      desc: '',
      args: [],
    );
  }

  /// `PHONE NUMBER 2`
  String get CsDataTablePhoneNumber2 {
    return Intl.message(
      'PHONE NUMBER 2',
      name: 'CsDataTablePhoneNumber2',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get CsDataTableSelect {
    return Intl.message(
      'Select',
      name: 'CsDataTableSelect',
      desc: '',
      args: [],
    );
  }

  /// `Customer Name`
  String get CsRadioCustomerName {
    return Intl.message(
      'Customer Name',
      name: 'CsRadioCustomerName',
      desc: '',
      args: [],
    );
  }

  /// `Customer Id`
  String get CsRadioCustomerId {
    return Intl.message(
      'Customer Id',
      name: 'CsRadioCustomerId',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get CsRadioMobileNumber {
    return Intl.message(
      'Mobile Number',
      name: 'CsRadioMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Pan Card`
  String get CsRadioPanCard {
    return Intl.message(
      'Pan Card',
      name: 'CsRadioPanCard',
      desc: '',
      args: [],
    );
  }

  /// `Document No`
  String get CsRadioDocumentNo {
    return Intl.message(
      'Document No',
      name: 'CsRadioDocumentNo',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get CsAdd {
    return Intl.message(
      'Add',
      name: 'CsAdd',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get CsName {
    return Intl.message(
      'Name',
      name: 'CsName',
      desc: '',
      args: [],
    );
  }

  /// `New Savings Account`
  String get NsNewSavingsAccount {
    return Intl.message(
      'New Savings Account',
      name: 'NsNewSavingsAccount',
      desc: '',
      args: [],
    );
  }

  /// `Field is empty`
  String get NsFieldisempty {
    return Intl.message(
      'Field is empty',
      name: 'NsFieldisempty',
      desc: '',
      args: [],
    );
  }

  /// `The amount can't be greater than the maximum amount`
  String get NsAmountcantBeGreaterThanMaximumAmount {
    return Intl.message(
      'The amount can\'t be greater than the maximum amount',
      name: 'NsAmountcantBeGreaterThanMaximumAmount',
      desc: '',
      args: [],
    );
  }

  /// `The amount can't be less than the minimum amount`
  String get NsAmountCantBeLessThanMinimumAmount {
    return Intl.message(
      'The amount can\'t be less than the minimum amount',
      name: 'NsAmountCantBeLessThanMinimumAmount',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get NsAmount {
    return Intl.message(
      'Amount',
      name: 'NsAmount',
      desc: '',
      args: [],
    );
  }

  /// `None`
  String get NsRadioNone {
    return Intl.message(
      'None',
      name: 'NsRadioNone',
      desc: '',
      args: [],
    );
  }

  /// `Customer Reference`
  String get NsRadioAgent {
    return Intl.message(
      'Customer Reference',
      name: 'NsRadioAgent',
      desc: '',
      args: [],
    );
  }

  /// `Employee`
  String get NsRdioEmployee {
    return Intl.message(
      'Employee',
      name: 'NsRdioEmployee',
      desc: '',
      args: [],
    );
  }

  /// `enter agent id`
  String get NsEnterAgentId {
    return Intl.message(
      'enter agent id',
      name: 'NsEnterAgentId',
      desc: '',
      args: [],
    );
  }

  /// `invalid agent id`
  String get NsinvalidAgentId {
    return Intl.message(
      'invalid agent id',
      name: 'NsinvalidAgentId',
      desc: '',
      args: [],
    );
  }

  /// `Enter Employee Id`
  String get NsEnterEmployeeId {
    return Intl.message(
      'Enter Employee Id',
      name: 'NsEnterEmployeeId',
      desc: '',
      args: [],
    );
  }

  /// `invalid employee id`
  String get NsInvalidEmployeeId {
    return Intl.message(
      'invalid employee id',
      name: 'NsInvalidEmployeeId',
      desc: '',
      args: [],
    );
  }

  /// `Referred By`
  String get NsSalesCode {
    return Intl.message(
      'Referred By',
      name: 'NsSalesCode',
      desc: '',
      args: [],
    );
  }

  /// `Submit the Application`
  String get NsSubmitTheApplication {
    return Intl.message(
      'Submit the Application',
      name: 'NsSubmitTheApplication',
      desc: '',
      args: [],
    );
  }

  /// `Warning !`
  String get NsWarning {
    return Intl.message(
      'Warning !',
      name: 'NsWarning',
      desc: '',
      args: [],
    );
  }

  /// `Scheme ID`
  String get NsSchemeID {
    return Intl.message(
      'Scheme ID',
      name: 'NsSchemeID',
      desc: '',
      args: [],
    );
  }

  /// `Scheme`
  String get NsSchemeName {
    return Intl.message(
      'Scheme',
      name: 'NsSchemeName',
      desc: '',
      args: [],
    );
  }

  /// `Applicant Name`
  String get NsApplicantName {
    return Intl.message(
      'Applicant Name',
      name: 'NsApplicantName',
      desc: '',
      args: [],
    );
  }

  /// `Co-Applicant Name`
  String get NsCoApplicantName {
    return Intl.message(
      'Co-Applicant Name',
      name: 'NsCoApplicantName',
      desc: '',
      args: [],
    );
  }

  /// `Please complete the Nominee Details`
  String get NsPleaseCompleteTheNomineeDetails {
    return Intl.message(
      'Please complete the Nominee Details',
      name: 'NsPleaseCompleteTheNomineeDetails',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get NsSubmit {
    return Intl.message(
      'Submit',
      name: 'NsSubmit',
      desc: '',
      args: [],
    );
  }

  /// `Nominee Details`
  String get NsNomineeDetails {
    return Intl.message(
      'Nominee Details',
      name: 'NsNomineeDetails',
      desc: '',
      args: [],
    );
  }

  /// `Nominee`
  String get NsNominee {
    return Intl.message(
      'Nominee',
      name: 'NsNominee',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get NsName {
    return Intl.message(
      'Name',
      name: 'NsName',
      desc: '',
      args: [],
    );
  }

  /// `Enter a name in the Correct format `
  String get NsNameNotCorrect {
    return Intl.message(
      'Enter a name in the Correct format ',
      name: 'NsNameNotCorrect',
      desc: '',
      args: [],
    );
  }

  /// `Parent`
  String get NsParent {
    return Intl.message(
      'Parent',
      name: 'NsParent',
      desc: '',
      args: [],
    );
  }

  /// `Sibling`
  String get NsSibling {
    return Intl.message(
      'Sibling',
      name: 'NsSibling',
      desc: '',
      args: [],
    );
  }

  /// `Spouse`
  String get NsSpouse {
    return Intl.message(
      'Spouse',
      name: 'NsSpouse',
      desc: '',
      args: [],
    );
  }

  /// `Child`
  String get NsChild {
    return Intl.message(
      'Child',
      name: 'NsChild',
      desc: '',
      args: [],
    );
  }

  /// `others`
  String get Nsothers {
    return Intl.message(
      'others',
      name: 'Nsothers',
      desc: '',
      args: [],
    );
  }

  /// `This field cant be empty`
  String get NsBirthThisfieldCantBeEmpty {
    return Intl.message(
      'This field cant be empty',
      name: 'NsBirthThisfieldCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Date of Birth`
  String get NsDateOfBirth {
    return Intl.message(
      'Date of Birth',
      name: 'NsDateOfBirth',
      desc: '',
      args: [],
    );
  }

  /// `Minor`
  String get NsMinor {
    return Intl.message(
      'Minor',
      name: 'NsMinor',
      desc: '',
      args: [],
    );
  }

  /// `Guardian Name`
  String get NsAppointeeName {
    return Intl.message(
      'Guardian Name',
      name: 'NsAppointeeName',
      desc: '',
      args: [],
    );
  }

  /// `Enter appointee / guardian name `
  String get NsEnterAppointeeName {
    return Intl.message(
      'Enter appointee / guardian name ',
      name: 'NsEnterAppointeeName',
      desc: '',
      args: [],
    );
  }

  /// `Spouse Name`
  String get NsParentOrSpouse {
    return Intl.message(
      'Spouse Name',
      name: 'NsParentOrSpouse',
      desc: '',
      args: [],
    );
  }

  /// `Enter name only`
  String get NsEnterParentOrSpouse {
    return Intl.message(
      'Enter name only',
      name: 'NsEnterParentOrSpouse',
      desc: '',
      args: [],
    );
  }

  /// `House Name`
  String get NsHouseName {
    return Intl.message(
      'House Name',
      name: 'NsHouseName',
      desc: '',
      args: [],
    );
  }

  /// `Enter the House Name`
  String get NsEntertheHouseName {
    return Intl.message(
      'Enter the House Name',
      name: 'NsEntertheHouseName',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get NsLocation {
    return Intl.message(
      'Location',
      name: 'NsLocation',
      desc: '',
      args: [],
    );
  }

  /// ` Location can only contain alphanumeric characters and hypehns(-)`
  String get NsEnterLocation {
    return Intl.message(
      ' Location can only contain alphanumeric characters and hypehns(-)',
      name: 'NsEnterLocation',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get NsPhoneNumber {
    return Intl.message(
      'Phone number',
      name: 'NsPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invalid number`
  String get NsInvalidnumber {
    return Intl.message(
      'Invalid number',
      name: 'NsInvalidnumber',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Details`
  String get NsPleaseConfirmtheDetails {
    return Intl.message(
      'Confirm Details',
      name: 'NsPleaseConfirmtheDetails',
      desc: '',
      args: [],
    );
  }

  /// `Nominee`
  String get NsNomineeName {
    return Intl.message(
      'Nominee',
      name: 'NsNomineeName',
      desc: '',
      args: [],
    );
  }

  /// `Relation`
  String get NsRelationWithApplicant {
    return Intl.message(
      'Relation',
      name: 'NsRelationWithApplicant',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get NsConfirm {
    return Intl.message(
      'Confirm',
      name: 'NsConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get NsEdit {
    return Intl.message(
      'Edit',
      name: 'NsEdit',
      desc: '',
      args: [],
    );
  }

  /// `Please complete the data`
  String get NsPleasecompletethedata {
    return Intl.message(
      'Please complete the data',
      name: 'NsPleasecompletethedata',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get NsOkay {
    return Intl.message(
      'Ok',
      name: 'NsOkay',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get NsAdd {
    return Intl.message(
      'Add',
      name: 'NsAdd',
      desc: '',
      args: [],
    );
  }

  /// `Relation`
  String get NsRelation {
    return Intl.message(
      'Relation',
      name: 'NsRelation',
      desc: '',
      args: [],
    );
  }

  /// `Go back`
  String get NsGoback {
    return Intl.message(
      'Go back',
      name: 'NsGoback',
      desc: '',
      args: [],
    );
  }

  /// `Delete Data`
  String get NsDeleteData {
    return Intl.message(
      'Delete Data',
      name: 'NsDeleteData',
      desc: '',
      args: [],
    );
  }

  /// `CoApplicant Details`
  String get NsCoApplicantDetails {
    return Intl.message(
      'CoApplicant Details',
      name: 'NsCoApplicantDetails',
      desc: '',
      args: [],
    );
  }

  /// `Co Applicant`
  String get NsCoApplicant {
    return Intl.message(
      'Co Applicant',
      name: 'NsCoApplicant',
      desc: '',
      args: [],
    );
  }

  /// `Interest`
  String get NsInterestRate {
    return Intl.message(
      'Interest',
      name: 'NsInterestRate',
      desc: '',
      args: [],
    );
  }

  /// `Min`
  String get NsMinimumAmount {
    return Intl.message(
      'Min',
      name: 'NsMinimumAmount',
      desc: '',
      args: [],
    );
  }

  /// `No Limit`
  String get NsNoLimit {
    return Intl.message(
      'No Limit',
      name: 'NsNoLimit',
      desc: '',
      args: [],
    );
  }

  /// `Max`
  String get NsMaximumAmount {
    return Intl.message(
      'Max',
      name: 'NsMaximumAmount',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get NsCancel {
    return Intl.message(
      'Cancel',
      name: 'NsCancel',
      desc: '',
      args: [],
    );
  }

  /// `Details Already added`
  String get NsDetailsAlreadyadded {
    return Intl.message(
      'Details Already added',
      name: 'NsDetailsAlreadyadded',
      desc: '',
      args: [],
    );
  }

  /// `Branch Head Approval`
  String get bhbranchheadapproval {
    return Intl.message(
      'Branch Head Approval',
      name: 'bhbranchheadapproval',
      desc: '',
      args: [],
    );
  }

  /// `Branch Head Approved`
  String get bhbranchheadapproved {
    return Intl.message(
      'Branch Head Approved',
      name: 'bhbranchheadapproved',
      desc: '',
      args: [],
    );
  }

  /// `BH Approved`
  String get bhapprovedsort {
    return Intl.message(
      'BH Approved',
      name: 'bhapprovedsort',
      desc: '',
      args: [],
    );
  }

  /// `BH Approval`
  String get bhapproval {
    return Intl.message(
      'BH Approval',
      name: 'bhapproval',
      desc: '',
      args: [],
    );
  }

  /// `Bounce`
  String get bhbounce {
    return Intl.message(
      'Bounce',
      name: 'bhbounce',
      desc: '',
      args: [],
    );
  }

  /// `EMPLOYEE CODE`
  String get bhemployeecode {
    return Intl.message(
      'EMPLOYEE CODE',
      name: 'bhemployeecode',
      desc: '',
      args: [],
    );
  }

  /// `CUSTOMER NAME`
  String get bhcustomername {
    return Intl.message(
      'CUSTOMER NAME',
      name: 'bhcustomername',
      desc: '',
      args: [],
    );
  }

  /// `AMOUNT`
  String get bhamount {
    return Intl.message(
      'AMOUNT',
      name: 'bhamount',
      desc: '',
      args: [],
    );
  }

  /// `CHEQUE CLEARED DATE`
  String get bhchequecleareddate {
    return Intl.message(
      'CHEQUE CLEARED DATE',
      name: 'bhchequecleareddate',
      desc: '',
      args: [],
    );
  }

  /// `APPROVED DATE`
  String get bhapproveddate {
    return Intl.message(
      'APPROVED DATE',
      name: 'bhapproveddate',
      desc: '',
      args: [],
    );
  }

  /// `Already Approved`
  String get bhalreadyapproved {
    return Intl.message(
      'Already Approved',
      name: 'bhalreadyapproved',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get bhapproved {
    return Intl.message(
      'Approved',
      name: 'bhapproved',
      desc: '',
      args: [],
    );
  }

  /// `ACTIONS`
  String get bhactions {
    return Intl.message(
      'ACTIONS',
      name: 'bhactions',
      desc: '',
      args: [],
    );
  }

  /// `Approve`
  String get bhapprove {
    return Intl.message(
      'Approve',
      name: 'bhapprove',
      desc: '',
      args: [],
    );
  }

  /// `BH Status`
  String get bhstatus {
    return Intl.message(
      'BH Status',
      name: 'bhstatus',
      desc: '',
      args: [],
    );
  }

  /// `pending`
  String get bhpending {
    return Intl.message(
      'pending',
      name: 'bhpending',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get bhnodata {
    return Intl.message(
      'No data',
      name: 'bhnodata',
      desc: '',
      args: [],
    );
  }

  /// `CHEQUE NO`
  String get bhchequeno {
    return Intl.message(
      'CHEQUE NO',
      name: 'bhchequeno',
      desc: '',
      args: [],
    );
  }

  /// `Network error`
  String get bhnetworkerror {
    return Intl.message(
      'Network error',
      name: 'bhnetworkerror',
      desc: '',
      args: [],
    );
  }

  /// `serverFailure`
  String get bhserverfailure {
    return Intl.message(
      'serverFailure',
      name: 'bhserverfailure',
      desc: '',
      args: [],
    );
  }

  /// `RECEVIED DATE`
  String get bhreceiveddate {
    return Intl.message(
      'RECEVIED DATE',
      name: 'bhreceiveddate',
      desc: '',
      args: [],
    );
  }

  /// `Cheque Bounces`
  String get bhchequebounces {
    return Intl.message(
      'Cheque Bounces',
      name: 'bhchequebounces',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get withdrawalamount {
    return Intl.message(
      'Amount',
      name: 'withdrawalamount',
      desc: '',
      args: [],
    );
  }

  /// `Insufficient Fund`
  String get withdrawalinsufficientfund {
    return Intl.message(
      'Insufficient Fund',
      name: 'withdrawalinsufficientfund',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Amount 100`
  String get withdrawalminimumamount100 {
    return Intl.message(
      'Minimum Amount 100',
      name: 'withdrawalminimumamount100',
      desc: '',
      args: [],
    );
  }

  /// `Enter Date`
  String get withdrawalenterdate {
    return Intl.message(
      'Enter Date',
      name: 'withdrawalenterdate',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get withdrawalStandingInstructions {
    return Intl.message(
      'Schedule',
      name: 'withdrawalStandingInstructions',
      desc: '',
      args: [],
    );
  }

  /// `Week`
  String get withdrawalweek {
    return Intl.message(
      'Week',
      name: 'withdrawalweek',
      desc: '',
      args: [],
    );
  }

  /// `Month`
  String get withdrawalmonth {
    return Intl.message(
      'Month',
      name: 'withdrawalmonth',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get withdrawalok {
    return Intl.message(
      'Ok',
      name: 'withdrawalok',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get withdrawalcancel {
    return Intl.message(
      'Cancel',
      name: 'withdrawalcancel',
      desc: '',
      args: [],
    );
  }

  /// `Alert`
  String get withdrawalalert {
    return Intl.message(
      'Alert',
      name: 'withdrawalalert',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter the Amount`
  String get withdrawalpleaseentertheamount {
    return Intl.message(
      'Please Enter the Amount',
      name: 'withdrawalpleaseentertheamount',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Date`
  String get withdrawalpleaseselectdate {
    return Intl.message(
      'Please Select Date',
      name: 'withdrawalpleaseselectdate',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get withdrawalsubmit {
    return Intl.message(
      'Submit',
      name: 'withdrawalsubmit',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get withdrawalfrom {
    return Intl.message(
      'From',
      name: 'withdrawalfrom',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Type`
  String get withdrawaltranscationtype {
    return Intl.message(
      'Transaction Type',
      name: 'withdrawaltranscationtype',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get withdrawalcustomer {
    return Intl.message(
      'Customer',
      name: 'withdrawalcustomer',
      desc: '',
      args: [],
    );
  }

  /// `Employee`
  String get withdrawalemployee {
    return Intl.message(
      'Employee',
      name: 'withdrawalemployee',
      desc: '',
      args: [],
    );
  }

  /// `SD NO`
  String get withdrawalsdno {
    return Intl.message(
      'SD NO',
      name: 'withdrawalsdno',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal From`
  String get withdrawalform {
    return Intl.message(
      'Withdrawal From',
      name: 'withdrawalform',
      desc: '',
      args: [],
    );
  }

  /// `IFSC Code`
  String get withdrawalifsccode {
    return Intl.message(
      'IFSC Code',
      name: 'withdrawalifsccode',
      desc: '',
      args: [],
    );
  }

  /// `Please fill required fields`
  String get withdrawalpleasefillrequiredfields {
    return Intl.message(
      'Please fill required fields',
      name: 'withdrawalpleasefillrequiredfields',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get withdrawalconfirm {
    return Intl.message(
      'Confirm',
      name: 'withdrawalconfirm',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get commonFrameMenu {
    return Intl.message(
      'Menu',
      name: 'commonFrameMenu',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get commonFrameHome {
    return Intl.message(
      'Home',
      name: 'commonFrameHome',
      desc: '',
      args: [],
    );
  }

  /// `BH Verification`
  String get commonFrameBHVerification {
    return Intl.message(
      'BH Verification',
      name: 'commonFrameBHVerification',
      desc: '',
      args: [],
    );
  }

  /// `Cheque Reconciliation`
  String get commonFrameChequeReconciliation {
    return Intl.message(
      'Cheque Reconciliation',
      name: 'commonFrameChequeReconciliation',
      desc: '',
      args: [],
    );
  }

  /// `Customer Page`
  String get commonFrameCustomerPage {
    return Intl.message(
      'Customer Page',
      name: 'commonFrameCustomerPage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ml'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
