import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:savings_deposit/application/registration/registration_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/presentation/pages/login/widgets/custom_textfield.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';
import 'package:savings_deposit/presentation/widgets/phonenumber_verification_widget/phonenumber_verification_widget.dart';

class RegisterPhoneNumberVerificationPage extends StatelessWidget {
  const RegisterPhoneNumberVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final customerIdController = TextEditingController();
    return Scaffold(
      appBar: customizedAppBar(context),
      backgroundColor: kbackgroundColor,
      body: BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (context, state) {
          state.mobileNumberSearchFailureOrSucces.fold(() {}, (either) {
            either.fold((failure) {
              Flushbar(
                  duration: const Duration(seconds: 1),
                  message: failure.map(
                    serverFailure: (_) => "Something went wrong",
                    clientFilure: (_) => "Unable to Connect",
                    invalidCustomerId: (value) => value.invalidCustomerId,
                    invalidToken: (value) => value.invalidToken,
                    mobileNumberIsNotLinked: (value) => value.mobileNumberIsNotLinked,
                    mobileNumberIsNotValid: (value) => value.mobileNumberIsNotValid,
                    userAlreadyRegistered: (value) => value.userAlreadyRegistered,
                    userNameAlreadyExistOrNot: (value) => value.userNameAlreadyExist,
                  )).show(context);
            }, (r) {
              context.router.push(const RegisterOtpVerificationRoute());
            });
          });
        },
        builder: (context, state) {
          return PhoneNumberVerificationWidget(
            onPressed: () {
              // context.read<OtpVerificationBloc>().add(
              //     OtpVerificationEvent.getMobileNumber(
              //         customerIdController.text));

              // --------------------------find the mobile and send the otp-------------------//
              context
                  .read<RegistrationBloc>()
                  .add(RegistrationEvent.findMobileAndSendOtp(
                    customerId: customerIdController.text,
                  ));

              // context
              //     .read<OtpVerificationBloc>()
              //     .add(const OtpVerificationEvent.otpReset());
            },
            customerIdField: CustomTextfield(
              hintText: 'Customer Id',
              textFieldWidth: 325,
              textFieldHeight: 56,
              customTextfieldController: customerIdController,
              onChanged: (value) {
                context
                    .read<RegistrationBloc>()
                    .add(RegistrationEvent.updateCustomerId(customerId: value));
              },
              inputFormatter: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(16)
              ],
              prefixIcon: const Icon(
                Icons.person,
                color: Colors.purple,
              ),
            ),
          );
        },
      ),
    );
  }
}
