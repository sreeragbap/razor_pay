import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:savings_deposit/application/splash/splash_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/domain/splash/models/splash_model.dart';

import '../../router/app_router.gr.dart';

class SplashDesktopPage extends StatelessWidget {
  const SplashDesktopPage({Key? key}) : super(key: key);

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
              Timer(kDuration2, () {
                context.router.push(const InitialRoute());
                // context.router.push(const MainRoute());
              });
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
            )),
          );
        }

        return Scaffold(
          body: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bg_design.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/macom.png",
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.width * 0.4,
                    ),
                    const SpinKitDoubleBounce(
                      color: Colors.white10,
                      size: 80.0,
                    ),
                    Text(
                      'Version${appDetails.versionNo.toString()}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15),
                    ),
                    Text(
                      appDetails.buildDate.toString().split(" ").first,
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 10),
                    ),
                    Text(
                      'Powered By${appDetails.created.toString()} ',
                      style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
