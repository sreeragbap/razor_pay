import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:savings_deposit/application/password/password_bloc.dart';
import 'package:savings_deposit/application/registration/registration_bloc.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';
import 'package:savings_deposit/presentation/widgets/password_widget/password_widget.dart';

class CreatePasswordPage extends StatelessWidget {
  const CreatePasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customizedAppBar(context),
      backgroundColor: const Color(0xFFE2EDF3),
      body: BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (context, state) {
          state.registerEmployeeSuccessOrFailure.fold(
              () {},
              (a) => a.fold((l) {
                    Flushbar(
                        duration: const Duration(seconds: 1),
                        message: l.map(
                          serverFailure: (_) => "Something went wrong",
                          clientFilure: (_) => "Unable to Connect",
                          invalidCustomerId: (value) => value.invalidCustomerId,
                          invalidToken: (value) => value.invalidToken,
                          mobileNumberIsNotLinked: (value) => value.mobileNumberIsNotLinked,
                          mobileNumberIsNotValid: (value) => value.mobileNumberIsNotValid,
                          userAlreadyRegistered: (value) => value.userAlreadyRegistered,
                          userNameAlreadyExistOrNot: (value) =>
                              value.userNameAlreadyExist,
                        )).show(context);
                  }, (r) {
                    print('Hai ..................');
                    clearpasswordcontroller(context);
                    context
                        .read<PasswordBloc>()
                        .add(const PasswordEvent.reset());
                    context.router.push(const SetMpinRoute());

                    // context.router.push(const LoginRoute());
                  }));
        },
        builder: (context, state) {
          return PasswordWidget(
              oldPassword: true,
              onPressed: () {
                if (context.read<PasswordBloc>().state.newPassword ==
                    context.read<PasswordBloc>().state.confirmPassword) {
                  context.read<RegistrationBloc>().add(
                      RegistrationEvent.postRegistration(
                          password:
                              context.read<PasswordBloc>().state.newPassword,
                          userName:
                              context.read<RegistrationBloc>().state.userName));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Passwords are not matching ")));
                }

                //  print(state.userName);
              });
        },
      ),
    );
  }
}

clearpasswordcontroller(BuildContext context) {
  newPasswordController.clear();
  confirmPasswordController.clear();
}
