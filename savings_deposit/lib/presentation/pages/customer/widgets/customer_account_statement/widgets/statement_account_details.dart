// ignore_for_file: unused_local_variable

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_statement/widgets/statement_head.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';
import 'package:savings_deposit/presentation/widgets/alert_dialogue_action/alert_dialogue_action.dart';
import 'package:savings_deposit/presentation/widgets/alert_show_dialogue/alert_show_dialogue.dart';
import 'package:savings_deposit/presentation/widgets/dailogue_content/dailogue_content.dart';

import '../../../../../../application/language/language_bloc.dart';
import '../../../../../../application/login/login_bloc.dart';

class StatementAccountDetails extends StatelessWidget {
  final TextEditingController _fromDateController = TextEditingController();
  final TextEditingController _toDateController = TextEditingController();

  StatementAccountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? _fromdate;
    String? _todate;
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {},
      builder: (context, state) {
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        if (state.customerStatementDetailsLoading) {
          return const Center(
              child: CircularProgressIndicator(
            color: kPrimaryColor,
          ));
        }
        if (state.customerStatementDetails == null) {
          final customerId =
              context.read<LoginBloc>().state.loginDetails!.customerId;
          return const Center(
            child: Text("Data not found"),
          );
        } else {
          final customerStatement = state.customerStatementDetails!;
          return Container(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const StatementHead(),
                Text(customerStatement.branchaddress1 ?? "",
                    style: const TextStyle(fontSize: 12)),
                kHeight5,
                Text(customerStatement.branchaddress5 ?? "",
                    style: const TextStyle(fontSize: 12)),
                kHeight5,
                Text(customerStatement.branchaddress4 ?? "",
                    style: const TextStyle(fontSize: 12)),
                kHeight5,
                Text(customerStatement.branchName ?? "",
                    style: const TextStyle(fontSize: 12)),
                kHeight10,
                ContentRow(
                  label: const Text("Customer Name :"),
                  value: Text(customerStatement.accountholderName ?? ""),
                ),
                kHeight5,
                ContentRow(
                  label: const Text("Customer Id :"),
                  value: Text(customerStatement.customerid ?? ""),
                ),
                kHeight5,
                ContentRow(
                  label: const Text("Account Type :"),
                  value: Text(customerStatement.accountType ?? ""),
                ),
                kHeight5,
                ContentRow(
                  label: const Text("Account Number :"),
                  value: Text(customerStatement.accountNumber ?? ""),
                ),
                kHeight15,
                const Text(
                  "Account Summary",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight10,
                ContentRow(
                  label: const Text("Current Balance :"),
                  value: Text("₹" +
                      toRupeeFormat(customerStatement.currentbalance ?? 0)),
                ),
                // CustomerProfileContentRow(
                //   label: "TotalMoneyOut",
                //   value: "Rs 568810",
                // ),
                kHeight10,
                FittedBox(
                  child: Row(
                    children: [
                      const Text(
                        "Statement Period",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      kHeight10,
                      IconButton(
                        onPressed: () {
                          sdShowDailogue(
                              context: context,
                              dailogue: DailogueContent(
                                title: "Select Date",
                                content: SizedBox(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        width: 90,
                                        child: TextField(
                                          decoration: const InputDecoration(
                                              hintText: "From"),
                                          onTap: () {
                                            showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(2000, 1),
                                                lastDate: DateTime.now()
                                                    .subtract(const Duration(
                                                        days: 0)),
                                                builder: (context, picker) {
                                                  return picker!;
                                                  // Theme(
                                                  //   //TODO: change colors
                                                  //   data: ThemeData.dark().copyWith(
                                                  //     colorScheme: ColorScheme.dark(
                                                  //       primary: Colors.deepPurple,
                                                  //       onPrimary: Colors.white,
                                                  //       surface: Colors.pink,
                                                  //       onSurface: Colors.yellow,
                                                  //     ),
                                                  //     dialogBackgroundColor: Colors.green[900],
                                                  //   ),
                                                  //   child: picker!,
                                                  // );
                                                }).then((selectedDate) {
                                              if (selectedDate != null) {
                                                _fromDateController.text =
                                                    selectedDate
                                                        .toString()
                                                        .split(" ")
                                                        .first
                                                        .trim();
                                                // _fromdate = selectedDate
                                                //     .toString()
                                                //     .split(" ")
                                                //     .first
                                                //     .trim();
                                              }
                                            });
                                          },
                                          controller: _fromDateController,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 90,
                                        child: TextField(
                                          decoration: const InputDecoration(
                                              hintText: "To"),
                                          onTap: () {
                                            showDatePicker(
                                                context: context,
                                                initialDate: DateTime.now(),
                                                firstDate: DateTime(2000, 1),
                                                lastDate: DateTime.now()
                                                    .subtract(const Duration(
                                                        days: 0)),
                                                builder: (context, picker) {
                                                  return picker!;
                                                  // Theme(
                                                  //   //TODO: change colors
                                                  //   data: ThemeData.dark().copyWith(
                                                  //     colorScheme: ColorScheme.dark(
                                                  //       primary: Colors.deepPurple,
                                                  //       onPrimary: Colors.white,
                                                  //       surface: Colors.pink,
                                                  //       onSurface: Colors.yellow,
                                                  //     ),
                                                  //     dialogBackgroundColor: Colors.green[900],
                                                  //   ),
                                                  //   child: picker!,
                                                  // );
                                                }).then((selectedDate) {
                                              if (selectedDate != null) {
                                                _toDateController.text =
                                                    selectedDate
                                                        .toString()
                                                        .split(" ")
                                                        .first
                                                        .trim();
                                                // _todate = selectedDate
                                                //     .toString()
                                                //     .split(" ")
                                                //     .first
                                                //     .trim();
                                              }
                                            });
                                          },
                                          controller: _toDateController,
                                        ),
                                      ),
                                      kHeight10,
                                    ],
                                  ),
                                ),
                                actions: [
                                  AlertDialogueAction(
                                    leftButtonLabel: "Cancel",
                                    rightButtonLabel: "Ok",
                                    leftButtononPressed: () {
                                      Navigator.pop(context);
                                    },
                                    rightButtononPressed: () {
                                      final _customerId = context
                                                  .read<LoginBloc>()
                                                  .state
                                                  .loginDetails!
                                                  .userType ==
                                              "Customer"
                                          ? context
                                              .read<LoginBloc>()
                                              .state
                                              .loginDetails!
                                              .customerId
                                          : state.searchResultCustomerID;
                                      _fromdate = _fromDateController.text;
                                      _todate = _toDateController.text;

                                      context.read<CustomerBloc>().add(
                                          CustomerEvent
                                              .saveCustomerStatementSelectedDate(
                                                  fromDate: _fromdate!
                                                      .split(" ")
                                                      .first,
                                                  toDate: _todate!
                                                      .split(" ")
                                                      .first));

                                      if (_fromDateController.text != "" &&
                                          _toDateController.text != "") {
                                        context.read<CustomerBloc>().add(
                                              CustomerEvent
                                                  .statementAccountDetails(
                                                customerId: _customerId!,
                                                accountNumber: state
                                                    .customerStatementDetails!
                                                    .accountNumber!,
                                                fromDate: _fromDateController
                                                    .text
                                                    .trim(),
                                                toDate: _toDateController.text
                                                    .trim(),
                                                loginToken: state.loginToken,
                                              ),
                                            );
                                        context.read<CustomerBloc>().add(
                                            CustomerEvent.statementTransactions(
                                                customerId: _customerId,
                                                accountNumber: state
                                                    .customerStatementDetails!
                                                    .accountNumber!,
                                                fromDate: _fromDateController
                                                    .text
                                                    .trim(),
                                                toDate: _toDateController.text
                                                    .trim(),
                                                loginToken: state.loginToken));
                                        Navigator.pop(context);
                                      }

                                      // context.read<LoginBloc>().state.loginDetails!.userType ==
                                      //         "Customer"
                                      //     ?
                                    },
                                  )
                                ],
                              ));
                        },
                        icon: const Icon(Icons.calendar_month),
                      ),
                    ],
                  ),
                ),
                state.customerStatementSelectedDate != null &&
                            state.customerStatementSelectedDate!.fromDate !=
                                "" ||
                        state.customerStatementSelectedDate!.toDate != ""
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            DateFormat("dd-MMM-yyyy").format(DateTime.parse(
                                state
                                    .customerStatementSelectedDate!.fromDate!)),
                            style: statementSelectedStyle,
                          ),
                          kWidth10,
                          const Text("to"),
                          kWidth10,
                          Text(
                            DateFormat("dd-MMM-yyyy").format(DateTime.parse(
                                state.customerStatementSelectedDate!.toDate!)),
                            style: statementSelectedStyle,
                          ),
                        ],
                      )
                    : kHeight1
              ],
            ),
          );
        }
      },
    );
  }

  TextStyle statementSelectedStyle =
      const TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
}
