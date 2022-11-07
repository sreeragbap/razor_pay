import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';

import '../../../../../application/language/language_bloc.dart';
import '../../../../../generated/l10n.dart';
import '../../../employee/customer_search/customer_search_widgets/search_result_with_pagination/search_result_pagination.dart';
import '../../deposit/widgets/deposit_confirmation_dailog.dart';

class SettlementTabView extends StatelessWidget {
  const SettlementTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
        listener: (context, state) {},
        builder: (context, state) {
          final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
          final delegate = S.of(context);
          if (state.customerSettlementLoading) {
            return const Center(
                child: CircularProgressIndicator(
              color: kPrimaryColor,
            ));
          } else {
            final customerSettlement = state.settlementDetails!;
            return ListView(
              padding: const EdgeInsets.all(10),
              shrinkWrap: true,
              children: [
                Text(
                  delegate.settlementSettlement,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
                kHeight20,
                Text(delegate.settlementAccountSummary,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 173, 41, 151))),
                kHeight20,
                state.settlementDetails!.balance == 0
                    ? Center(
                        child: Text(
                        delegate.settlementAccountSettled,
                        style: const TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontStyle: FontStyle.italic,
                            fontFamily: ''),
                      ))
                    : Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 230, 232, 233)
                                  .withOpacity(0.8),
                              offset: const Offset(-6.0, -6.0),
                              blurRadius: 16.0,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(6.0, 6.0),
                              blurRadius: 16.0,
                            ),
                          ],
                          color: const Color(0xFFE2EDF3),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    delegate.settlementAccountType +
                                        " : " +
                                        customerSettlement.accountType!,
                                    style: TextStyle(
                                        fontSize: ismalayalam ? 12 : 15),
                                  ),
                                  kHeight5,
                                  Text(
                                    delegate.settlementAccountNumber +
                                        " : " +
                                        customerSettlement.accountNumber
                                            .toString(),
                                    style: TextStyle(
                                        fontSize: ismalayalam ? 12 : 15),
                                  ),
                                ],
                              ),
                              kWidth10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    delegate.settlementInterestRate +
                                        " : " +
                                        customerSettlement.intrestRate
                                            .toString() +
                                        '%',
                                    style: TextStyle(
                                        fontSize: ismalayalam ? 12 : 15),
                                  ),
                                  kHeight5,
                                  Text(
                                    delegate.settlementRoundingDifference +
                                        ":" +
                                        toRupeeFormat(customerSettlement
                                            .roundindDifference!),
                                    style: TextStyle(
                                        fontSize: ismalayalam ? 12 : 15),
                                  ),
                                ],
                              ),
                              kWidth10,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    delegate.settlementBalance +
                                        " : " +
                                        toRupeeFormat(
                                            customerSettlement.balance!),
                                    style: TextStyle(
                                        fontSize: ismalayalam ? 12 : 15),
                                  ),
                                  kHeight5,
                                  Text(
                                    delegate.settlementTotalInterest +
                                        " : " +
                                        toRupeeFormat(
                                            customerSettlement.interest!),
                                    style: TextStyle(
                                        fontSize: ismalayalam ? 12 : 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                Text(delegate.settlementPaymentMethods,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 173, 41, 151))),
                kHeight20,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 230, 232, 233)
                                .withOpacity(0.8),
                            offset: const Offset(-6.0, -6.0),
                            blurRadius: 16.0,
                          ),
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(6.0, 6.0),
                            blurRadius: 16.0,
                          ),
                        ],
                        color: const Color(0xFFE2EDF3),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        children: [
                          state.settlementDetails!.balance == 0
                              ? const SizedBox()
                              : Row(
                                  children: [
                                    Checkbox(
                                      onChanged: (val) {
                                        context.read<CustomerBloc>().add(
                                            const CustomerEvent
                                                .checkboxSelectedCash());
                                      },
                                      value: state.checkboxSelectionCash,
                                    ),
                                    Text(
                                      delegate.depositCash,
                                      style: TextStyle(
                                          fontSize: ismalayalam ? 12 : 15),
                                    )
                                  ],
                                ),
                          kHeight40,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              state.settlementDetails!.balance == 0
                                  ? Text(
                                      delegate.settlementBalance +
                                          ':  ₹ ' +
                                          toRupeeFormat(
                                              customerSettlement.balance!),
                                      style: TextStyle(
                                          fontSize: ismalayalam ? 12 : 15),
                                    )
                                  : Text(
                                      delegate.settlementSettleAmount +
                                          ':  ₹ ' +
                                          toRupeeFormat(
                                              customerSettlement.settleAmount!),
                                      style: TextStyle(
                                          fontSize: ismalayalam ? 12 : 15),
                                    ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Container(
                    //   padding: const EdgeInsets.all(20),
                    //   width: 250,
                    //   height: 250,
                    //   decoration: BoxDecoration(
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: const Color.fromARGB(255, 230, 232, 233)
                    //             .withOpacity(0.8),
                    //         offset: const Offset(-6.0, -6.0),
                    //         blurRadius: 16.0,
                    //       ),
                    //       BoxShadow(
                    //         color: Colors.black.withOpacity(0.1),
                    //         offset: const Offset(6.0, 6.0),
                    //         blurRadius: 16.0,
                    //       ),
                    //     ],
                    //     color: const Color(0xFFE2EDF3),
                    //     borderRadius: BorderRadius.circular(12.0),
                    //   ),
                    //   child: Column(
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Checkbox(
                    //             onChanged: (val) {},
                    //             value: true,
                    //           ),
                    //           const Text('Cheque')
                    //         ],
                    //       ),
                    //       const SizedBox(
                    //         height: 50,
                    //       ),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: const [
                    //           Text('Balance:',
                    //               style: TextStyle(
                    //                   fontSize: 15,
                    //                   fontWeight: FontWeight.bold)),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Container(
                    //   padding: const EdgeInsets.all(20),
                    //   width: 250,
                    //   height: 250,
                    //   decoration: BoxDecoration(
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: const Color.fromARGB(255, 230, 232, 233)
                    //             .withOpacity(0.8),
                    //         offset: const Offset(-6.0, -6.0),
                    //         blurRadius: 16.0,
                    //       ),
                    //       BoxShadow(
                    //         color: Colors.black.withOpacity(0.1),
                    //         offset: const Offset(6.0, 6.0),
                    //         blurRadius: 16.0,
                    //       ),
                    //     ],
                    //     color: const Color(0xFFE2EDF3),
                    //     borderRadius: BorderRadius.circular(12.0),
                    //   ),
                    //   child: Column(
                    //     children: [
                    //       Row(
                    //         children: [
                    //           Checkbox(
                    //             onChanged: (val) {},
                    //             value: true,
                    //           ),
                    //           const Text('Others')
                    //         ],
                    //       ),
                    //       const SizedBox(
                    //         height: 50,
                    //       ),
                    //       Row(
                    //         mainAxisAlignment: MainAxisAlignment.center,
                    //         children: const [
                    //           Text('Balance:',
                    //               style: TextStyle(
                    //                   fontSize: 15,
                    //                   fontWeight: FontWeight.bold)),
                    //         ],
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
                kHeight30,
                Center(
                  child: ColoredButton(
                      press: () {
                        state.checkboxSelectionCash == false
                            ? ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    'Please tick the field to continue',
                                  ),
                                ),
                              )
                            : showDialog(
                                context: context,
                                builder: (BuildContext ctx) {
                                  return SimpleDialog(
                                    children: [
                                      Column(
                                        children: [
                                          kHeight20,
                                          SizedBox(
                                            width: 300,
                                            child: Neumorphic(
                                                child: Padding(
                                              padding: const EdgeInsets.all(15),
                                              child: Column(
                                                children: [
                                                  kHeight20,
                                                  Center(
                                                      child: Text(
                                                    delegate
                                                        .settlementDoYouWantToContinue,
                                                    style: const TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontStyle:
                                                          FontStyle.italic,
                                                    ),
                                                  )),
                                                  kHeight30,
                                                  ContentRow(
                                                      label: Text(delegate
                                                          .settlementCustomerName),
                                                      value: Text(
                                                        state
                                                            .searchResultCustomerName,
                                                      )),
                                                  kHeight5,
                                                  ContentRow(
                                                      label: Text(delegate
                                                          .settlementCustomerId),
                                                      value: Text(
                                                        state
                                                            .searchResultCustomerID,
                                                      )),
                                                  kHeight5,
                                                  ContentRow(
                                                      label: Text(delegate
                                                          .settlementAccountNumber),
                                                      value: Text(state
                                                          .settlementDetails!
                                                          .accountNumber
                                                          .toString())),
                                                  kHeight5,
                                                  ContentRow(
                                                      label: Text(delegate
                                                          .settlementAccountType),
                                                      value: Text(state
                                                          .settlementDetails!
                                                          .accountType
                                                          .toString())),
                                                  kHeight5,
                                                  ContentRow(
                                                    label: Text(delegate
                                                        .settlementInterestRate),
                                                    value: Text(state
                                                            .settlementDetails!
                                                            .intrestRate
                                                            .toString() +
                                                        ' %'),
                                                  ),
                                                  kHeight5,
                                                  ContentRow(
                                                    label: Text(delegate
                                                        .settlementSettleAmount),
                                                    value: Text('₹ ' +
                                                        toRupeeFormat(state
                                                            .settlementDetails!
                                                            .settleAmount!)),
                                                  ),
                                                  kHeight5,
                                                  kHeight50,
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      ColoredButton(
                                                        press: () {
                                                          context
                                                              .read<
                                                                  CustomerBloc>()
                                                              .add(
                                                                CustomerEvent
                                                                    .settleCustomer(
                                                                  accountNumber: state
                                                                      .settlementDetails!
                                                                      .accountNumber!,
                                                                  customerId:
                                                                      searchResultcustomerId
                                                                          .toString(),
                                                                ),
                                                              );

                                                          Future.delayed(
                                                              kDuration5, () {
                                                            context
                                                                .read<
                                                                    CustomerBloc>()
                                                                .add(const CustomerEvent
                                                                    .customerAccountInfoPageEvent());
                                                            final _customerId = context
                                                                        .read<
                                                                            LoginBloc>()
                                                                        .state
                                                                        .loginDetails!
                                                                        .userType ==
                                                                    "Employee"
                                                                ? context
                                                                    .read<
                                                                        CustomerBloc>()
                                                                    .state
                                                                    .searchResultCustomerID
                                                                : context
                                                                    .read<
                                                                        LoginBloc>()
                                                                    .state
                                                                    .loginDetails!
                                                                    .customerId!;
                                                            context
                                                                .read<
                                                                    CustomerBloc>()
                                                                .add(CustomerEvent
                                                                    .fetchCustomerAccounts(
                                                                        customerId:
                                                                            _customerId));

                                                            context
                                                                .read<
                                                                    CustomerBloc>()
                                                                .add(CustomerEvent
                                                                    .fetchCustomerScheduledTransactions(
                                                                        customerId:
                                                                            _customerId));
                                                          });

                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        buttonHeight: 30,
                                                        buttonWidth: 100,
                                                        buttonTitle: delegate
                                                            .settlementYES,
                                                        borderRadius: 10,
                                                      ),
                                                      ColoredButton(
                                                        press: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        buttonHeight: 30,
                                                        buttonWidth: 100,
                                                        buttonTitle: delegate
                                                            .settlementNO,
                                                        borderRadius: 10,
                                                      ),
                                                    ],
                                                  ),
                                                  kHeight20,
                                                ],
                                              ),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  );
                                });
                      },
                      buttonHeight: 40,
                      buttonWidth: ismalayalam ? 150 : 100,
                      buttonTitle: delegate.depositSubmit,
                      borderRadius: 10),
                )
              ],
            );
          }
        });
  }
}
