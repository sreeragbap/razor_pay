import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/payment/payment_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';
import 'package:savings_deposit/domain/login/models/login_model.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/customer_deposit_desktopview.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/payment_card_content.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';

Future<dynamic> depositConfirmationDailog(
    BuildContext context, List<CustomerAccountsModel> unsettledAccounts) {
  final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;

  final delegate = S.of(context);
  return showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return Dialog(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.close)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          delegate.depositDepositedTo,
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 88, 3, 30),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 500,
                      child: Neumorphic(
                        padding: const EdgeInsets.all(15),
                        child: BlocBuilder<CustomerBloc, CustomerState>(
                            builder: (context, state) {
                          LoginDetails _loginDetails =
                              context.read<LoginBloc>().state.loginDetails!;
                          // final accountNumber =
                          //     unsettledAccounts[state.accountCardIndex]
                          //         .accountNumber;
                          // final branchId = _loginDetails.branchId;
                          final customerName = _loginDetails.customerName;

                          final customerId = _loginDetails.customerId;

                          // final firmId = _loginDetails.firmId;
                          // final empCode = _loginDetails.empCode;
                          // final transactionMethod = state //transaction method
                          //     .customerPaymentDetails![state.paymentCardIndex]
                          //     .paymentgatewayname;

                          return Column(
                            children: [
                              LeftAlignContentRow(
                                label: Text(
                                  delegate.depositDate,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ismalayalam ? 11 : 16,
                                    color: const Color.fromARGB(255, 93, 4, 50),
                                  ),
                                ),
                                value: Text(
                                  cdate,
                                  style: GoogleFonts.poppins(
                                      fontSize: ismalayalam ? 12 : 18,
                                      color: Colors.black),
                                ),
                              ),

                              kHeight10,
                              LeftAlignContentRow(
                                label: Text(
                                  delegate.depositCustomerId,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ismalayalam ? 11 : 16,
                                    color: const Color.fromARGB(255, 93, 4, 50),
                                  ),
                                ),
                                value: Text(
                                  customerId!,
                                  style: GoogleFonts.poppins(
                                      fontSize: ismalayalam ? 12 : 18,
                                      color: Colors.black),
                                ),
                              ),
                              kHeight10,
                              LeftAlignContentRow(
                                  label: Text(
                                    delegate.depositCustomerName,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Flexible(
                                    child: Text(
                                      customerName!,
                                      /* state.searchResultCustomerName*/ style:
                                          GoogleFonts.poppins(
                                              fontSize: ismalayalam ? 12 : 18,
                                              color: Colors.black),
                                    ),
                                  )),

                              kHeight10,
                              LeftAlignContentRow(
                                  label: Text(
                                    delegate.depositSdNo,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    unsettledAccounts[state.accountCardIndex]
                                        .accountNumber!,
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                  )),

                              kHeight10,
                              LeftAlignContentRow(
                                  label: Text(
                                    delegate.depositTransactionType,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    state
                                        .customerPaymentDetails![
                                            state.paymentCardIndex]
                                        .paymentgatewayname,
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                  )),

                              kHeight10,
                              LeftAlignContentRow(
                                  label: Text(
                                    delegate.depositAmount,
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    '₹ ' +
                                        toRupeeFormat(
                                            double.parse(state.depositAmount)),
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                  )),

                              kHeight10,

                              // CustomerProfileContentRow(
                              //   label: Text(
                              //     delegate.depositDate + ' :',
                              //     style:
                              //         TextStyle(fontSize: ismalayalam ? 10 : 15),
                              //   ),
                              //   value: cdate,
                              // ),
                              // CustomerProfileContentRow(
                              //     label: Text(
                              //       delegate.depositCustomerId + ' :',
                              //       style: TextStyle(
                              //           fontSize: ismalayalam ? 10 : 15),
                              //     ),
                              //     value: state.searchResultCustomerID),
                              // CustomerProfileContentRow(
                              //     label: Text(
                              //       delegate.depositCustomerName + ' :',
                              //       style: TextStyle(
                              //           fontSize: ismalayalam ? 10 : 15),
                              //     ),
                              //     value: state.searchResultCustomerName),
                              // CustomerProfileContentRow(
                              //     label: Text(
                              //       delegate.depositSdNo + ' :',
                              //       style: TextStyle(
                              //           fontSize: ismalayalam ? 10 : 15),
                              //     ),
                              //     value: unsettledAccounts[state.accountCardIndex]
                              //         .accountNumber),
                              // CustomerProfileContentRow(
                              //   label: Text(
                              //     delegate.depositTransactionType + ' :',
                              //     style:
                              //         TextStyle(fontSize: ismalayalam ? 10 : 15),
                              //   ),
                              //   value: state
                              //       .customerPaymentDetails![
                              //           state.paymentCardIndex]
                              //       .paymentgatewayname,
                              // ),

                              kHeight20,
                            ],
                          );
                        }),
                      ),
                    ),
                    BlocBuilder<PaymentBloc, PaymentState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                kHeight20,
                                ColoredButton(
                                  press: () async {
                                    Navigator.pop(context);
                                    //deposit>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    // context.read<CustomerBloc>().add(
                                    //       CustomerEvent.deposit(
                                    //         accountNumber: accountNumber,
                                    //         branchId: branchId,
                                    //         firmId: firmId,
                                    //         depositAmount:
                                    //             state.depositAmount,
                                    //         transactionMethod:
                                    //             transactionMethod,
                                    //         depositChequeNumber:
                                    //             state.chequeNumber,
                                    //         depositCustomerBank:
                                    //             state.ifscCodeDetails ==
                                    //                     null
                                    //                 ? ""
                                    //                 : state.ifscCodeDetails!
                                    //                     .bankname,
                                    //         subsidiaryBank:
                                    //             state.subsidiaryBank,
                                    //         subsidiaryAccountNumber: state
                                    //             .subsidiaryAccountNumber,
                                    //         customerName: customerName,
                                    //         empCode: empCode,
                                    //         depositRealizationDate: state
                                    //             .depositRealizationDate,
                                    //       ),
                                    //     );

                                    //deposit>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    depositAmountController.clear();
                                    clearCustomerChequeData(context);

                                    if (state.orderResponse != null) {
                                      // context.read<PaymentBloc>().add(
                                      //     PaymentEvent.logPaymentDetails(
                                      //         firmId: firmId!,
                                      //         branchId: branchId!,
                                      //         moduleId: 2,
                                      //         refId: "12345",
                                      //         reqId: context
                                      //             .read<PaymentBloc>()
                                      //             .state
                                      //             .orderResponse!
                                      //             .id,
                                      //         docId: accountNumber!,
                                      //         customerId: customerId,
                                      //         transactioAmount:
                                      //             double.parse(
                                      //                 state.depositAmount),
                                      //         refAmount: double.parse(
                                      //             state.depositAmount),
                                      //         gateWayMode: 1,
                                      //         paymentMode: 1,
                                      //         applicationFlag: 1,
                                      //         prevCharge: 100,
                                      //         serviceCharge: 50,
                                      //         agentCode: 123,
                                      //         customerName: customerName));
                                      context.router.push(const PaymentRoute());
                                    }
                                  },
                                  buttonHeight: 50,
                                  buttonWidth: ismalayalam ? 150 : 100,
                                  buttonTitle: delegate.depositSubmit,
                                  borderRadius: 10,
                                )
                              ],
                            ),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
