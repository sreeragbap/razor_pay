import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';

import 'package:savings_deposit/application/otp_verification/otp_verification_bloc.dart';
import 'package:savings_deposit/core/colors.dart';

class PinField extends StatelessWidget {
  const PinField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinput(
        length: 6,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        defaultPinTheme: PinTheme(
          width: 35,
          height: 50,
          textStyle: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: kPrimaryColor,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onCompleted: (pin) => context.read<OtpVerificationBloc>().add(
              OtpVerificationEvent.otpChanged(pin),
            ));
  }
}
