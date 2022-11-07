import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';

class AppRoutingPage extends StatelessWidget {
  const AppRoutingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customizedAppBar(context),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColoredButton(
              press: () {
                context.router.push(const LoginRoute());
              },
              buttonHeight: 50,
              buttonWidth: 150,
              buttonTitle: "Savings Deposit",
              borderRadius: 16),
          kHeight20,
          ColoredButton(
              press: () {},
              buttonHeight: 50,
              buttonWidth: 180,
              buttonTitle: "Other functionalities",
              borderRadius: 16)
        ],
      )),
    );
  }
}
