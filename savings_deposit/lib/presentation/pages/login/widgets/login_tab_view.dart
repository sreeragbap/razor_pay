import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/phone_number_verification/phone_number_verification_bloc.dart';
import 'package:savings_deposit/application/splash/splash_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/login/widgets/custom_textfield.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';
import 'package:savings_deposit/presentation/widgets/initial_frame/initial_frame_widget.dart';

import '../../../../application/auth/auth_bloc.dart';
import '../../../../application/language/language_bloc.dart';
import '../../../../generated/l10n.dart';
import '../../../router/app_router.gr.dart';

class LoginTabView extends StatelessWidget {
  const LoginTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;

    final loginId = TextEditingController();
    final password = TextEditingController();

    return BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
      final delegate = S.of(context);

      state.loginFailureOrSucces.fold(
          () => {},
          (a) => a.fold(
              (l) => l.map(
                    serverError: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(delegate.passwordandIdNotMatching)));
                    },
                    clientFailure: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(delegate.somethingWentWrong)));
                    },
                  ),
              (r) => {
                    if (state.loginDetails!.userType == "Customer")
                      {
//////////////////////////////////////// fetching customer account details ///////////////////////////////////
                        context.read<CustomerBloc>().add(
                            CustomerEvent.saveLoginToken(
                                loginToken: state.loginDetails!.loginToken!)),
                                 context.read<EmployeeBloc>().add(
                            EmployeeEvent.saveLoginToken(
                                loginToken: state.loginDetails!.loginToken!)),
                        context.read<CustomerBloc>().add(
                            CustomerEvent.fetchCustomerAccounts(
                                customerId: state.loginDetails!.customerId!)),
                        context.read<CustomerBloc>().add(
                            CustomerEvent.fetchCustomerNotifications(
                                customerId: state.loginDetails!.customerId!)),
                        context.read<CustomerBloc>().add(
                            CustomerEvent.fetchCustomerProfile(
                                customerId: state.loginDetails!.customerId!)),
                        context.read<CustomerBloc>().add(
                            CustomerEvent.fetchCustomerScheduledTransactions(
                                customerId: state.loginDetails!.customerId!)),
//////////////////////////////////////////////////////////////////////////////////////////////////////////
                        context.read<AuthBloc>().add(
                              const AuthEvent.customerPageEvent(),
                            ),

                        context.router.pushAndPopUntil(
                            MainRoute(loginDetails: state.loginDetails),
                            predicate: (Route<dynamic> route) {
                          return false;
                        }),
                      }
                    else if (state.loginDetails!.userType == "Employee")
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('You are not Authorized')))
                      }
                  }));
    },
        // else if (state.loginDetails!.userType == "Employee")
        //   {
        //     context.read<EmployeeBloc>().add(
        //         EmployeeEvent.getEmployeeNotifications(
        //             employeeid: state.loginDetails!.empCode.toString())),
        //     context.read<AuthBloc>().add(
        //           const AuthEvent.employeePageEvent(),
        //         ),
        //     context.router
        //         .push(MainRoute(loginDetails: state.loginDetails)),
        //   }
        builder: (context, state) {
      print("--------------------" + state.splashToken + "-------------------");
      final delegate = S.of(context);
      final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
      final size = MediaQuery.of(context).size.width;

      return size < 800
          ? ListView(
              children: [
                Center(
                  child: Column(
                    children: [
                      kHeight30,
                      Image.asset(
                        'assets/icons/macom.png',
                        width: 150,
                        height: 150,
                      ),
                      kHeight30,
                      Text(
                        delegate.initialPageLogin,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      kHeight20,
                      AutoSizeText(
                        delegate.welcomeToMaben,
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 122, 121, 121),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                        maxLines: 1,
                      ),
                      kHeight30,
                      CustomTextfield(
                        inputFormatter: [LengthLimitingTextInputFormatter(12)],
                        hintText: delegate.loginId,
                        textFieldWidth: 325,
                        textFieldHeight: 56,
                        customTextfieldController: loginId,
                        // inputFormatter: <TextInputFormatter>[
                        //   FilteringTextInputFormatter.digitsOnly
                        // ],
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.purple,
                        ),
                      ),
                      kHeight30,
                      CustomTextfield(
                        inputFormatter: [LengthLimitingTextInputFormatter(20)],
                        showPassword: state.showPassword,
                        textFieldWidth: 325,
                        textFieldHeight: 56,
                        hintText: delegate.Password,
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.purple,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            context
                                .read<LoginBloc>()
                                .add(const LoginEvent.showPassword());
                          },
                          icon: Icon(
                            state.showPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        customTextfieldController: password,
                      ),
                      kHeight20,
                      SizedBox(
                        width: 325,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {
                                context.read<PhoneNumberVerificationBloc>().add(
                                    const PhoneNumberVerificationEvent
                                        .disableSendOtpButton());
                                context.router.push(
                                    const ForgotPasswordPhoneNumberVerificationRoute());
                              },
                              child: Text(
                                delegate.forgotPasswordLabel,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 123, 135, 245),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      kHeight20,
                      ColoredButton(
                        press: () {
                          if (loginId.text.isEmpty && password.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Enter the UserID and Password')));
                          } else if (loginId.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Enter the UserID ')));
                          } else if (password.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Enter the Password')));
                          }
                          context.read<LoginBloc>().add(
                              LoginEvent.submitPressed(
                                  userId: loginId.text,
                                  password: password.text,
                                  firmId: context
                                      .read<SplashBloc>()
                                      .state
                                      .splashModel!
                                      .firmId,
                                  moduleId: context
                                      .read<SplashBloc>()
                                      .state
                                      .splashModel!
                                      .moduleId));
                        },
                        buttonHeight: 50,
                        buttonWidth: 150,
                        buttonTitle: delegate.initialPageLogin,
                        fontSize: ismalayalam ? 8 : 15,
                        borderRadius: 10,
                      ),
                      kHeight30,
                      const Text('- OR -'),
                      kHeight20,
                      // SizedBox(
                      //   width: 325,
                      //   child: Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //     children: [
                      //       IconButton(
                      //         onPressed: () {},
                      //         icon: Image.asset(
                      //           "assets/icons/faceID_icon.png",
                      //         ),
                      //       ),
                      //       IconButton(
                      //         onPressed: () {},
                      //         icon: Image.asset(
                      //           "assets/icons/OTP_icon.png",
                      //         ),
                      //       ),
                      IconButton(
                        onPressed: () {
                          context
                              .read<LoginBloc>()
                              .add(const LoginEvent.getdevicetokenUniqueID());
                          context
                              .read<LoginBloc>()
                              .add(const LoginEvent.confirmSetMpin(""));

                          context.router.push(const MpinLoginRoute());
                        },
                        icon: Image.asset(
                          "assets/icons/mpin_icon.png",
                        ),
                      )
                    ],
                  ),
                ),
                kHeight50,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      delegate.notRegistered,
                      style: GoogleFonts.poppins(
                        color: const Color(0xff363636),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        context.router
                            .push(const RegisterPhoneNumberVerificationRoute());
                        context
                            .read<LoginBloc>()
                            .add(const LoginEvent.getdevicetokenUniqueID());
                      },
                      child: Text(
                        delegate.here,
                        style: GoogleFonts.poppins(
                          color: const Color.fromARGB(255, 123, 135, 245),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Center(
              child: InitialFrameWidget(
                child: ListView(
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 90,
                            width: 125,
                            child: Image.asset(
                              'assets/icons/macom.png',
                            ),
                          ),
                          kHeight10,
                          Text(
                            delegate.initialPageLogin,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          kHeight5,
                          AutoSizeText(
                            delegate.welcomeToMaben,
                            style: GoogleFonts.poppins(
                              color: const Color.fromARGB(255, 122, 121, 121),
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                            ),
                            maxLines: 1,
                          ),
                          kHeight20,
                          CustomTextfield(
                            inputFormatter: [
                              LengthLimitingTextInputFormatter(12)
                            ],
                            hintText: delegate.loginId,
                            textFieldWidth: 562,
                            textFieldHeight: 56,
                            customTextfieldController: loginId,
                            // inputFormatter: <TextInputFormatter>[
                            //   FilteringTextInputFormatter.digitsOnly
                            // ],
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Color(0xff914686),
                            ),
                          ),
                          kHeight20,
                          CustomTextfield(
                            inputFormatter: [
                              LengthLimitingTextInputFormatter(20)
                            ],
                            showPassword: state.showPassword,
                            textFieldWidth: 562,
                            textFieldHeight: 56,
                            hintText: delegate.Password,
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color(0xff914686),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                context
                                    .read<LoginBloc>()
                                    .add(const LoginEvent.showPassword());
                              },
                              icon: Icon(
                                state.showPassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                            customTextfieldController: password,
                          ),
                          kHeight10,
                          SizedBox(
                            width: 562,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    context.router.push(
                                        const ForgotPasswordPhoneNumberVerificationRoute());
                                  },
                                  child: Text(
                                    delegate.forgotPasswordLabel,
                                    style: const TextStyle(
                                      color: Color.fromARGB(255, 123, 135, 245),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          kHeight20,
                          ColoredButton(
                            press: () {
                              context.read<LoginBloc>().add(
                                  LoginEvent.submitPressed(
                                      userId: loginId.text,
                                      password: password.text,
                                      firmId: context
                                          .read<SplashBloc>()
                                          .state
                                          .splashModel!
                                          .firmId,
                                      moduleId: context
                                          .read<SplashBloc>()
                                          .state
                                          .splashModel!
                                          .moduleId));
                            },
                            buttonHeight: 40,
                            buttonWidth: 140,
                            buttonTitle: delegate.initialPageLogin,
                            borderRadius: 10,
                          ),
                          kHeight15,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                delegate.notRegistered,
                                style: GoogleFonts.poppins(
                                  color: const Color(0xff363636),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.router.push(
                                      const RegisterPhoneNumberVerificationRoute());
                                },
                                child: Text(
                                  delegate.here,
                                  style: GoogleFonts.poppins(
                                    color: const Color.fromARGB(
                                        255, 123, 135, 245),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
    });
  }
}
