// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i16;
import 'package:flutter/material.dart' as _i17;

import '../../domain/login/models/login_model.dart' as _i18;
import '../pages/app_routing_page/app_routing_page.dart' as _i15;
import '../pages/customer/payment/payment_page.dart' as _i13;
import '../pages/customer/payment/payment_success_page.dart' as _i14;
import '../pages/forgot_password/change_password_page/forgot_change_password_page.dart'
    as _i10;
import '../pages/forgot_password/forgot_password_otpverification_page/forgot_password_otpverification_page.dart'
    as _i9;
import '../pages/forgot_password/forgot_password_phonenumber_verification_page/forgot_password_phonenumber_verification_page.dart'
    as _i8;
import '../pages/initial/initial_page.dart' as _i4;
import '../pages/login/login_page.dart' as _i3;
import '../pages/main/mainpages.dart' as _i2;
import '../pages/mpin/mpin_login_page.dart' as _i11;
import '../pages/mpin/set_mpin_page.dart' as _i12;
import '../pages/register/create_password_page/create_password_page.dart'
    as _i7;
import '../pages/register/register_otpverification_page/register_otpverification_page.dart'
    as _i6;
import '../pages/register/register_phonenumber_verification_page/register_phonenumber_verification_page.dart'
    as _i5;
import '../pages/splash/splash_page.dart' as _i1;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    MainRoute.name: (routeData) {
      final args = routeData.argsAs<MainRouteArgs>();
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.MainPage(key: args.key, loginDetails: args.loginDetails));
    },
    LoginRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginPage());
    },
    InitialRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.InitialPage());
    },
    RegisterPhoneNumberVerificationRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i5.RegisterPhoneNumberVerificationPage());
    },
    RegisterOtpVerificationRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.RegisterOtpVerificationPage());
    },
    CreatePasswordRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CreatePasswordPage());
    },
    ForgotPasswordPhoneNumberVerificationRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i8.ForgotPasswordPhoneNumberVerificationPage());
    },
    ForgotPasswordOtpVerificationRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i9.ForgotPasswordOtpVerificationPage());
    },
    ForgotChangePasswordRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ForgotChangePasswordPage());
    },
    MpinLoginRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.MpinLoginPage());
    },
    SetMpinRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.SetMpinPage());
    },
    PaymentRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.PaymentPage());
    },
    PaymentSuccessRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.PaymentSuccessPage());
    },
    AppRoutingRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.AppRoutingPage());
    }
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(SplashRoute.name, path: '/'),
        _i16.RouteConfig(MainRoute.name, path: '/main-page'),
        _i16.RouteConfig(LoginRoute.name, path: '/login-page'),
        _i16.RouteConfig(InitialRoute.name, path: '/initial-page'),
        _i16.RouteConfig(RegisterPhoneNumberVerificationRoute.name,
            path: '/register-phone-number-verification-page'),
        _i16.RouteConfig(RegisterOtpVerificationRoute.name,
            path: '/register-otp-verification-page'),
        _i16.RouteConfig(CreatePasswordRoute.name,
            path: '/create-password-page'),
        _i16.RouteConfig(ForgotPasswordPhoneNumberVerificationRoute.name,
            path: '/forgot-password-phone-number-verification-page'),
        _i16.RouteConfig(ForgotPasswordOtpVerificationRoute.name,
            path: '/forgot-password-otp-verification-page'),
        _i16.RouteConfig(ForgotChangePasswordRoute.name,
            path: '/forgot-change-password-page'),
        _i16.RouteConfig(MpinLoginRoute.name, path: '/mpin-login-page'),
        _i16.RouteConfig(SetMpinRoute.name, path: '/set-mpin-page'),
        _i16.RouteConfig(PaymentRoute.name, path: '/payment-page'),
        _i16.RouteConfig(PaymentSuccessRoute.name,
            path: '/payment-success-page'),
        _i16.RouteConfig(AppRoutingRoute.name, path: '/app-routing-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i16.PageRouteInfo<MainRouteArgs> {
  MainRoute({_i17.Key? key, required _i18.LoginDetails? loginDetails})
      : super(MainRoute.name,
            path: '/main-page',
            args: MainRouteArgs(key: key, loginDetails: loginDetails));

  static const String name = 'MainRoute';
}

class MainRouteArgs {
  const MainRouteArgs({this.key, required this.loginDetails});

  final _i17.Key? key;

  final _i18.LoginDetails? loginDetails;

  @override
  String toString() {
    return 'MainRouteArgs{key: $key, loginDetails: $loginDetails}';
  }
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i16.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.InitialPage]
class InitialRoute extends _i16.PageRouteInfo<void> {
  const InitialRoute() : super(InitialRoute.name, path: '/initial-page');

  static const String name = 'InitialRoute';
}

/// generated route for
/// [_i5.RegisterPhoneNumberVerificationPage]
class RegisterPhoneNumberVerificationRoute extends _i16.PageRouteInfo<void> {
  const RegisterPhoneNumberVerificationRoute()
      : super(RegisterPhoneNumberVerificationRoute.name,
            path: '/register-phone-number-verification-page');

  static const String name = 'RegisterPhoneNumberVerificationRoute';
}

/// generated route for
/// [_i6.RegisterOtpVerificationPage]
class RegisterOtpVerificationRoute extends _i16.PageRouteInfo<void> {
  const RegisterOtpVerificationRoute()
      : super(RegisterOtpVerificationRoute.name,
            path: '/register-otp-verification-page');

  static const String name = 'RegisterOtpVerificationRoute';
}

/// generated route for
/// [_i7.CreatePasswordPage]
class CreatePasswordRoute extends _i16.PageRouteInfo<void> {
  const CreatePasswordRoute()
      : super(CreatePasswordRoute.name, path: '/create-password-page');

  static const String name = 'CreatePasswordRoute';
}

/// generated route for
/// [_i8.ForgotPasswordPhoneNumberVerificationPage]
class ForgotPasswordPhoneNumberVerificationRoute
    extends _i16.PageRouteInfo<void> {
  const ForgotPasswordPhoneNumberVerificationRoute()
      : super(ForgotPasswordPhoneNumberVerificationRoute.name,
            path: '/forgot-password-phone-number-verification-page');

  static const String name = 'ForgotPasswordPhoneNumberVerificationRoute';
}

/// generated route for
/// [_i9.ForgotPasswordOtpVerificationPage]
class ForgotPasswordOtpVerificationRoute extends _i16.PageRouteInfo<void> {
  const ForgotPasswordOtpVerificationRoute()
      : super(ForgotPasswordOtpVerificationRoute.name,
            path: '/forgot-password-otp-verification-page');

  static const String name = 'ForgotPasswordOtpVerificationRoute';
}

/// generated route for
/// [_i10.ForgotChangePasswordPage]
class ForgotChangePasswordRoute extends _i16.PageRouteInfo<void> {
  const ForgotChangePasswordRoute()
      : super(ForgotChangePasswordRoute.name,
            path: '/forgot-change-password-page');

  static const String name = 'ForgotChangePasswordRoute';
}

/// generated route for
/// [_i11.MpinLoginPage]
class MpinLoginRoute extends _i16.PageRouteInfo<void> {
  const MpinLoginRoute() : super(MpinLoginRoute.name, path: '/mpin-login-page');

  static const String name = 'MpinLoginRoute';
}

/// generated route for
/// [_i12.SetMpinPage]
class SetMpinRoute extends _i16.PageRouteInfo<void> {
  const SetMpinRoute() : super(SetMpinRoute.name, path: '/set-mpin-page');

  static const String name = 'SetMpinRoute';
}

/// generated route for
/// [_i13.PaymentPage]
class PaymentRoute extends _i16.PageRouteInfo<void> {
  const PaymentRoute() : super(PaymentRoute.name, path: '/payment-page');

  static const String name = 'PaymentRoute';
}

/// generated route for
/// [_i14.PaymentSuccessPage]
class PaymentSuccessRoute extends _i16.PageRouteInfo<void> {
  const PaymentSuccessRoute()
      : super(PaymentSuccessRoute.name, path: '/payment-success-page');

  static const String name = 'PaymentSuccessRoute';
}

/// generated route for
/// [_i15.AppRoutingPage]
class AppRoutingRoute extends _i16.PageRouteInfo<void> {
  const AppRoutingRoute()
      : super(AppRoutingRoute.name, path: '/app-routing-page');

  static const String name = 'AppRoutingRoute';
}
