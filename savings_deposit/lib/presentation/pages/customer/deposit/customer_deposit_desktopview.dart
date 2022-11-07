// ignore_for_file: body_might_complete_normally_nullable
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/payment/payment_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/payment_card_content.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/deposit_confirmation_dailog.dart';
import 'package:savings_deposit/presentation/pages/customer/payment/payment_functions.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_info/widgets/account_card_content/account_card_content.dart';
import 'package:savings_deposit/presentation/widgets/sd_card/sd_card.dart';
import 'package:savings_deposit/presentation/widgets/sd_carousel_slider/sd_carousel_slider.dart';

final depositAmountController = TextEditingController();
String cdate = DateFormat("dd-MMM-yyyy").format(DateTime.now());

class DepositPage extends StatelessWidget {
  const DepositPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final delegate = S.of(context);

    final _depositAmountKey = GlobalKey<FormState>();
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.depositFailureOrSuccess.fold(() {}, (either) {
          either.fold(
            (failure) {
              Flushbar(
              
                  duration: const Duration(seconds: 4),
                  message: failure.map(
                      chequeNumberValidOrNot: (_) =>
                          "Cheque Number Is Already Exist",
                      clientFailure: (_) => "Client Failure",
                      serverFailure: (_) => "Network error")).show(context);
            },
            (_) => {
              context.read<CustomerBloc>().add(
                    CustomerEvent.fetchCustomerAccounts(
                      customerId: context
                          .read<LoginBloc>()
                          .state
                          .loginDetails!
                          .customerId!,
                    ),
                  ),

              // depositConfirmedDailog(context, context, unsettledAccounts),
            },
          );
        });
      },
      builder: (context, state) {
        // final double? cardAmount =
        //     state.customerActiveAccounts![state.accountCardIndex].balance;
        double? depositAmount = 0;
        if (state.depositAmount.isNotEmpty) {
          depositAmount = double.parse(state.depositAmount);
        }
        // const double? amountLimit = 13000;
        double? depositableAmount;

        return ListView(
          shrinkWrap: true,
          children: [
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  delegate.depositDeposit,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            kHeight10,

            //-------------------PaymentCard--------------------//
            SdCarouselSlider(
                onPageChanged: (index) {},
                items: state.customerPaymentDetails!.map((payment) {
                  return SdCard(
                      color: const Color.fromARGB(255, 4, 50, 87),
                      content: PaymentCardContent(
                        type: payment.paymentgatewayname,
                      ));
                }).toList()),
            Center(
              child: SizedBox(
                width: 300,
                child: Form(
                  key: _depositAmountKey,
                  child: TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: depositAmountController,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        context
                            .read<CustomerBloc>()
                            .add(CustomerEvent.updateAmount(value));
                        //
                      },
                      decoration: InputDecoration(
                        hintText: delegate.depositAmount,
                        icon: const Icon(Icons.money),
                      ),
                      validator: (value) {
                        if (depositAmountController.text.isEmpty) {
                          return delegate.depositEnterTheAmount;
                        }
                        // depositableAmount = amountLimit - cardAmount!;

                        // if (depositAmount! > depositableAmount!) {
                        //   return delegate.depositAmountLimitExceeded;
                        // }
                      }),
                ),
              ),
            ),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  delegate.depositTo,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            kHeight10,

            //---------------------AccountCard-----------------//
            SdCarouselSlider(
              onPageChanged: ((index) {
                context.read<CustomerBloc>().add(
                    CustomerEvent.accountCardChanged(accountCardIndex: index));
              }),
              items: state.customerActiveAccounts!.map(
                (account) {
                  return SdCard(
                    content: AccountCardContent(account: account),
                    color: Colors.red,
                  );
                },
              ).toList(),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 42,
                  width: 146,
                  child: Neumorphic(
                    child: MaterialButton(
                      onPressed: () async {
                        if (state
                                .customerPaymentDetails![state.paymentCardIndex]
                                .paymentgatewayname ==
                            'online payment') {
                          if (_depositAmountKey.currentState!.validate()) {
                            if (depositAmountController.text.isNotEmpty ||
                                int.parse(depositAmountController.text) > 1) {
                              /////generate order key , generate order id
                              generateOrderId(
                                  context, depositAmountController.text);
                              await depositConfirmationDailog(
                                  context, state.customerActiveAccounts!);
                            }
                          }
                        } else {
                          _depositAmountKey.currentState!.validate();

                          if ((depositAmountController.text.isEmpty ||
                              int.parse(depositAmountController.text) < 1)) {
                            return;
                          } else {
                            await depositConfirmationDailog(
                                context, state.customerActiveAccounts!);
                          }
                        }
                      },
                      child: Text(
                        delegate.depositSubmit,
                        style: GoogleFonts.poppins(
                          fontSize: ismalayalam ? 13 : 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff914686),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
