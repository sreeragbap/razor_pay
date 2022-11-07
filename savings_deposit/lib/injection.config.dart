// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/calendar/calendar_bloc.dart' as _i52;
import 'application/cheque_recouncilation/cheque_recouncilation_bloc.dart'
    as _i53;
import 'application/customer/customer_bloc.dart' as _i54;
import 'application/employee/employee_bloc.dart' as _i55;
import 'application/forgot_password/forgotpassword_bloc.dart' as _i56;
import 'application/language/language_bloc.dart' as _i45;
import 'application/login/login_bloc.dart' as _i46;
import 'application/otp_verification/otp_verification_bloc.dart' as _i47;
import 'application/password/password_bloc.dart' as _i48;
import 'application/payment/payment_bloc.dart' as _i49;
import 'application/registration/registration_bloc.dart' as _i50;
import 'application/splash/splash_bloc.dart' as _i51;
import 'domain/calendar/i_calendar_repo.dart' as _i5;
import 'domain/confirm_otp/i_repo/i_confirm_otp_repo.dart' as _i9;
import 'domain/customer/customer_settlement/i_settlement.dart' as _i39;
import 'domain/customer/customer_statements/i_customer_statement_repo.dart'
    as _i17;
import 'domain/customer/deposit/i_customer_deposit.dart' as _i11;
import 'domain/customer/i_customer_repo.dart' as _i13;
import 'domain/customer/mpin/i_mpin_repo.dart' as _i23;
import 'domain/customer/new_sd/i_repo/i_new_sd_repo.dart' as _i25;
import 'domain/customer/remove_customer_notification/i_remove_customer_notification.dart'
    as _i31;
import 'domain/customer/withdrawal/i_withdrawal_repo.dart' as _i43;
import 'domain/employee/bhverification/i_bhverification_repo/i_bhverification_repo.dart'
    as _i3;
import 'domain/employee/cheque_recouncilation/i_cheque_recouncilation_repo.dart'
    as _i7;
import 'domain/employee/customer_search/i_customer_search_repo/i_customer_search_repo.dart'
    as _i15;
import 'domain/employee/reports/i_report.dart' as _i37;
import 'domain/forgot_password/i_repo/forgot_password_irepo.dart' as _i19;
import 'domain/login/i_login_repo.dart' as _i21;
import 'domain/payment/irepo/i_payment_repo.dart' as _i27;
import 'domain/registration/irepo/registration_irepo.dart' as _i29;
import 'domain/remove_employee_notification/i_remove_employee_notification_repo.dart'
    as _i33;
import 'domain/remove_scheduled_transaction/i_remove_scheduled_transaction_repo.dart'
    as _i35;
import 'domain/splash/i_splash_repo.dart' as _i41;
import 'infrastructure/calendar/calendar_repo.dart' as _i6;
import 'infrastructure/confirm_otp/confirm_otp_repo.dart' as _i10;
import 'infrastructure/customer/customer_repo.dart' as _i14;
import 'infrastructure/customer/customer_statement/customer_statement_repo.dart'
    as _i18;
import 'infrastructure/customer/deposit/customer_deposit_repo.dart' as _i12;
import 'infrastructure/customer/new_sd/ne_sd_repo.dart' as _i26;
import 'infrastructure/customer/remove_customer_notification/remove_customer_notification_repo.dart'
    as _i32;
import 'infrastructure/customer/settlement/settlement_repo.dart' as _i40;
import 'infrastructure/customer/withdrawal/withdrawal_repo.dart' as _i44;
import 'infrastructure/employee/bhverification/bhverification_repo.dart' as _i4;
import 'infrastructure/employee/cheque_recouncilation/cheque_recouncilation_repo.dart'
    as _i8;
import 'infrastructure/employee/customer_search/customer_search_repo.dart'
    as _i16;
import 'infrastructure/employee/reports/customerwise_repo.dart' as _i38;
import 'infrastructure/forgot_password/forgotpassword_repo.dart' as _i20;
import 'infrastructure/login/login_repo.dart' as _i22;
import 'infrastructure/mpin/mpin_repo.dart' as _i24;
import 'infrastructure/payment/payment_repo.dart' as _i28;
import 'infrastructure/registration/registration_repo.dart' as _i30;
import 'infrastructure/remove_employee_notification/remove_employee_notification_repo.dart'
    as _i34;
import 'infrastructure/remove_scheduled_trnsction/remove_scheduled_transaction_repo.dart'
    as _i36;
import 'infrastructure/splash/splash_repo.dart' as _i42;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.IBhverificationRepo>(() => _i4.BhverificationRepo(),
      registerFor: {_prod});
  gh.factory<_i5.ICalendarRepo>(() => _i6.CalendarRepo(), registerFor: {_prod});
  gh.factory<_i7.IChequeRecouncilationRepo>(() => _i8.ChequeRecounciationRepo(),
      registerFor: {_prod});
  gh.factory<_i9.IConfirmOtpRepo>(() => _i10.ConfirmOtpRepo(),
      registerFor: {_prod});
  gh.factory<_i11.ICustomerDeposit>(() => _i12.DepositRepo(),
      registerFor: {_prod});
  gh.factory<_i13.ICustomerRepo>(() => _i14.CustomerRepo(),
      registerFor: {_prod});
  gh.factory<_i15.ICustomerSearchRepo>(() => _i16.CustomerSearchRepo(),
      registerFor: {_prod});
  gh.factory<_i17.ICustomerStatementRepo>(() => _i18.CustomerStatementRepo(),
      registerFor: {_prod});
  gh.factory<_i19.IForgotPassword>(() => _i20.ForgotPasswordRepo(),
      registerFor: {_prod});
  gh.factory<_i21.ILoginRepo>(() => _i22.LoginRepo(), registerFor: {_prod});
  gh.factory<_i23.IMpinRepo>(() => _i24.MpinRepo(), registerFor: {_prod});
  gh.factory<_i25.INewSavingsDeposit>(() => _i26.NewSavingsDepositRepo(),
      registerFor: {_prod});
  gh.factory<_i27.IPaymentRepo>(() => _i28.PaymentRepo(), registerFor: {_prod});
  gh.factory<_i29.IRegistrationRepo>(() => _i30.ForgotPasswordRepo(),
      registerFor: {_prod});
  gh.factory<_i31.IRemoveCustomerNotification>(
      () => _i32.RemoveCustomerNotification(),
      registerFor: {_prod});
  gh.factory<_i33.IRemoveEmployeeNotification>(
      () => _i34.RemoveEmployeeNotification(),
      registerFor: {_prod});
  gh.factory<_i35.IRemoveScheduledTransactionRepo>(
      () => _i36.RemoveScheduledTransactioRepo(),
      registerFor: {_prod});
  gh.factory<_i37.IReportRepo>(() => _i38.CustomerwiseRepo(),
      registerFor: {_prod});
  gh.factory<_i39.ISettlementRepo>(() => _i40.SettlementRepo(),
      registerFor: {_prod});
  gh.factory<_i41.ISplashRepo>(() => _i42.SplashRepo(), registerFor: {_prod});
  gh.factory<_i43.IwithdrawalRepo>(() => _i44.WithdrawalRepo(),
      registerFor: {_prod});
  gh.factory<_i45.LanguageBloc>(() => _i45.LanguageBloc());
  gh.factory<_i46.LoginBloc>(
      () => _i46.LoginBloc(get<_i21.ILoginRepo>(), get<_i23.IMpinRepo>()),
      registerFor: {_prod});
  gh.factory<_i47.OtpVerificationBloc>(
      () => _i47.OtpVerificationBloc(get<_i9.IConfirmOtpRepo>()),
      registerFor: {_prod});
  gh.factory<_i48.PasswordBloc>(() => _i48.PasswordBloc(),
      registerFor: {_prod});
  gh.factory<_i49.PaymentBloc>(() => _i49.PaymentBloc(get<_i27.IPaymentRepo>()),
      registerFor: {_prod});
  gh.factory<_i50.RegistrationBloc>(
      () => _i50.RegistrationBloc(get<_i29.IRegistrationRepo>()),
      registerFor: {_prod});
  gh.factory<_i51.SplashBloc>(() => _i51.SplashBloc(get<_i41.ISplashRepo>()),
      registerFor: {_prod});
  gh.factory<_i52.CalendarBloc>(
      () => _i52.CalendarBloc(get<_i5.ICalendarRepo>()),
      registerFor: {_prod});
  gh.factory<_i53.ChequeRecouncilationBloc>(
      () => _i53.ChequeRecouncilationBloc(get<_i7.IChequeRecouncilationRepo>()),
      registerFor: {_prod});
  gh.factory<_i54.CustomerBloc>(() => _i54.CustomerBloc(
      get<_i13.ICustomerRepo>(),
      get<_i25.INewSavingsDeposit>(),
      get<_i39.ISettlementRepo>(),
      get<_i11.ICustomerDeposit>(),
      get<_i43.IwithdrawalRepo>(),
      get<_i35.IRemoveScheduledTransactionRepo>(),
      get<_i31.IRemoveCustomerNotification>(),
      get<_i23.IMpinRepo>()));
  gh.factory<_i55.EmployeeBloc>(
      () => _i55.EmployeeBloc(
          get<_i37.IReportRepo>(),
          get<_i15.ICustomerSearchRepo>(),
          get<_i3.IBhverificationRepo>(),
          get<_i33.IRemoveEmployeeNotification>()),
      registerFor: {_prod});
  gh.factory<_i56.ForgotpasswordBloc>(
      () => _i56.ForgotpasswordBloc(get<_i19.IForgotPassword>()),
      registerFor: {_prod});
  return get;
}
