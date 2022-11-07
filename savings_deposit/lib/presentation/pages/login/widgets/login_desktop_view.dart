// ignore_for_file: unused_local_variable, avoid_print

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

class LoginDesktopView extends StatelessWidget {
  const LoginDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    final loginId = TextEditingController();
    final password = TextEditingController();
    return BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
      state.loginFailureOrSucces.fold(
        () => {},
        (a) => a.fold(
          (l) => l.map(
            serverError: (_) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(delegate.passwordandIdNotMatching),
                duration: kDuration1,
              ));
            },
            clientFailure: (_) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(delegate.somethingWentWrong),
                duration: kDuration1,
              ));
            },
          ),
          (r) => {
            if (state.loginDetails!.userType == "Customer")
              {
//////////////////////////////////////// fetching customer account details ///////////////////////////////////
                // context
                //     .read<CustomerBloc>()
                //     .add(CustomerEvent.newSdEmployeeBranchDetails(
                //       firmId: state.loginDetails!.firmId!,
                //       branchid: state.loginDetails!.branchId!,
                //       employeecode: int.parse(state.loginDetails!.customerId!),
                //       branchName: state.loginDetails!.branchname!,
                //     )),
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
                context.router
                    .push(MainRoute(loginDetails: state.loginDetails)),
              }
            else if (state.loginDetails!.userType == "Employee")
              {
                // context
                //     .read<LoginBloc>()
                //     .add(LoginEvent.newSdEmployeeBranchDetails(
                //       firmId: state.loginDetails!.firmId!,
                //       branchid: state.loginDetails!.branchId!,
                //       employeecode: state.loginDetails!.empCode!,
                //       branchName: state.loginDetails!.branchname!,
                //     )),
                context.read<EmployeeBloc>().add(
                    EmployeeEvent.getEmployeeNotifications(
                        employeeid: state.loginDetails!.empCode.toString())),
                // context.read<AuthBloc>().add(
                //       const AuthEvent.employeePageEvent(),
                //     ),
                context.router
                    .push(MainRoute(loginDetails: state.loginDetails)),
              }
          },
        ),
      );
    }, builder: (context, state) {
      final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
      final delegate = S.of(context);
      final size = MediaQuery.of(context).size.width;
      print("width is ///////////// $size");
      return Center(
        child: InitialFrameWidget(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              children: [
                kHeight50,
                SizedBox(
                  height: 160,
                  width: 125,
                  child: Image.asset(
                    'assets/icons/macom.png',
                  ),
                ),
                kHeight20,
                Text(
                  delegate.initialPageLogin,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
                kHeight10,
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
                  hintText: delegate.loginId,
                  inputFormatter: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(12)
                  ],
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
                kHeight30,
                CustomTextfield(
                  onFieldSubmitted: (value) {
                    login(loginId, password, context);
                  },
                  inputFormatter: [LengthLimitingTextInputFormatter(20)],
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
                kHeight20,
                SizedBox(
                  width: 562,
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
                kHeight30,
                ColoredButton(
                  press: () {
                    login(loginId, password, context);
                    // if (loginId.text.isEmpty && password.text.isEmpty) {
                    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //       duration: kDuration1,
                    //       content: Text('Enter the UserID and Password')));
                    // } else if (loginId.text.isEmpty) {
                    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //       duration: kDuration1,
                    //       content: Text('Enter the UserID ')));
                    // } else if (password.text.isEmpty) {
                    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    //       duration: kDuration1,
                    //       content: Text('Enter the Password')));
                    // } else {
                    //   context.read<LoginBloc>().add(LoginEvent.submitPressed(
                    //       userId: loginId.text,
                    //       password: password.text,
                    //       firmId: context
                    //           .read<SplashBloc>()
                    //           .state
                    //           .splashModel!
                    //           .firmId,
                    //       moduleId: context
                    //           .read<SplashBloc>()
                    //           .state
                    //           .splashModel!
                    //           .moduleId));
                    // }
                  },
                  buttonHeight: 50,
                  buttonWidth: 150,
                  buttonTitle: delegate.initialPageLogin,
                  borderRadius: 10,
                ),
                kHeight20,
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
                        context.read<PhoneNumberVerificationBloc>().add(
                            const PhoneNumberVerificationEvent
                                .disableSendOtpButton());
                        context.router
                            .push(const RegisterPhoneNumberVerificationRoute());
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
            ),
          ),
        ),
      );
    });
  }

  login(TextEditingController loginIdCntrlr,
      TextEditingController passwordCntrlr, BuildContext _context) {
    if (loginIdCntrlr.text.isEmpty && passwordCntrlr.text.isEmpty) {
      ScaffoldMessenger.of(_context).showSnackBar(const SnackBar(
          duration: kDuration1,
          content: Text('Enter the UserID and Password')));
    } else if (loginIdCntrlr.text.isEmpty) {
      ScaffoldMessenger.of(_context).showSnackBar(const SnackBar(
          duration: kDuration1, content: Text('Enter the UserID ')));
    } else if (passwordCntrlr.text.isEmpty) {
      ScaffoldMessenger.of(_context).showSnackBar(const SnackBar(
          duration: kDuration1, content: Text('Enter the Password')));
    } else {
      // _context.read<LoginBloc>().add(LoginEvent.submitPressed(
      //     userId: loginIdCntrlr.text,
      //     password: passwordCntrlr.text,
      //     firmId: _context.read<SplashBloc>().state.splashModel!.firmId,
      //     moduleId: _context.read<SplashBloc>().state.splashModel!.moduleId,));
    }
  }
}

// Widget loginDesktopView(BuildContext context) {
//   final delegate = S.of(context);
//   final loginIdCntrlr = TextEditingController();
//   final password = TextEditingController();
//   return BlocConsumer<LoginBloc, LoginState>(listener: (context, state) {
//     state.loginFailureOrSucces.fold(
//       () => {},
//       (a) => a.fold(
//         (l) => l.map(
//           serverError: (_) {
//             ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(delegate.passwordandIdNotMatching)));
//           },
//           clientFailure: (_) {
//             ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text(delegate.somethingWentWrong)));
//           },
//         ),
//         (r) => {
//           if (state.loginDetails!.userType == "Customer")
//             {
// //////////////////////////////////////// fetching customer account details ///////////////////////////////////
//               // context
//               //     .read<CustomerBloc>()
//               //     .add(CustomerEvent.newSdEmployeeBranchDetails(
//               //       firmId: state.loginDetails!.firmId!,
//               //       branchid: state.loginDetails!.branchId!,
//               //       employeecode: int.parse(state.loginDetails!.customerId!),
//               //       branchName: state.loginDetails!.branchname!,
//               //     )),
//               context.read<CustomerBloc>().add(
//                   CustomerEvent.fetchCustomerAccounts(
//                       customerId: state.loginDetails!.customerId!)),
//               context.read<CustomerBloc>().add(
//                   CustomerEvent.fetchCustomerNotifications(
//                       customerId: state.loginDetails!.customerId!)),
//               context.read<CustomerBloc>().add(
//                   CustomerEvent.fetchCustomerProfile(
//                       customerId: state.loginDetails!.customerId!)),
//               context.read<CustomerBloc>().add(
//                   CustomerEvent.fetchCustomerScheduledTransactions(
//                       customerId: state.loginDetails!.customerId!)),
// //////////////////////////////////////////////////////////////////////////////////////////////////////////
//               context.read<AuthBloc>().add(
//                     const AuthEvent.customerPageEvent(),
//                   ),
//               context.router.push(MainRoute(loginDetails: state.loginDetails)),
//             }
//           else if (state.loginDetails!.userType == "Employee")
//             {
//               // context
//               //     .read<LoginBloc>()
//               //     .add(LoginEvent.newSdEmployeeBranchDetails(
//               //       firmId: state.loginDetails!.firmId!,
//               //       branchid: state.loginDetails!.branchId!,
//               //       employeecode: state.loginDetails!.empCode!,
//               //       branchName: state.loginDetails!.branchname!,
//               //     )),
//               context.read<EmployeeBloc>().add(
//                   EmployeeEvent.getEmployeeNotifications(
//                       employeeid: state.loginDetails!.empCode.toString())),
//               context.read<AuthBloc>().add(
//                     const AuthEvent.employeePageEvent(),
//                   ),
//               context.router.push(MainRoute(loginDetails: state.loginDetails)),
//             }
//         },
//       ),
//     );
//   }, builder: (context, state) {
//     final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
//     final delegate = S.of(context);
//     final size = MediaQuery.of(context).size.width;
//     print("width is ///////////// $size");
//     return Center(
//       child: InitialFrameWidget(
//         child: FittedBox(
//           fit: BoxFit.scaleDown,
//           child: Column(
//             children: [
//               kHeight50,
//               SizedBox(
//                 height: 160,
//                 width: 125,
//                 child: Image.asset(
//                   'assets/icons/macom.png',
//                 ),
//               ),
//               kHeight20,
//               Text(
//                 delegate.initialPageLogin,
//                 style:
//                     const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
//               ),
//               kHeight10,
//               AutoSizeText(
//                 delegate.welcomeToMaben,
//                 style: GoogleFonts.poppins(
//                   color: const Color.fromARGB(255, 122, 121, 121),
//                   fontWeight: FontWeight.bold,
//                   fontSize: 19,
//                 ),
//                 maxLines: 1,
//               ),
//               kHeight20,
//               CustomTextfield(
//                 hintText: delegate.loginId,
//                 textFieldWidth: 562,
//                 textFieldHeight: 56,
//                 customTextfieldController: loginId,
//                 // inputFormatter: <TextInputFormatter>[
//                 //   FilteringTextInputFormatter.digitsOnly
//                 // ],
//                 prefixIcon: const Icon(
//                   Icons.person,
//                   color: Color(0xff914686),
//                 ),
//               ),
//               kHeight30,
//               CustomTextfield(
//                 showPassword: state.showPassword,
//                 textFieldWidth: 562,
//                 textFieldHeight: 56,
//                 hintText: delegate.Password,
//                 prefixIcon: const Icon(
//                   Icons.lock,
//                   color: Color(0xff914686),
//                 ),
//                 suffixIcon: IconButton(
//                   onPressed: () {
//                     context
//                         .read<LoginBloc>()
//                         .add(const LoginEvent.showPassword());
//                   },
//                   icon: Icon(
//                     state.showPassword
//                         ? Icons.visibility_off
//                         : Icons.visibility,
//                   ),
//                 ),
//                 customTextfieldController: password,
//               ),
//               kHeight20,
//               SizedBox(
//                 width: 562,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton(
//                       onPressed: () {
//                         context.router.push(
//                             const ForgotPasswordPhoneNumberVerificationRoute());
//                       },
//                       child: Text(
//                         delegate.forgotPasswordLabel,
//                         style: const TextStyle(
//                           color: Color.fromARGB(255, 123, 135, 245),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               kHeight30,
//               ColoredButton(
//                 press: () {
//                   if (loginId.text.isEmpty && password.text.isEmpty) {
//                     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                         content: Text('Enter the UserID and Password')));
//                   } else if (loginId.text.isEmpty) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Enter the UserID ')));
//                   } else if (password.text.isEmpty) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                         const SnackBar(content: Text('Enter the Password')));
//                   }

//                   context.read<LoginBloc>().add(LoginEvent.submitPressed(
//                       userId: loginId.text,
//                       password: password.text,
//                       firmId:
//                           context.read<SplashBloc>().state.splashModel!.firmId,
//                       moduleId: context
//                           .read<SplashBloc>()
//                           .state
//                           .splashModel!
//                           .moduleId));
//                 },
//                 buttonHeight: 50,
//                 buttonWidth: 150,
//                 buttonTitle: delegate.initialPageLogin,
//                 borderRadius: 10,
//               ),
//               kHeight20,
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     delegate.notRegistered,
//                     style: GoogleFonts.poppins(
//                       color: const Color(0xff363636),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       context.router
//                           .push(const RegisterPhoneNumberVerificationRoute());
//                     },
//                     child: Text(
//                       delegate.here,
//                       style: GoogleFonts.poppins(
//                         color: const Color.fromARGB(255, 123, 135, 245),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   });
// }
