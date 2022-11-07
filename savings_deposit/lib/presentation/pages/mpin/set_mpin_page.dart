import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/registration/registration_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/mpin/mpin_login_page.dart';

import 'package:savings_deposit/presentation/router/app_router.gr.dart';

class SetMpinPage extends StatelessWidget {
  const SetMpinPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final setnewMpin = TextEditingController();
    final confirmMpin = TextEditingController();
    final imeinbr = TextEditingController();
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
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
                      "SET MPIN",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    kHeight30,
                    const Text(
                      "Set New MPIN",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    kHeight20,
                    PinField(
                      controller: setnewMpin,
                      onChanged: (value) {
                        context
                            .read<LoginBloc>()
                            .add(LoginEvent.setMpinReg(value));
                      },
                    ),
                    kHeight20,
                    const Text(
                      "Re-Enter New MPIN ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    kHeight20,
                    PinField(
                      controller: confirmMpin,
                      onChanged: (value) {
                        context
                            .read<LoginBloc>()
                            .add(LoginEvent.confirmSetMpin(value));
                      },
                      validator: (value) {
                        print(value);
                        print(state.setmpin);
                        if (value != state.setmpin) {
                          return "Incorrect Mpin";
                        }
                        return null;
                      },

                      //  onSubmitted: ( value) {
                      // if(state.setmpin==value){
                      //  context.read<CustomerBloc>().add(CustomerEvent.putMpinRegistration(userid: userid, mobileno: mobileno, mpin: value, imeino: imeino, deviceToken: state.deviceid, smsRefId: smsRefId));

                      // }
                      //                   },
                    ),
                    // PinField(
                    //   controller: imeinbr,
                    // ),
                    kHeight30,
                    ElevatedButton(
                      onPressed: () {
                        print(state.setmpin);
                        print(confirmMpin);
                        if (state.setmpin != state.confirmMpin) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: const Text("Alert"),
                                    content:
                                        const Text("Entered Mpin Not matched"),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Ok")),
                                    ],
                                  ));
                        } else {
                          context.read<LoginBloc>().add(
                              LoginEvent.putMpinRegistration(
                                  userid: context
                                      .read<RegistrationBloc>()
                                      .state
                                      .userName,
                                  mobileno: context
                                      .read<RegistrationBloc>()
                                      .state
                                      .otpModel!
                                      .phone1!,
                                  mpin: state.confirmMpin,
                                  // imeino: imeinbr.text,
                                  deviceToken: state.deviceid,
                                  smsRefId: context
                                      .read<RegistrationBloc>()
                                      .state
                                      .otpModel!
                                      .transactionId
                                      .toString()));
                          context.router.push(const LoginRoute());
                        }
                      },
                      child: const Text(
                        "Confirm",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          context.router.push(const LoginRoute());
                        },
                        child: const Text("Skip"))
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
