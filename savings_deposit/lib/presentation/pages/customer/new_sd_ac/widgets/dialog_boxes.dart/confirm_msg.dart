// ignore_for_file: unused_local_variable, unnecessary_null_comparison

import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/payment/payment_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/customer/new_sd_ac/new_savings_account.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';

import '../../../../../../application/customer/customer_bloc.dart';
import '../../../../../../application/language/language_bloc.dart';

class ConfirmMessage extends StatelessWidget {
  const ConfirmMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, state) {
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        final scheme = state.availableschemeModel![state.schemeCardIndex];
        context.read<CustomerBloc>().add(
              const CustomerEvent.newSdShemeDetails(),
            );
        final transactionMethod = state
            .customerPaymentDetails![state.paymentCardIndex].paymentgatewayname;

        // context.read<CustomerBloc>().add(CustomerEvent.newSdTransactionDetails(
        //       transactionMethod: state
        //           .customerPaymentDetails![state.paymentCardIndex]
        //           .paymentgatewayname,
        //       realizationDate: state.depositRealizationDate.toString(),
        //       customerBank: state.ifscCodeDetails!.bankname,
        //       chequeNo: state.chequeNumber,
        //       customerBankBranch: state.ifscCodeDetails!.branchname,
        //       branchBankAccountNuber: state.subsidiaryAccountNumber,
        //       branchBankAccountName: state.subsidiaryBank,
        //     ));
        Widget _showWidget = Dialog(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Confirm Details",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 88, 3, 30),
                          ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 500,
                      child: Neumorphic(
                        padding: const EdgeInsets.all(12.0),
                        child: ListView(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LeftAlignContentRow(
                                  label: Text(
                                    "Scheme Name ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: state.newSdschemeName != null
                                      ? Text(
                                          "SD",
                                          style: GoogleFonts.poppins(
                                              fontSize: ismalayalam ? 12 : 18,
                                              color: Colors.black),
                                          maxLines: 1,
                                        )
                                      : Text(
                                          "SD",
                                          style: GoogleFonts.poppins(
                                              fontSize: ismalayalam ? 12 : 18,
                                              color: Colors.black),
                                          maxLines: 1,
                                        ),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Scheme Id ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    state.newSdschemeId.toString(),
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Interest rate  ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    state.newSdinterest.toString() + "%",
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Customer Name  ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Flexible(
                                    child: Text(
                                      context
                                          .read<LoginBloc>()
                                          .state
                                          .loginDetails!
                                          .customerName!,
                                      style: GoogleFonts.poppins(
                                          fontSize: ismalayalam ? 12 : 18,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Co-Applicant Name ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: state.radioButtonActive
                                      ? Flexible(
                                          child: Text(
                                            state.newSdcoApplicantName!,
                                            style: GoogleFonts.poppins(
                                                fontSize: ismalayalam ? 12 : 18,
                                                color: Colors.black),
                                          ),
                                        )
                                      : const SizedBox(),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: state.nomineeACtive
                                      ? Text(
                                          "Nominee Name  ",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: ismalayalam ? 11 : 16,
                                            color: const Color.fromARGB(
                                                255, 93, 4, 50),
                                          ),
                                        )
                                      : kHeight1,
                                  value: Flexible(
                                      child: state.nomineeACtive
                                          ? Text(
                                              state.newSdnomineeName,
                                              style: GoogleFonts.poppins(
                                                  fontSize:
                                                      ismalayalam ? 12 : 18,
                                                  color: Colors.black),
                                            )
                                          : const SizedBox()),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                    label: state.employeeOrAgent != 0
                                        ? Text(
                                            " Salescode ",
                                            style: GoogleFonts.poppins(
                                              fontWeight: FontWeight.w500,
                                              fontSize: ismalayalam ? 11 : 16,
                                              color: const Color.fromARGB(
                                                  255, 93, 4, 50),
                                            ),
                                          )
                                        : const SizedBox(),
                                    value: state.employeeOrAgent != 0
                                        ? Text(
                                            salesCodeController.text.toString(),
                                            style: GoogleFonts.poppins(
                                                fontSize: ismalayalam ? 12 : 18,
                                                color: Colors.black),
                                            maxLines: 1,
                                          )
                                        : kHeight1),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Amount ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    "₹" + state.newSdamount,
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Payment Mode ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    context
                                        .read<CustomerBloc>()
                                        .state
                                        .customerPaymentDetails![
                                            state.paymentCardIndex]
                                        .paymentgatewayname,
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                kHeight30,
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    kHeight20,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ColoredButton(
                          press: () {
                            if (context
                                    .read<PaymentBloc>()
                                    .state
                                    .orderResponse !=
                                null) {
                              context.router.push(const PaymentRoute());
                            }
                            Navigator.pop(context);
                            // showDialog(
                            //     context: context,
                            //     builder: (BuildContext context) {
                            //       return const NewSdConfirmedMessage();
                            //     });
                          },
                          buttonHeight: 60,
                          buttonWidth: 100,
                          buttonTitle: "Confirm",
                          borderRadius: 20,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        );

        return _showWidget;
      },
    );
  }
}
