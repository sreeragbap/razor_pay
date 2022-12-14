// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/presentation/pages/employee/cheque_recouncilation/cheque_dialogbox_refractor.dart';

import '../../../../application/cheque_recouncilation/cheque_recouncilation_bloc.dart';
import '../../../../application/language/language_bloc.dart';
import '../../../../core/colors.dart';
import '../../../../core/constants.dart';
import '../../../../core/core_functionalities.dart';
import '../../../../generated/l10n.dart';
import '../../../widgets/alert_dialogue_action/alert_dialogue_action.dart';
import '../../../widgets/alert_show_dialogue/alert_show_dialogue.dart';
import '../../../widgets/dailogue_content/dailogue_content.dart';
import '../../../widgets/data_table_widgets/data_table_widgets.dart';

dynamic chequeRecouncilationDesktop(BuildContext context) {
  final delegate = S.of(context);
  Future chequeClearingDailogue(
    dynamic e,
  ) {
    return sdShowDailogue(
      context: context,
      dailogue: DailogueContent(
        actions: [
          AlertDialogueAction(
            leftButtonLabel: delegate.chequeStatusClear,
            rightButtonLabel: delegate.chequeStatusBounce,
            leftButtononPressed: () {
              final clearDate =
                  context.read<ChequeRecouncilationBloc>().state.clearDate;
              if (clearDate != null) {
                context.read<ChequeRecouncilationBloc>().add(
                      ChequeRecouncilationEvent.verifyButtonPressed(
                        chequeNo: e.chequeno!,
                        clearDate: clearDate,
                        depositId: e.depositId!,
                      ),
                    );
                Navigator.of(context).pop();
              } else {
                sdShowDailogue(
                  context: context,
                  dailogue: AlertDialog(
                    title: const Text("Please select date"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Ok"),
                      )
                    ],
                  ),
                );
              }
            },
            rightButtononPressed: () {
              final clearDate =
                  context.read<ChequeRecouncilationBloc>().state.clearDate;
              if (clearDate != null) {
                context
                    .read<ChequeRecouncilationBloc>()
                    .add(ChequeRecouncilationEvent.bounceButtonPressed(
                      empId: e.employeeCode.toString(),
                      chequeNo: e.chequeno.toString(),
                      rejectedReason: "Rejected",
                      depositId: e.depositId.toString(),
                      clearDt: clearDate,
                    ));
                Navigator.of(context).pop();
              } else {
                sdShowDailogue(
                  context: context,
                  dailogue: AlertDialog(
                    title: const Text("Please select date"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text("Ok"),
                      )
                    ],
                  ),
                );
              }
            },
          ),
        ],
        title: delegate.chequeStatusHeading,
        content: Dailogue().dialogueContainer(e, context),
      ),
    );
  }

  return BlocConsumer<ChequeRecouncilationBloc, ChequeRecouncilationState>(
    listener: (context, state) {
      state.statusOption.fold(
        () {},
        (a) => a.fold(
          (l) {},
          (_) {
            print("Success");
            context.read<ChequeRecouncilationBloc>().add(
                  const ChequeRecouncilationEvent.getChequeRecounciledList(),
                );
          },
        ),
      );
    },
    builder: (context, state) {
      final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;

      if (state.isLoading) {
        return const Center(
          child: CircularProgressIndicator(color: kPrimaryColor),
        );
      }
      if (state.result.isEmpty) {
        return const Center(
          child: Text("Empty ????????????"),
        );
      }

      return ListView(
        children: [
          kHeight10,
          Center(
            child: Text(
              delegate.chequeRecouncilationHeading,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          kHeight70,
          FittedBox(
            fit: BoxFit.fitWidth,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                headingRowHeight: 40,
                showBottomBorder: true,
                headingTextStyle: const TextStyle(
                    // fontSize: 15,
                    // fontWeight: FontWeight.normal,
                    color: Colors.white),
                headingRowColor:
                    MaterialStateProperty.all(const Color(0xff914686)),
                columns: [
                  buildDataColumn(
                    Text(
                      delegate.chequeEmployeeCode,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  buildDataColumn(
                    Text(
                      delegate.chequeCustomerName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  buildDataColumn(
                    Text(
                      delegate.chequeChequeNumber,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  buildDataColumn(
                    Text(
                      delegate.chequeAmount,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  buildDataColumn(
                    Text(
                      delegate.chequeDate,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  buildDataColumn(
                    Text(
                      delegate.chequeAction,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
                rows: state.result.map(
                  (e) {
                    return DataRow(
                      cells: [
                        //Icon(Icons.person),
                        buildDataCell(
                          Row(
                            children: [
                              const Icon(Icons.person),
                              Text(
                                e.employeeCode.toString(),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              )
                            ],
                          ),
                        ),
                        DataCell(
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(child: Text(e.customerName.toString())),
                              Flexible(child: Text(e.customerBank.toString())),
                            ],
                          ),
                        ),
                        buildDataCell(
                          Text(
                            e.chequeno.toString(),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        buildDataCell(
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "???${toRupeeFormat(e.amount!)}",
                              //"???${e.amount.toString()}",
                              //e.amount.toString(),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                        buildDataCell(
                          Text(
                            DateFormat("dd-MMM-yyyy").format(
                              DateTime.parse(
                                e.chqSubmiteDate!
                                    .toIso8601String()
                                    .split("T")
                                    .first,
                              ),
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        buildDataCell(
                          TextButton(
                            onPressed: () {
                              context.read<ChequeRecouncilationBloc>().add(
                                    ChequeRecouncilationEvent.updateClearDate(
                                      null,
                                    ),
                                  );
                              chequeClearingDailogue(e);
                            },
                            child: const Text(
                              'pending',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ).toList(),
              ),
            ),
          ),
        ],
      );
    },
  );
}
