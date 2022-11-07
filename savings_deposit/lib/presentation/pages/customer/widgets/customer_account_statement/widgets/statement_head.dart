import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/core/constants.dart';

import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_statement/widgets/statement_pdf_content/statement_pdf_content.dart';

import '../../../../../../application/language/language_bloc.dart';

class StatementHead extends StatelessWidget {
  const StatementHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final delegate = S.of(context);
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        final statementTransactions =
            state.updatedCustomerStatementTransaction!;
        DateTime currentDateTime = DateTime.now();
        String currenDate = DateFormat("dd-MMM-yyyy").format(currentDateTime);
        String currentTime = DateFormat("HH:mm").format(currentDateTime);
        return Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "MABEN NIDHI LIMITED",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  // IconButton(
                  //   splashRadius: 1,
                  //   onPressed: () {},
                  //   icon: const Icon(
                  //     Icons.print,
                  //     size: 20,
                  //   ),
                  // ),
                  IconButton(
                    splashRadius: 1,
                    onPressed: () {
                      StatementPdfContent().createAccountStatementDocument(
                          statementTransactions,
                          state.customerStatementDetails!,
                          currenDate,
                          currentTime,
                          state.creditTotal!,
                          state.debitTotal!);
                      if (statementTransactions.isNotEmpty) {
                        showToast("Account Statement saved to your Documents",
                            position: StyledToastPosition.center,
                            context: context,
                            duration: kDuration5);
                      } else {
                        showToast("There is no transactions",
                            position: StyledToastPosition.center,
                            context: context,
                            duration: kDuration5);
                      }
                    },
                    icon: const Icon(
                      Icons.save_alt_outlined,
                      size: 20,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(currenDate), kWidth10, Text(currentTime)],
              ),
              kHeight15
            ],
          ),
        );
      },
    );
  }
}
