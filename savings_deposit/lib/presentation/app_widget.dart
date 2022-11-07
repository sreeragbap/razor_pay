import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:savings_deposit/application/auth/auth_bloc.dart';
import 'package:savings_deposit/application/calendar/calendar_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/forgot_password/forgotpassword_bloc.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/otp_verification/otp_verification_bloc.dart';
import 'package:savings_deposit/application/password/password_bloc.dart';
import 'package:savings_deposit/application/payment/payment_bloc.dart';
import 'package:savings_deposit/application/registration/registration_bloc.dart';
import 'package:savings_deposit/injection.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/theme/theme.dart';
import '../application/cheque_recouncilation/cheque_recouncilation_bloc.dart';
import '../application/phone_number_verification/phone_number_verification_bloc.dart';
import '../application/splash/splash_bloc.dart';
import '../generated/l10n.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (BuildContext context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => getIt<SplashBloc>()
            ..add(const SplashEvent.splashinitialevent("12345")),
        ),
        BlocProvider<LoginBloc>(
          create: (BuildContext context) => getIt<LoginBloc>(),
        ),
        BlocProvider<PhoneNumberVerificationBloc>(
          create: (BuildContext context) => PhoneNumberVerificationBloc(),
        ),
        BlocProvider<LanguageBloc>(
          create: (BuildContext context) => LanguageBloc(),
        ),
        BlocProvider<OtpVerificationBloc>(
          create: (BuildContext context) => getIt<OtpVerificationBloc>(),
        ),
        BlocProvider<EmployeeBloc>(
          create: (BuildContext context) => getIt<EmployeeBloc>(),
        ),
        BlocProvider<CustomerBloc>(
          create: (BuildContext context) => getIt<CustomerBloc>(),
        ),
        BlocProvider<ChequeRecouncilationBloc>(
          create: (BuildContext context) => getIt<ChequeRecouncilationBloc>(),
        ),
        BlocProvider<CalendarBloc>(
          create: (BuildContext context) => getIt<CalendarBloc>(),
        ),
        BlocProvider<ForgotpasswordBloc>(
            create: (context) => getIt<ForgotpasswordBloc>()),
        BlocProvider<PasswordBloc>(create: (context) => getIt<PasswordBloc>()),
        BlocProvider<RegistrationBloc>(
            create: (context) => getIt<RegistrationBloc>()),
        BlocProvider<PaymentBloc>(create: (context) => getIt<PaymentBloc>()),
      ],
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: buildLightTheme(),
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}
