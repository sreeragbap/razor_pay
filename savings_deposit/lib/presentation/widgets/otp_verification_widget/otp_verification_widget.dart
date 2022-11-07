

import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:savings_deposit/application/forgot_password/forgotpassword_bloc.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/otp_verification/otp_verification_bloc.dart';
import 'package:savings_deposit/application/registration/registration_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';
import 'package:savings_deposit/presentation/widgets/initial_frame/initial_frame_widget.dart';
import 'package:savings_deposit/presentation/widgets/otp_verification_widget/pin_field.dart';

final CountDownController countDownController = CountDownController();

class OtpVerificationWidget extends StatelessWidget {
  void Function() onPressed;
  void Function() resendOnPressed;
  OtpVerificationWidget({
    Key? key,
    required this.onPressed,
    required this.resendOnPressed,
  }) : super(key: key);
  OtpFieldController otpFieldController = OtpFieldController();
//backgroundColor: const Color(0xFFE2EDF3),

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Responsive(
        mobile: mobilePhoneNumberVerificationWidget(size, context),
        tablet: null,
        desktop: desktopPhoneNumberVerificationWidget(size, context));
  }

  Widget mobilePhoneNumberVerificationWidget(
      double size, BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final _otpModel = context.read<RegistrationBloc>().state.otpModel ??
        context.read<ForgotpasswordBloc>().state.otpModel;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/otp_verify.png",
              height: 80,
              width: 80,
            ),
            kHeight30,

            Text(
              'OTP send to your registered mobile number  ' +
                  _otpModel!.phone1!.replaceRange(3, 8, "*****"),
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(0, 0, 0, 0.5199999809265137),
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  height: 1.5),
            ),
            kHeight70,
            const PinField(),
            // OTPTextField(
            //   onChanged: ((value) {}),
            //   length: 6,
            //   controller: otpFieldController,
            //   width: double.infinity,
            //   fieldWidth: 40,
            //   style: const TextStyle(fontSize: 17),
            //   textFieldAlignment: MainAxisAlignment.spaceAround,
            //   fieldStyle: FieldStyle.box,
            //   onCompleted: (pin) {
            //     context.read<OtpVerificationBloc>().add(
            //           OtpVerificationEvent.otpChanged(pin),
            //         );
            //     print("Completed: " + pin);
            //   },
            // ),
            kHeight30,
            // const Text(
            //   "Enter OTP in",
            // ),
            CircularCountDownTimer(
              duration: 60,
              initialDuration: 0,
              controller: countDownController,
              width: 50,
              height: 50,
              ringColor: Colors.grey[300]!,
              ringGradient: null,
              fillColor: Colors.purpleAccent[100]!,
              fillGradient: null,
              backgroundColor: Colors.purple[500],
              backgroundGradient: null,
              strokeWidth: 20.0,
              strokeCap: StrokeCap.round,
              textStyle: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textFormat: CountdownTextFormat.S,
              isReverse: true,
              isReverseAnimation: true,
              isTimerTextShown: true,
              autoStart: true,
              onStart: () {
                context.read<OtpVerificationBloc>().state.activeResendOtp
                    ? context
                        .read<OtpVerificationBloc>()
                        .add(const OtpVerificationEvent.activeResendOtp())
                    : kHeight1;
              },
              onComplete: () {
                context.read<OtpVerificationBloc>().state.activeResendOtp
                    ? kHeight1
                    : context
                        .read<OtpVerificationBloc>()
                        .add(const OtpVerificationEvent.activeResendOtp());
              },
            ),
            kHeight30,
            ColoredButton(
              buttonHeight: 48,
              buttonTitle: 'Confirm',
              buttonWidth: 150,
              borderRadius: 120.0,
              press: onPressed,
            ),
            kHeight30,
            context.read<OtpVerificationBloc>().state.activeResendOtp
                ? TextButton(
                    onPressed: resendOnPressed,
                    child: const Text(
                      "Resend OTP",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  )
                : const Text(
                    "Resend OTP",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget desktopPhoneNumberVerificationWidget(
      double size, BuildContext context) {
    return InitialFrameWidget(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icons/otp_verify.png",
              height: 207,
              width: 155,
            ),
            kHeight10,
            Text(
              'OTP send to your registered mobile number  ' ,
              // +
              //     context.read<OtpVerificationBloc>().state.customerId!,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(0, 0, 0, 0.5199999809265137),
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
            kHeight70,
            OTPTextField(
              onChanged: (value) {},
              length: 6,
              controller: otpFieldController,
              width: double.infinity,
              fieldWidth: 50,
              style: const TextStyle(fontSize: 17),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                context.read<OtpVerificationBloc>().add(
                      OtpVerificationEvent.otpChanged(pin),
                    );
                print("Completed: " + pin);
              },
            ),
            kHeight30,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Enter OTP in",
                ),
                kWidth10,
                CircularCountDownTimer(
                  duration: 180,
                  initialDuration: 0,
                  controller: countDownController,
                  width: 40,
                  height: 40,
                  ringColor: const Color.fromARGB(255, 235, 230, 230),
                  ringGradient: null,
                  fillColor: Colors.purple[500]!,
                  fillGradient: null,
                  backgroundColor: kbackgroundColor,
                  backgroundGradient: null,
                  strokeWidth: 3.0,
                  strokeCap: StrokeCap.round,
                  textStyle: const TextStyle(
                    fontSize: 14.0,
                    color: Color.fromARGB(255, 79, 78, 78),
                  ),
                  textFormat: CountdownTextFormat.S,
                  isReverse: true,
                  isReverseAnimation: true,
                  isTimerTextShown: true,
                  autoStart: true,
                  onStart: () {},
                  onComplete: () {
                    print("hello");
                    context
                        .read<OtpVerificationBloc>()
                        .add(const OtpVerificationEvent.activeResendOtp());
                  },
                ),
              ],
            ),
            kHeight30,
            ColoredButton(
              buttonHeight: 48,
              buttonTitle: 'Confirm',
              buttonWidth: 216,
              borderRadius: 120.0,
              press: onPressed,
            ),
            kHeight30,
            context.read<OtpVerificationBloc>().state.activeResendOtp
                ? TextButton(
                    onPressed: resendOnPressed,
                    child: const Text(
                      "Resend OTP",
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontFamily: 'Poppins',
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                        height: 1,
                      ),
                    ),
                  )
                : const Text(
                    "Resend OTP",
                    style: TextStyle(
                      color: Color.fromARGB(255, 158, 156, 156),
                      fontFamily: 'Poppins',
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      height: 1,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
