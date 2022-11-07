

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/phone_number_verification/phone_number_verification_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/login/widgets/custom_textfield.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';
import 'package:savings_deposit/presentation/widgets/initial_frame/initial_frame_widget.dart';
import 'package:slider_captcha/presentation/screens/slider_captcha.dart';

class PhoneNumberVerificationWidget extends StatelessWidget {
  void Function() onPressed;
  CustomTextfield customerIdField;
  PhoneNumberVerificationWidget({
    Key? key,
    required this.onPressed,
    required this.customerIdField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Responsive(
      desktop: desktopOtpVerificationWidget(context),
      mobile: mobileOtpVerificationWidget(context),
      tablet: null,
    );
  }

  Widget desktopOtpVerificationWidget(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final delegate = S.of(context);
    return InitialFrameWidget(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icons/macom.png",
                height: 150,
                width: 80,
              ),
              kHeight30,
              Text(
                'Enter Customer Id',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(54, 54, 54, 1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
              kHeight70,
              SizedBox(
                  width: 350,
                  //  size <= 800 ? 250 : 350,
                  child: customerIdField),
              kHeight20,
              const Text(
                "We’ll send you a code by SMS to confirm your Registered Phone Number.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(114, 114, 114, 0.699999988079071),
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  height: 1,
                ),
              ),
              kHeight30,
              captchaWidget(context),
              kHeight50,
              BlocBuilder<PhoneNumberVerificationBloc,
                  PhoneNumberVerificationState>(
                builder: (context, state) {
                  if (state.enableSubmitButton) {
                    return ColoredButton(
                      buttonHeight: 48,
                      buttonTitle: 'Send OTP',
                      buttonWidth: 150,
                      borderRadius: 120.0,
                      press: onPressed,
                    );
                  } else {
                    return kHeight10;
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mobileOtpVerificationWidget(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/icons/macom.png",
              height: 80,
              width: 80,
            ),
            kHeight30,
            Text(
              'Enter Customer Id',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  color: const Color.fromRGBO(54, 54, 54, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
            kHeight70,
            SizedBox(
              width: 250,
              child: customerIdField,
            ),
            kHeight20,
            const Text(
              "We’ll send you a code by SMS \nto confirm your Registered Phone Number.",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(114, 114, 114, 0.699999988079071),
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
            kHeight30,
            captchaWidget(context),
            kHeight50,
            BlocBuilder<PhoneNumberVerificationBloc,
                PhoneNumberVerificationState>(
              builder: (context, state) {
                if (state.enableSubmitButton) {
                  return ColoredButton(
                    buttonHeight: 48,
                    buttonTitle: 'Send OTP',
                    buttonWidth: 150,
                    borderRadius: 120.0,
                    press: onPressed,
                  );
                } else {
                  return kHeight10;
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget captchaWidget(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext captchactx) {
              return SimpleDialog(
                children: [
                  SliderCaptcha(
                    captchaSize: 50,
                    image: Image.asset(
                      'assets/images/Pro pic.png',
                      height: 200,
                      width: 600,
                      fit: BoxFit.fill,
                    ),
                    onSuccess: () => showCaptchaSuccess(context, captchactx),
                  ),
                ],
              );
            });
      },
      child: Container(
          height: 57,
          width: 200,
          color: Colors.white,
          child: const Center(
              child: Text(
            "Captcha",
            style: TextStyle(fontWeight: FontWeight.bold),
          ))),
    );
  }

  void showCaptchaSuccess(BuildContext ctx, BuildContext captchactx) {
    showDialog(
      context: ctx,
      builder: (context) {
        return AlertDialog(
          title: const Icon(
            Icons.check_circle_outline,
            color: Colors.green,
          ),
          content: SizedBox(
            height: 100,
            child: Column(
              children: [
                const Text('Successfull'),
                kHeight10,
                TextButton(
                  onPressed: () {
                    context.read<PhoneNumberVerificationBloc>().add(
                          const PhoneNumberVerificationEvent.captchaEvent(),
                        );
                    Navigator.pop(ctx);
                    Navigator.pop(captchactx);
                  },
                  child: const Text("Continue"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
