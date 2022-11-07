import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:savings_deposit/application/forgot_password/forgotpassword_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/otp_verification/otp_verification_bloc.dart';
import 'package:savings_deposit/application/registration/registration_bloc.dart';
import 'package:savings_deposit/application/splash/splash_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/domain/splash/models/splash_model.dart';

import '../../router/app_router.gr.dart';

class SplashTabPage extends StatelessWidget {
  const SplashTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        state.splashpageFailureOrSuccess.fold(() {}, (either) {
          either.fold(
            (failure) {
              Flushbar(
                flushbarPosition: FlushbarPosition.TOP,
                duration: const Duration(seconds: 3),
                message: failure.map(
                    serverError: (_) => 'Server Error',
                    clientFailure: (_) => 'Network Error'),
              ).show(context);
            },
            (success) {
              print(state.splashModel!.splashToken);
              context.read<LoginBloc>().add(LoginEvent.saveSplashToken(
                  splashToken: state.splashModel!.splashToken));
              context.read<RegistrationBloc>().add(
                  RegistrationEvent.saveSplashToken(
                      splashToken: state.splashModel!.splashToken));
              context.read<OtpVerificationBloc>().add(
                  OtpVerificationEvent.saveSplashToken(
                      splashToken: state.splashModel!.splashToken));
              context.read<ForgotpasswordBloc>().add(
                  ForgotpasswordEvent.saveSplashToken(
                      splashToken: state.splashModel!.splashToken));
              if (context.read<LoginBloc>().state.loginDetails != null) {
                print("==========================================");
                print(
                    context.read<LoginBloc>().state.loginDetails!.customerName);
                Timer(kDuration2, () {
                  context.router.replaceAll([
                    MainRoute(
                        loginDetails:
                            context.read<LoginBloc>().state.loginDetails!),
                  ]);
                });
              } else {
                Timer(kDuration2, () {
                  context.router.push(const InitialRoute());
                  // context.router.push(const MainRoute());
                });
              }
            },
          );
        });
      },
      builder: (context, state) {
        SplashModel? appDetails = state.splashModel;

        if (appDetails == null) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Colors.purple,
              ),
            ),
          );
        }
        return Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            // height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/bg_design.png"),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "assets/icons/macom.png",
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: MediaQuery.of(context).size.width * 0.6,
                ),
                const SpinKitDoubleBounce(
                  color: Colors.white,
                  size: 70.0,
                ),
                Text(
                  'VERSION ${appDetails.versionNo.toString()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  appDetails.buildDate.toString().split(" ").first,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'Powered By ${appDetails.created.toString()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
