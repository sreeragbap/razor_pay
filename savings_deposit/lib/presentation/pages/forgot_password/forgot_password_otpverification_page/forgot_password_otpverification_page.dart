import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/application/forgot_password/forgotpassword_bloc.dart';
import 'package:savings_deposit/application/otp_verification/otp_verification_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';

import '../../../../core/colors.dart';
import '../../../widgets/otp_verification_widget/otp_verification_widget.dart';

class ForgotPasswordOtpVerificationPage extends StatelessWidget {
  const ForgotPasswordOtpVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OtpVerificationBloc, OtpVerificationState>(
      listener: (context, state) {
        state.confirmOtpFailureOrSucessOption.fold(() {}, (either) {
          either.fold((failure) {
            Flushbar(
              message: failure.map(
                serverFailure: (_) => "Server error",
                clientFailure: (_) => "Enter valid OTP",
                otpIsWrong: (value) => value.wrongOtp,
                otpAlredyUsed: (value) => value.otpAlredyUsed,
                otpExpired: (value) => value.otpExpired,
              ),
              duration: kDuration1,
            ).show(context);
          }, (_) {
            context.router.push(const ForgotChangePasswordRoute());
          });
        });
      },
      builder: (context, state) {
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
              //             .transactionid!)):
              context.read<OtpVerificationBloc>().add(
                  OtpVerificationEvent.otpBUttonPressed(context
                      .read<ForgotpasswordBloc>()
                      .state
                      .otpModel!
                      .transactionId
                      .toString()));
            },
            resendOnPressed: () {
              countDownController.start();
               context
                    .read<ForgotpasswordBloc>()
                    .add(ForgotpasswordEvent.findMobileAndSendOtp(
                      customerId: context.read<ForgotpasswordBloc>().state.customerId
                    ));
              // context.read<OtpVerificationBloc>().add(
              //     OtpVerificationEvent.resendOTP(
              //         context.read<OtpVerificationBloc>().state.mobileNumber!));
              context
                  .read<OtpVerificationBloc>()
                  .add(const OtpVerificationEvent.activeResendOtp());
            },
          ),
        );
      },
    );
  }
}