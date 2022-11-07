import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_password_strength/flutter_password_strength.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/password/password_bloc.dart';
import 'package:savings_deposit/application/registration/registration_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';
import 'package:savings_deposit/presentation/widgets/initial_frame/initial_frame_widget.dart';

final newPasswordController = TextEditingController();

final confirmPasswordController = TextEditingController();

class PasswordWidget extends StatelessWidget {
  bool oldPassword;
  void Function() onPressed;
  PasswordWidget({
    Key? key,
    required this.oldPassword,
    required this.onPressed,
  }) : super(key: key);
  final _userNameController = TextEditingController();

  final GlobalKey<FormState> _createNewPasswordformkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final size = MediaQuery.of(context).size.width;
    return Responsive(
        mobile: mobilePasswordWidget(context),
        tablet: null,
        desktop: desktopPasswordWidget(context));
  }

  Widget employeWelcomeWidget() {
    return BlocBuilder<RegistrationBloc, RegistrationState>(
      builder: (context, state) {
        return state.getCustomerDetails != null
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/customer-service-woman 1.png",
                      height: 150,
                      width: 100,
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Name: ",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFAFB0B0),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        Text(state.getCustomerDetails!.customerId ?? "",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.poppins(
                              color: const Color.fromRGBO(145, 70, 134, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1,
                            )),
                      ],
                    ),
                    kHeight20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'CustomerName: ',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFAFB0B0),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        Text(
                          state.getCustomerDetails!.customerName ?? "",
                          style: GoogleFonts.poppins(
                            color: const Color.fromRGBO(145, 70, 134, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Department: ",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFAFB0B0),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        Text(
                          state.getCustomerDetails!.firmId.toString(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFAFB0B0),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Branch Id: ",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                              color: const Color(0xFFAFB0B0),
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                        Text(
                          state.getCustomerDetails!.branchId.toString(),
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            color: const Color(0xFFAFB0B0),
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            height: 1,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            : const Center(
                child: CircularProgressIndicator(),
              );
      },
    );
  }

  Widget mobilePasswordWidget(BuildContext context) {
    RegExp _password = RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
    return BlocBuilder<RegistrationBloc, RegistrationState>(
        builder: (context, state) {
      return Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // oldPassword
              //     ?
              Text(
                'Create New Password.',
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    color: const Color.fromRGBO(54, 54, 54, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
              // : employeWelcomeWidget(),
              kHeight50,
              SizedBox(
                width: 230,
                child: Column(
                  children: [
                    oldPassword
                        ? TextFormField(
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(15),
                              FilteringTextInputFormatter.deny(RegExp('[ ]')),
                              LowerCaseTextFormatter()
                            ],
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            // controller: _userNameController,
                            onChanged: (value) {
                              context.read<RegistrationBloc>().add(
                                  RegistrationEvent.updateUserName(
                                      userName: value));

                              context.read<RegistrationBloc>().add(
                                  RegistrationEvent.userNameAlreadyExistOrNot(
                                      userName: value));

                              print(value);
                            },
                            decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromRGBO(135, 62, 140, 1),
                                ),
                              ),
                              hintText: 'UserName',
                            ),
                            validator: (value) {
                              print(
                                  '----////------${state.userNameResponse}--/////----------');
                              if (state.userNameResponse == 'Success') {
                                return '';
                              } else {
                                return state.userNameResponse;
                              }
                            },
                          )
                        : const SizedBox(),

                    kHeight20,
                    TextFormField(
                      obscureText: true,
                      onChanged: (value) {
                        context
                            .read<PasswordBloc>()
                            .add(PasswordEvent.newPassword(newPassword: value));
                      },
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(15),
                        FilteringTextInputFormatter.deny(RegExp(r'\s')),
                      ],
                      //  controller: newPasswordController,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            tooltip:
                                '* Minimum eight characters\n* At least one uppercase letter\n* One lowercase letter\n* One number and one special character',
                            onPressed: () {},
                            icon: Icon(
                              Icons.warning,
                              color: Colors.red.shade700,
                            )),
                        hintText: 'Enter New Password',
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(135, 62, 140, 1),
                          ),
                        ),
                      ),
                    ),
                    // ),
                    kHeight20,
                    BlocConsumer<PasswordBloc, PasswordState>(
                      listener: (context, state) {},
                      builder: (context, state) {
                        // double _strength = state.strength;

                        return FlutterPasswordStrength(
                            strengthCallback: (strength) {
                              print(strength);
                              context.read<PasswordBloc>().add(
                                  PasswordEvent.updateStrengthValue(strength));
                              context.read<PasswordBloc>().add(
                                  PasswordEvent.checkPasswordEvent(strength));
                            },
                            password: state.newPassword);
                        //  LinearProgressIndicator(
                        //   value: _strength,
                        //   backgroundColor: Colors.grey,
                        //   color: _strength <= 1 / 4
                        //       ? Colors.red
                        //       : _strength == 2 / 4
                        //           ? Colors.yellow
                        //           : _strength == 3 / 4
                        //               ? Colors.blue
                        //               : Colors.green,
                        //   minHeight: 2,
                        //   // ),
                        // );
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      autocorrect: false,
                      onChanged: (value) {
                        context
                            .read<PasswordBloc>()
                            .add(PasswordEvent.confirmPassword(
                              confirmPassword: value,
                            ));
                      },

                      autovalidateMode: AutovalidateMode.onUserInteraction,

                      //    controller: confirmPasswordController,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(15),
                        FilteringTextInputFormatter.deny(RegExp(r'\s')),
                      ],
                      decoration: const InputDecoration(
                        hintText: "Confirm Password",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(135, 62, 140, 1),
                          ),
                        ),
                      ),
                      validator: (String? value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Some Value';
                        } else if (context
                                .read<PasswordBloc>()
                                .state
                                .newPassword !=
                            context
                                .read<PasswordBloc>()
                                .state
                                .confirmPassword) {
                          return 'Password does not match';
                        } else {
                          return null;
                        }
                      },
                    ),
                  ],
                ),
              ),
              kHeight30,
              BlocBuilder<PasswordBloc, PasswordState>(
                builder: (context, state) {
                  return Text(state.displayText);
                },
              ),
              kHeight30,
              SizedBox(
                width: 150,
                height: 30,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      // stops: const [0.0, 1.0],
                      colors: [
                        Color(0xFFD119A6),
                        Color(0xFF3545BD),
                      ],
                    ),
                  ),
                  child: BlocBuilder<PasswordBloc, PasswordState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(15),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                        ),
                        // onPressed: state.strength < 0.90 &&
                        //         _password.hasMatch(state.password)
                        //     ? null
                        //     : () {
                        //         if (_createNewPasswordformkey.currentState!
                        //             .validate()) {

                        //           // ignore: avoid_print
                        //           onPressed();
                        //         }
                        //       },
                        onPressed: () {
                          final String? userName =
                              context.read<RegistrationBloc>().state.userName;

                          if (_password.hasMatch(state.newPassword) &&
                              state.strength >= 0.90) {
                            oldPassword
                                ? context
                                            .read<RegistrationBloc>()
                                            .state
                                            .userNameResponse ==
                                        'Success'
                                    ? onPressed()
                                    : ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                            content: Text(
                                                '$userName Already Exist')))
                                : onPressed();
                            print(state.displayText);
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Submit",
                              style: GoogleFonts.poppins(
                                  fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget desktopPasswordWidget(BuildContext context) {
    RegExp _password = RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$");
    return InitialFrameWidget(
      child: Form(
        key: _createNewPasswordformkey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // oldPassword
                //     ?
                Text(
                  'Create New Password.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.poppins(
                      color: const Color.fromRGBO(54, 54, 54, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                // : employeWelcomeWidget(),
                kHeight30,
                SizedBox(
                  width: 280,
                  child: Column(
                    children: [
                      // oldPassword
                      // ? TextFormField(
                      //     obscureText: true,
                      //     controller: oldPasswordController,
                      //     decoration: const InputDecoration(
                      //       enabledBorder: UnderlineInputBorder(
                      //         borderSide: BorderSide(
                      //           color: Color.fromRGBO(135, 62, 140, 1),
                      //         ),
                      //       ),
                      //       labelText: 'Old Password',
                      //     ),
                      //   )
                      // : const SizedBox(),

                      kHeight20,
                      TextFormField(
                        inputFormatters: [LengthLimitingTextInputFormatter(15)],
                        obscureText: true,
                        onChanged: (value) {},
                        // context
                        //     .read<PasswordBloc>()
                        //     .add(PasswordEvent.checkPasswordEvent(value)),
                        controller: newPasswordController,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(135, 62, 140, 1),
                            ),
                          ),
                          labelText: 'Enter New Password',
                        ),
                      ),
                      // ),
                      kHeight20,
                      BlocConsumer<PasswordBloc, PasswordState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          return FlutterPasswordStrength(
                              password: newPasswordController.text);
                          //double _strength = state.strength;
                          // return LinearProgressIndicator(
                          //   value: _strength,
                          //   backgroundColor: Colors.grey,
                          //   color: _strength <= 1 / 4
                          //       ? Colors.red
                          //       : _strength == 2 / 4
                          //           ? Colors.yellow
                          //           : _strength == 3 / 4
                          //               ? Colors.blue
                          //               : Colors.green,
                          //   minHeight: 2,
                          //   // ),
                          // );
                        },
                      ),

                      TextFormField(
                        inputFormatters: [LengthLimitingTextInputFormatter(20)],
                        onChanged: (val) {
                          context
                              .read<PasswordBloc>()
                              .add(PasswordEvent.newPassword(
                                newPassword: confirmPasswordController.text,
                              ));
                        },
                        obscureText: true,
                        controller: confirmPasswordController,
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(135, 62, 140, 1),
                            ),
                          ),
                          labelText: 'Confirm Password',
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Some Value';
                          } else if (newPasswordController.text !=
                              confirmPasswordController.text) {
                            return 'Password does not match';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                ),
                // ),
                kHeight30,
                BlocBuilder<PasswordBloc, PasswordState>(
                  builder: (context, state) {
                    return Text(state.displayText);
                  },
                ),
                kHeight20,
                SizedBox(
                  width: 216,
                  height: 48,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        // stops: const [0.0, 1.0],
                        colors: [
                          Color(0xFFD119A6),
                          Color(0xFF3545BD),
                        ],
                      ),
                    ),
                    child: BlocBuilder<PasswordBloc, PasswordState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          style: ButtonStyle(
                            elevation: MaterialStateProperty.all(15),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed:
                              // state.strength < 1 / 2
                              //     ? null
                              //     :
                              () {
                            if (_password.hasMatch(state.newPassword) &&
                                state.strength >= 0.90) {
                              if (_createNewPasswordformkey.currentState!
                                  .validate()) {
                                onPressed();
                              }
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Submit",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
