import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/splash/splash_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/alert_dailoguebox.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';

import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';

import '../../../employee/customer_search/customer_search_widgets/search_result_with_pagination/search_result_pagination.dart';

Future<dynamic> submitdailogbox(
    BuildContext context,
    String endDate,
    List<CustomerOtherBankDataModel> loopingList,
    List<CustomerAccountsModel> statusoncard) {
  final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;

  final delegate = S.of(context);
  return showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return SimpleDialog(
          children: [
            Column(
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
                kHeight20,
                SizedBox(
                  width: 300,
                  child: Neumorphic(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: BlocBuilder<CustomerBloc, CustomerState>(
                          builder: (context, state) {
                        final account = statusoncard[
                            state.nonSettledcardindex]; //get accountnumber
                        final otherBank = loopingList[state.otherbankindex];

                        final usertype = context
                            .read<LoginBloc>()
                            .state
                            .loginDetails!
                            .userType;

                        final moduleId = context
                            .read<SplashBloc>()
                            .state
                            .splashModel!
                            .moduleId;
                        print(moduleId);
                        final branchId = context //get branchid
                            .read<LoginBloc>()
                            .state
                            .loginDetails!
                            .branchId;
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

                        final firmId = context
                            .read<LoginBloc>()
                            .state
                            .loginDetails!
                            .firmId; //firmid
                        final empCode = context
                            .read<LoginBloc>()
                            .state
                            .loginDetails!
                            .customerId; //emp code

                        final date = state.datepicker;

                        return Column(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                                child: Text(
                              delegate.withdrawalconfirm,
                              style: TextStyle(fontSize: ismalayalam ? 10 : 20),
                            )),
                            kHeight20,
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
                            ConfirmationDialogContentRow(
                                label: Text(
                                  'Date ',
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
                                  delegate.withdrawalfrom,
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ismalayalam ? 11 : 16,
                                    color: const Color.fromARGB(255, 93, 4, 50),
                                  ),
                                ),
                                value: Text(account.accountNumber!)),
                            kHeight5,
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
                                value: Text(otherBank.type == "SD"
                                    ? state.sdsearchNo
                                    : otherBank.type == "RD"
                                        ? searchRdNo.text
                                        : otherBank.type == "GOLD_LOAN"
                                            ? goldloanno.text
                                            : otherBank.accountNumber
                                                .toString())),
                            kHeight5,
                            kHeight20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    kHeight20,
                                    ColoredButton(
                                      press: () async {
                                        final _loginDetails = context
                                            .read<LoginBloc>()
                                            .state
                                            .loginDetails!;
                                        context.read<CustomerBloc>().add(
                                                CustomerEvent
                                                    .withdrawalpostmethod(
                                              token: state.loginToken,
                                              empcode: empCode!,
                                              usertype: usertype,
                                              amount: state.withdrawalAmount,
                                              depositid: account.accountNumber!,
                                              startDate: DateTime.parse(
                                                  state.datepicker.toString()),
                                              firmid: firmId,
                                              branchid: branchId,
                                              moduleId: moduleId,
                                              customerName: customerName,
                                              transactionMethod: otherBank.type,
                                              bankaccountNo: otherBank.type ==
                                                      "SD"
                                                  ? state.sdsearchNo
                                                  : otherBank.type == "RD"
                                                      ? searchRdNo.text
                                                      : otherBank.type ==
                                                              "GOLD_LOAN"
                                                          ? goldloanno.text
                                                          : otherBank
                                                              .accountNumber,
                                              ifsccode: otherBank.ifscCode,
                                              branchName:
                                                  otherBank.customerBankName,
                                              customerId: _loginDetails
                                                          .userType ==
                                                      delegate
                                                          .withdrawalcustomer
                                                  ? context
                                                      .read<LoginBloc>()
                                                      .state
                                                      .loginDetails!
                                                      .customerId!
                                                  : _loginDetails.userType ==
                                                          delegate
                                                              .withdrawalemployee
                                                      ? searchResultcustomerId!
                                                      : "",
                                              recurring: date == endDate
                                                  ? 'day'
                                                  : state.recurringType,
                                              noOfTimes: state.count,
                                              closeDate:
                                                  DateTime.parse(endDate),
                                            ));

                                        context.read<CustomerBloc>().add(
                                            const CustomerEvent
                                                .fundTransferPageEvent());
                                        context.read<CustomerBloc>().add(
                                            const CustomerEvent
                                                .sdsearchclearDatamodel());
                                        // context.read<CustomerBloc>().add(
                                        //     const CustomerEvent
                                        //         .clearedtextfield());

                                        // //withdrawal>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                                        Navigator.pop(context);
                                        // searchsdid.clear();
                                        // searchRdNo.clear();
                                        // goldloanno.clear();
                                        alertdialogbox(
                                          context,
                                          ctx,
                                          state.withdrawalAmount,
                                          loopingList,
                                        );
                                      },
                                      buttonHeight: 50,
                                      buttonWidth: ismalayalam ? 150 : 100,
                                      buttonTitle: delegate.depositSubmit,
                                      borderRadius: 10,
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        );
                      }),
                    ),
                  ),
                ),
                kHeight70,
              ],
            )
          ],
        );
      });
}

class ConfirmationDialogContentRow extends StatelessWidget {
  Widget? label;
  Widget? value;

  ConfirmationDialogContentRow({Key? key, this.label, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [label == null ? const SizedBox() : label!]),
        kHeight5,
        Row(
          children: [kWidth15, value == null ? const SizedBox() : value!],
        )
      ],
    );
  }
}
