import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/injection.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.depositFailureOrSuccess.fold(() {}, (a) {
          a.fold((failure) {}, (success) {
            context.read<CustomerBloc>().add(
                  CustomerEvent.fetchCustomerAccounts(
                    customerId: context
                        .read<LoginBloc>()
                        .state
                        .loginDetails!
                        .customerId!,
                  ),
                );
          });
        });
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.check_circle_outlined,
                      color: kPrimaryColor,
                      size: 200,
                    ),
                    const Text(
                      "Payment successful",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        letterSpacing: 1,
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kHeight20,
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return TextButton(
                          child: const Text("Back to home"),
                          onPressed: () {
                            getIt<Razorpay>().clear();
                            context.router.replaceAll([
                              MainRoute(loginDetails: state.loginDetails),
                            ]);
                          },
                        );
                      },
                    ),
                    kHeight20,
                    kHeight20,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
