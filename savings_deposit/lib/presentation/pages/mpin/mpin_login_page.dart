import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:http/http.dart';
import 'package:pinput/pinput.dart';
import 'package:savings_deposit/application/auth/auth_bloc.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/mpin/set_mpin_page.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';

class MpinLoginPage extends StatelessWidget {
  const MpinLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.mpinSuccessorfailureOption.fold(() {}, (either) {
          either.fold(
            (failure) {
              Flushbar(
                      duration: const Duration(seconds: 1),
                      message: failure.map(
                          incorrectPin: (_) => "Invalid Mpin",
                          clientFailure: (_) => "Client Failure",
                          serverFailure: (_) => "Server Failure",
                          usernotRegistered: (_) => "User Not Registered"))
                  .show(context);
            },
            (success) => {
              // final usertype=context.read<LoginBloc>().add
              //   if (state.loginDetails!.userType == "Customer")
              //     {
//////////////////////////////////////// fetching customer account details ///////////////////////////////////
              context.read<CustomerBloc>().add(CustomerEvent.saveLoginToken(
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

              context.router
                  .pushAndPopUntil(MainRoute(loginDetails: state.loginDetails),
                      predicate: (Route<dynamic> route) {
                return false;
              }),
              //   }
              // else if (state.loginDetails!.userType == "Employee")
              //   {
              //     ScaffoldMessenger.of(context).showSnackBar(
              //         const SnackBar(content: Text('You are not Authorized')))
              //   }
            },
          );
        });
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kbackgroundColor,
          body: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/icons/macom.png',
                      width: 150,
                      height: 150,
                    ),
                    kHeight30,
                    const Text(
                      "MPIN LOGIN",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    kHeight30,
                    PinField(
                      onChanged: (value) {
                        // context
                        //     .read<LoginBloc>()
                        //     .add(LoginEvent.mpinType(value));
                        print(state.mpin);
                      },
                      onSubmitted: (value) {
                        context.read<LoginBloc>().add(
                            LoginEvent.mpinfetchpostdatas(
                                mpincode: value, deviceid: state.deviceid));
                      },
                    ),
                    kHeight30,
                  ],
                ),
              ),
              kHeight30,
            ],
          ),
        );
      },
    );
  }
}

class PinField extends StatelessWidget {
  void Function(String)? onSubmitted;
  void Function(String)? onChanged;
  TextEditingController? controller;
  String? Function(String?)? validator;

  PinField(
      {Key? key,
      this.onSubmitted,
      this.onChanged,
      this.controller,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinput(
      onChanged: onChanged,
      onCompleted: onSubmitted,
      controller: controller,
      validator: validator,

      length: 4,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      defaultPinTheme: PinTheme(
        width: 35,
        height: 50,
        textStyle: const TextStyle(
          fontSize: 20,
          color: Colors.red,
          fontWeight: FontWeight.w600,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      // onCompleted:
      // (pin) => context.read<OtpVerificationBloc>().add(
      //       OtpVerificationEvent.otpChanged(pin),
      //     )
    );
  }
}
