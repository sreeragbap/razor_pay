import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/application/password/password_bloc.dart';
import 'package:savings_deposit/presentation/pages/register/create_password_page/create_password_page.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';
import 'package:savings_deposit/presentation/widgets/password_widget/password_widget.dart';

import '../../../../application/forgot_password/forgotpassword_bloc.dart';

class ForgotChangePasswordPage extends StatelessWidget {
  const ForgotChangePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customizedAppBar(context),
      backgroundColor: const Color(0xFFE2EDF3),
      body: BlocConsumer<ForgotpasswordBloc, ForgotpasswordState>(
        listener: (context, state) {
          state.passwordChnageFilureOrSuccess.fold(
              () {},
              (a) => a.fold((l) {
                    Flushbar(
                        duration: const Duration(seconds: 1),
                        message: l.map(
                          serverFailure: (_) => "Server Error",
                          clientFailure: (_) => "Network Error",
                          notARegisteredUser: (_) => "Not a Registered user",
                          passwordNotChanged: (_) => "Password doesn't changed",
                        ));
                  }, (r) {
                    context.router.push(const LoginRoute());
                  }));
        },
        builder: (context, state) {
          return PasswordWidget(
            oldPassword: false,
            onPressed: () {
          
              if (newPasswordController.text ==
                  confirmPasswordController.text) {
                context.read<ForgotpasswordBloc>().add(
                    ForgotpasswordEvent.passwordChnage(
                        password: context.read<PasswordBloc>().state.newPassword,
                        mobileNumber: context
                            .read<ForgotpasswordBloc>()
                            .state
                            .otpModel!
                            .phone1
                            .toString()));

                            clearpasswordcontroller(context);
                               context.read<PasswordBloc>().add(const PasswordEvent.reset());
                

                
              }
              return;

              
            },
          );
        },
      ),
    );
  }
}
