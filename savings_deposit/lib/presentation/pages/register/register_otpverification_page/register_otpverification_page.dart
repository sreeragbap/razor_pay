

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/otp_verification/otp_verification_bloc.dart';
import 'package:savings_deposit/application/registration/registration_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';
import 'package:savings_deposit/presentation/widgets/otp_verification_widget/otp_verification_widget.dart';

class RegisterOtpVerificationPage extends StatelessWidget {
  const RegisterOtpVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpVerificationBloc, OtpVerificationState>(
        listener: (context, state) {
      state.confirmOtpFailureOrSucessOption.fold(() {}, (either) {
        either.fold((failure) {
          Flushbar(
            message: failure.map(
              serverFailure: (_) => "Something went wrong",
              clientFailure: (_) => "Sorry , there was a problem",
              otpIsWrong: (value) => value.wrongOtp,
              otpAlredyUsed: (value) => value.otpAlredyUsed,
              otpExpired: (value) => value.otpExpired,
            ),
            duration: kDuration1,
          ).show(context);
        }, (_) {
          context.router.replace(const CreatePasswordRoute());
        });
      });
    }, builder: (context, state) {
      final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
      return Scaffold(
        appBar: customizedAppBar(context),
        backgroundColor: kbackgroundColor,
        body: OtpVerificationWidget(
          onPressed: () {
            // context.read<OtpVerificationBloc>().state.activeResendOtp
            //     ? context.read<OtpVerificationBloc>().add(
            //         OtpVerificationEvent.otpBUttonPressed(context
            //             .read<OtpVerificationBloc>()
            //             .state
            //             .transactionid!))
            //     :
            context.read<OtpVerificationBloc>().add(
                OtpVerificationEvent.otpBUttonPressed(context
                    .read<RegistrationBloc>()
                    .state
                    .otpModel!
                    .transactionId
                    .toString()));

            // context
            //     .read<RegistrationBloc>()
            //     .add(RegistrationEvent.getEmployeeDetails(
            //       customerId: context.read<RegistrationBloc>().state.customerId,
            //     ));

            // context
            //     .read<OtpVerificationBloc>()
            //     .add(const OtpVerificationEvent.otpChanged(''));
          },
          resendOnPressed: () {
            countDownController.start();
             context
                  .read<RegistrationBloc>()
                  .add(RegistrationEvent.findMobileAndSendOtp(
                    customerId: context.read<RegistrationBloc>().state.customerId
                  ));
          //  context.read<OtpVerificationBloc>().add(
          //       OtpVerificationEvent.otpBUttonPressed(context
          //           .read<RegistrationBloc>()
          //           .state
          //           .otpModel!
          //           .transactionId
          //           .toString()));
            // context
            //     .read<OtpVerificationBloc>()
            //     .add(const OtpVerificationEvent.activeResendOtp());
          },
        ),
      );
    });
  }
}

