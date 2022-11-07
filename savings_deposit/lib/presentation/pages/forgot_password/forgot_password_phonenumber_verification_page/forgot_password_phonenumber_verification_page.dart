import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/application/forgot_password/forgotpassword_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/presentation/pages/login/widgets/custom_textfield.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';
import 'package:savings_deposit/presentation/widgets/phonenumber_verification_widget/phonenumber_verification_widget.dart';

import '../../../../application/otp_verification/otp_verification_bloc.dart';
import '../../../../generated/l10n.dart';
import '../../../router/app_router.gr.dart';

class ForgotPasswordPhoneNumberVerificationPage extends StatelessWidget {
  const ForgotPasswordPhoneNumberVerificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    final customerIdController = TextEditingController();
    return Scaffold(
      appBar: customizedAppBar(context),
      backgroundColor: kbackgroundColor,
      body: BlocConsumer<ForgotpasswordBloc, ForgotpasswordState>(
        listener: (context, state) {
          state.forgotPasswordFailureOrSucces.fold(() {}, (either) {
            either.fold((failure) {
              Flushbar(
                duration: const Duration(seconds: 1),
                message: failure.map(
                  serverFailure: (_) => "Server Error",
                  clientFailure: (_) => "Network Error",
                  notARegisteredUser: (_) => "Not a Registered User",
                  passwordNotChanged: (_) =>
                      "Password Not Changed try again after some time",
                ),
              ).show(context);
            }, (r) {
              context.router.push(const ForgotPasswordOtpVerificationRoute());
            });
          });
        },
        builder: (context, state) {
          return PhoneNumberVerificationWidget(
            customerIdField: CustomTextfield(
              hintText: 'Customer Id',
              textFieldWidth: 325,
              textFieldHeight: 56,
              customTextfieldController: customerIdController,
                      inputFormatter: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(16)

              ],
              prefixIcon: const Icon(
                Icons.person,
                color: Colors.purple,
              ),
            ),
            onPressed: () {
              if (customerIdController.text.isNotEmpty) {
                context.read<OtpVerificationBloc>().add(
                    OtpVerificationEvent.updateCustomerId(customerId: 
                        customerIdController.text));
                // context
                //     .read<ForgotpasswordBloc>()
                //     .add(ForgotpasswordEvent.forgotPasswordApiCall(
                //       customerId: customerIdController.text,
                //     ));

                // --------------------------find the mobile and send the otp-------------------//
                context
                    .read<ForgotpasswordBloc>()
                    .add(ForgotpasswordEvent.findMobileAndSendOtp(
                      customerId: customerIdController.text,
                    ));
              } else {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: Text(delegate.withdrawalalert),
                          content: const Text("Customer Id can't be empty"),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Ok'),
                            ),
                          ],
                        ));
              }
            },
          );
        },
      ),
    );
  }
}
