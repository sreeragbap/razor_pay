import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/customer_deposit_desktopview.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/deposit_confirmation_dailog.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/pdfcontent.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/submit_dailoguebox.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';

String time = DateFormat("hh:mm:ss a").format(DateTime.now());
Future<dynamic> alertdialogbox(BuildContext context, BuildContext ctx,
    double amount, List<CustomerOtherBankDataModel> loopingList) {
  final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;

  String time = DateFormat("hh:mm:ss a").format(DateTime.now());
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        final delegate = S.of(context);
        return SimpleDialog(
          children: [
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      BlocBuilder<CustomerBloc, CustomerState>(
                        builder: (context, state) {
                          final otherBank = loopingList[state.otherbankindex];
                          return IconButton(
                              onPressed: () async {
                                final sdaccount = state
                                    .customerAccounts![state.accountCardIndex]
                                    .accountNumber;
                                // final transactionMethod = otherBank
                                //     .customerBankName; //transaction method
                                final transactionMethod = state
                                    .customerOtherBankAccounts![
                                        state.otherbankindex]
                                    .type;
                                final accountnumber = state
                                    .customerOtherBankAccounts![
                                        state.otherbankindex]
                                    .accountNumber;

                                // final employeename = context
                                //     .read<LoginBloc>()
                                //     .state
                                //     .loginDetails!
                                //     .empName
                                //     .toString();

                                // final employeeid = context
                                //     .read<LoginBloc>()
                                //     .state
                                //     .loginDetails!
                                //     .empCode
                                //     .toString();

                                PdfCreator().pdfCreation(
                                  transId: state.postwithdrawaldatas!.transId,
                                  bankAccountNumber: otherBank.accountNumber,
                                  customerBankName: otherBank.customerBankName,
                                  accountNumber: sdaccount,
                                  type: "Withdraw",
                                  branchName: context
                                      .read<LoginBloc>()
                                      .state
                                      .loginDetails!
                                      .branchId
                                      .toString(),
                                  customerId: context
                                      .read<LoginBloc>()
                                      .state
                                      .loginDetails!
                                      .customerId,
                                  customerName: context
                                      .read<LoginBloc>()
                                      .state
                                      .loginDetails!
                                      .customerName,
                                  date: cdate,
                                  amount: amount.toInt(),
                                  transactionType: transactionMethod == "RD"
                                      ? "RD"
                                      // searchRdNo.text
                                      : transactionMethod == "SD"
                                          ? "Saving Deposit"

                                          // ? searchsdid.text
                                          : transactionMethod == "GOLD_LOAN"
                                              ? "Gold Loan"
                                              // ? goldloanno.text
                                              : "",
                                  time: time,
                                  employeeId: "Online",
                                  employeeName: "Online",
                                );
                              },
                              icon: const Icon(Icons.share));
                        },
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  kHeight10,
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: BlocBuilder<CustomerBloc, CustomerState>(
                        builder: (context, state) {
                      final ismalayalam =
                          context.read<LanguageBloc>().state.isMalayalam;
                      final otherBank = loopingList[state.otherbankindex];
                      // final customerName = context //customername
                      //     .read<CustomerBloc>()
                      //     .state
                      //     .searchResultCustomerName;
                      // final customerid = context //customer id
                      //     .read<CustomerBloc>()
                      //     .state
                      //     .searchResultCustomerID;

                      final customerName = context
                          .read<LoginBloc>()
                          .state
                          .loginDetails!
                          .customerName;

                      final customerid = context
                          .read<LoginBloc>()
                          .state
                          .loginDetails!
                          .customerId;

                      final accountno = state
                          .customerAccounts![state.accountCardIndex]
                          .accountNumber;
                      final date = state.datepicker;

                      return Column(
                        children: [
                          Image.asset('assets/icons/tick.png'),
                          kHeight20,
                          Center(
                              child: Text(
                            'Withdrawal',
                            style: TextStyle(fontSize: ismalayalam ? 10 : 20),
                          )),
                          kHeight20,
                          kHeight5,
                          ConfirmationDialogContentRow(
                              label: Text(
                                delegate.depositDate,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ismalayalam ? 11 : 16,
                                  color: const Color.fromARGB(255, 93, 4, 50),
                                ),
                              ),
                              value: Text(
                                DateFormat("dd-MMM-yyyy")
                                    .format(DateTime.parse(date.toString())),
                              )),
                          kHeight5,

                          ConfirmationDialogContentRow(
                              label: Text(
                                'Customer ID ',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ismalayalam ? 11 : 16,
                                  color: const Color.fromARGB(255, 93, 4, 50),
                                ),
                              ),
                              value: Text(
                                customerid.toString(),
                              )),
                          kHeight5,
//------------------------------------------------------------

                          ConfirmationDialogContentRow(
                              label: Text(
                                'Customer Name ',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ismalayalam ? 11 : 16,
                                  color: const Color.fromARGB(255, 93, 4, 50),
                                ),
                              ),
                              value: Text(
                                customerName.toString(),
                              )),
                          kHeight5,

                          //----------------------------------------------------

                          ConfirmationDialogContentRow(
                              label: Text(
                                delegate.withdrawalfrom,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ismalayalam ? 11 : 16,
                                  color: const Color.fromARGB(255, 93, 4, 50),
                                ),
                              ),
                              value: Text(accountno.toString())),
                          kHeight5,

                          //============================================================
                          ConfirmationDialogContentRow(
                              label: Text(
                                'Amount ',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ismalayalam ? 11 : 16,
                                  color: const Color.fromARGB(255, 93, 4, 50),
                                ),
                              ),
                              value: Text('₹ ' +
                                  toRupeeFormat(state.withdrawalAmount))),
                          kHeight5,

                          ConfirmationDialogContentRow(
                              label: Text(
                                delegate.withdrawaltranscationtype,
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                  fontSize: ismalayalam ? 11 : 16,
                                  color: const Color.fromARGB(255, 93, 4, 50),
                                ),
                              ),
                              value: Text(otherBank.type.toString())),
                          kHeight5,
                          ConfirmationDialogContentRow(
                            label: Text(
                              'To ',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: ismalayalam ? 11 : 16,
                                color: const Color.fromARGB(255, 93, 4, 50),
                              ),
                            ),
                            value: Text((otherBank.type == "SD"
                                ? state.sdsearchNo
                                : otherBank.type == "RD"
                                    ? searchRdNo.text
                                    : otherBank.type == "GOLD_LOAN"
                                        ? goldloanno.text
                                        : otherBank.accountNumber.toString())),
                          ),
                          kHeight5,
                        ],
                      );
                    }),
                  ),
                  kHeight20,
                  Center(
                    child: ColoredButton(
                      press: () {
                        context.read<CustomerBloc>().add(
                            const CustomerEvent.customerAccountInfoPageEvent());
                        context
                            .read<CustomerBloc>()
                            .add(const CustomerEvent.sdsearchaccountno(""));

                        final _customerId = context
                                    .read<LoginBloc>()
                                    .state
                                    .loginDetails!
                                    .userType ==
                                delegate.withdrawalemployee
                            ? context
                                .read<CustomerBloc>()
                                .state
                                .searchResultCustomerID
                            : context
                                .read<LoginBloc>()
                                .state
                                .loginDetails!
                                .customerId!;
                        context.read<CustomerBloc>().add(
                            CustomerEvent.fetchCustomerAccounts(
                                customerId: _customerId));

                        context.read<CustomerBloc>().add(
                            CustomerEvent.fetchCustomerScheduledTransactions(
                                customerId: _customerId));
                        context.read<CustomerBloc>().add(
                            const CustomerEvent.accountCardChanged(
                                accountCardIndex: 0));
                        // context
                        //     .read<CustomerBloc>()
                        //     .add(const CustomerEvent.clearedtextfield());
                        Navigator.pop(context);
                        searchsdid.clear();
                        searchRdNo.clear();
                        goldloanno.clear();
                      },
                      buttonHeight: 50,
                      buttonWidth: 100,
                      buttonTitle: 'OK',
                      borderRadius: 10,
                    ),
                  )
                ],
              ),
            ),
            kHeight40,
          ],
        );
      });
}
