import 'package:auto_route/annotations.dart';
import 'package:savings_deposit/presentation/pages/app_routing_page/app_routing_page.dart';
import 'package:savings_deposit/presentation/pages/customer/payment/payment_page.dart';
import 'package:savings_deposit/presentation/pages/customer/payment/payment_success_page.dart';
import 'package:savings_deposit/presentation/pages/forgot_password/change_password_page/forgot_change_password_page.dart';
import 'package:savings_deposit/presentation/pages/login/login_page.dart';
import 'package:savings_deposit/presentation/pages/main/mainpages.dart';
import 'package:savings_deposit/presentation/pages/mpin/mpin_login_page.dart';
import 'package:savings_deposit/presentation/pages/mpin/set_mpin_page.dart';

import 'package:savings_deposit/presentation/pages/register/create_password_page/create_password_page.dart';
import 'package:savings_deposit/presentation/pages/splash/splash_page.dart';
import '../pages/forgot_password/forgot_password_otpverification_page/forgot_password_otpverification_page.dart';
import '../pages/forgot_password/forgot_password_phonenumber_verification_page/forgot_password_phonenumber_verification_page.dart';
import '../pages/initial/initial_page.dart';
import '../pages/register/register_otpverification_page/register_otpverification_page.dart';
import '../pages/register/register_phonenumber_verification_page/register_phonenumber_verification_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: MainPage),
    AutoRoute(page: LoginPage),
    AutoRoute(page: InitialPage),
    AutoRoute(page: RegisterPhoneNumberVerificationPage),
    AutoRoute(page: RegisterOtpVerificationPage),
    AutoRoute(page: CreatePasswordPage),
    AutoRoute(page: ForgotPasswordPhoneNumberVerificationPage),
    AutoRoute(page: ForgotPasswordOtpVerificationPage),
    AutoRoute(page: ForgotChangePasswordPage),
    AutoRoute(page: MpinLoginPage),
    AutoRoute(page: SetMpinPage),
    AutoRoute(page: PaymentPage),
    AutoRoute(page: PaymentSuccessPage),
    AutoRoute(page: AppRoutingPage)
    // AutoRoute(page: MpinLoginPage),

    // AutoRoute(page: MpinLoginPage),
  ],
)
class $AppRouter {}
