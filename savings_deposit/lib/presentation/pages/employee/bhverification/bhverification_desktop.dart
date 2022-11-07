// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/application/splash/splash_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/bhdailogue.dart';

import 'package:savings_deposit/presentation/widgets/alert_dialogue_action/alert_dialogue_action.dart';
import 'package:savings_deposit/presentation/widgets/alert_show_dialogue/alert_show_dialogue.dart';
import 'package:savings_deposit/presentation/widgets/dailogue_content/dailogue_content.dart';

import '../../../../application/language/language_bloc.dart';

Color kcolorblack54 = Colors.black54;
Color kcolorblack = Colors.black;
FontWeight kfontWeightnormal = FontWeight.normal;
dynamic valueChoosen;

class BhverificationDesktopPage extends StatelessWidget {
  const BhverificationDesktopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (context, state) {
        state.bhverificationFailureOrSuccess.fold(
          () {},
          (either) {
            either.fold(
              (bhfailure) {
                Flushbar(
                  duration: kDuration2,
                  message: bhfailure.map(
                    (value) => null,
                    panNotFound: (_) {
                      return null;
                    },
                    phoneNotFound: (_) {
                      return null;
                    },
                    documentNotFound: (_) {
                      return null;
                    },
                    customerIdNotFound: (_) {
                      return null;
                    },
                    customerNameNotFound: (_) {
                      return null;
                    },
                    clientFailure: (_) => "Network error",
                    serverFailure: (_) => 'serverFailure',
                  ),
                ).show(context);
              },
              (_) {
                print("success");
              },
            );
          },
        );
        // context.read<EmployeeBloc>().add(
        //       const EmployeeEvent.bhverificationinitialEvent(),
        //     );
      },
      builder: (context, state) {
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        final delegate = S.of(context);
        // final branchid = context.read<CustomerBloc>().state.newSDdepositId;
        final firmid = context.read<LoginBloc>().state.loginDetails!.firmId;
        final moduleid = context.read<SplashBloc>().state.splashModel!.moduleId;
        // print(branchid);
        print(moduleid);
        print(firmid);

        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        // if (state.bhverificationdatas!.isEmpty) {
        //   return const Center(
        //     child: Text("Empty 😐😐😐"),
        //   );
        // }

        return ListView(
          children: [
            kHeight10,
            Center(
              child: Text(
                delegate.bhbranchheadapproval,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),

            // const SizedBox(
            //   height: 20,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                DropdownButton<dynamic>(
                  value: valueChoosen,
                  onChanged: (newValue) {
                    context.read<EmployeeBloc>().add(
                        EmployeeEvent.bhverifyDropdownListButtonEvent(
                            value: newValue));
                  },
                  hint: Text(state.dropdownLabel!),
                  items: [
                    DropdownMenuItem(
                      onTap: () {
                        context
                            .read<EmployeeBloc>()
                            .add(const EmployeeEvent.bhverificationSortEvent());
                      },
                      child: Text(delegate.bhapprovedsort),
                      value: "BH Approved",
                    ),
                    DropdownMenuItem(
                      onTap: () {
                        context
                            .read<EmployeeBloc>()
                            .add(const EmployeeEvent.getBhBounceListdetails());
                      },
                      child: Text(delegate.bhbounce),
                      value: "Bounce",
                    )
                  ],
                ),
              ],
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    headingRowHeight: 40,
                    showBottomBorder: true,
                    headingTextStyle: const TextStyle(
                        // fontSize: 15,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white),
                    headingRowColor:
                        MaterialStateProperty.all(const Color(0xff914686)),
                    columns: [
                      DataColumn(
                        label: Text(
                          delegate.bhemployeecode,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          delegate.bhcustomername,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          delegate.bhchequeno,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          delegate.bhamount,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      DataColumn(
                          label: Flexible(
                              child: Text(delegate.bhchequecleareddate))),
                      // DataColumn(label: Text('Date')),
                      DataColumn(label: Text(delegate.bhactions)),
                    ],
                    rows: state.bhverificationdatas!.reversed.map(
                      (e) {
                        return DataRow(
                          cells: [
                            DataCell(
                              Row(
                                children: [
                                  const Icon(Icons.person),
                                  Text(e.employeeCode.toString())
                                ],
                              ),
                            ),
                            DataCell(Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                    child: Text(e.customerName.toString())),
                                Flexible(
                                    child: Text(e.customerBank.toString())),
                              ],
                            )),
                            DataCell(
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                      child: Text(
                                    e.chequeno.toString(),
                                  )),
                                  Flexible(
                                    child: Text(DateFormat("dd-MMM-yyyy")
                                        .format(DateTime.parse(
                                            e.chqSubmiteDate.toString()))),
                                    // child: Text(e.chqSubmiteDate
                                    //     .toString()
                                    //     .split(" ")
                                    //     .first)
                                  ),
                                ],
                              ),
                            ),
                            DataCell(
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "₹${toRupeeFormat(e.amount!)}",
                                  //toRupeeFormat(e.amount!)
                                ),
                              ),
                            ),
                            DataCell(
                              Text(
                                e.chequeCleardt == null
                                    ? "--"
                                    : DateFormat("dd-MMM-yyyy").format(
                                        DateTime.parse(
                                          e.chequeCleardt.toString(),
                                        ),
                                      ),
                              ),
                            ),
                            DataCell(
                              TextButton(
                                  onPressed: (() {
                                    sdShowDailogue(
                                      context: context,
                                      dailogue: DailogueContent(
                                        actions: [
                                          e.statusId == 1
                                              ? AlertDialogueAction(
                                                  leftButtonLabel:
                                                      delegate.bhapprove,
                                                  rightButtonLabel: "Return",
                                                  leftButtononPressed: () {
                                                    context
                                                        .read<EmployeeBloc>()
                                                        .add(
                                                          EmployeeEvent
                                                              .bhverificationApproveEvent(
                                                            depositid: e
                                                                .depositId
                                                                .toString(),
                                                            branchid: e
                                                                .branchId!
                                                                .toInt(),
                                                            chequeno: e.chequeno
                                                                .toString(),
                                                            firmid:
                                                                firmid!.toInt(),
                                                            moduleid: moduleid,
                                                            bhid: e
                                                                .employeeCode!
                                                                .toInt(),
                                                            chequecleardate:
                                                                DateTime.parse(e
                                                                    .chequeCleardt
                                                                    .toString()),
                                                          ),
                                                        );
                                                    Future.delayed(kDuration1,
                                                        () {
                                                      context
                                                          .read<EmployeeBloc>()
                                                          .add(const EmployeeEvent
                                                              .bhverificationinitialEvent());
                                                    });

                                                    // context.read<EmployeeBloc>().add(
                                                    //     const EmployeeEvent
                                                    //         .bhverificationinitialEvent());
                                                    Navigator.pop(context);
                                                  },
                                                  rightButtononPressed: () {
                                                    context
                                                        .read<EmployeeBloc>()
                                                        .add(
                                                          EmployeeEvent
                                                              .bhverificationReturnEvent(
                                                            depositid: e
                                                                .depositId
                                                                .toString(),
                                                            chequeno: e.chequeno
                                                                .toString(),
                                                          ),
                                                        );
                                                    Future.delayed(kDuration1,
                                                        () {
                                                      context
                                                          .read<EmployeeBloc>()
                                                          .add(const EmployeeEvent
                                                              .bhverificationinitialEvent());
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                )
                                              : AlertDialogueAction(
                                                  leftButtonLabel: "Bounce",
                                                  rightButtonLabel: "Return",
                                                  leftButtononPressed: () {
                                                    context
                                                        .read<EmployeeBloc>()
                                                        .add(
                                                          EmployeeEvent
                                                              .bhBouncebuttonPressed(
                                                            chequeno: e.chequeno
                                                                .toString(),
                                                            depositid: e
                                                                .depositId
                                                                .toString(),
                                                            empid: e
                                                                .employeeCode
                                                                .toString(),
                                                          ),
                                                        );
                                                    Future.delayed(kDuration1,
                                                        () {
                                                      context
                                                          .read<EmployeeBloc>()
                                                          .add(const EmployeeEvent
                                                              .bhverificationinitialEvent());
                                                    });
                                                    Navigator.pop(context);
                                                  },
                                                  rightButtononPressed: () {
                                                    context
                                                        .read<EmployeeBloc>()
                                                        .add(
                                                          EmployeeEvent
                                                              .bhverificationReturnEvent(
                                                            depositid: e
                                                                .depositId
                                                                .toString(),
                                                            chequeno: e.chequeno
                                                                .toString(),
                                                          ),
                                                        );
                                                    Future.delayed(kDuration1,
                                                        () {
                                                      context
                                                          .read<EmployeeBloc>()
                                                          .add(const EmployeeEvent
                                                              .bhverificationinitialEvent());
                                                    });
                                                    Navigator.pop(context);
                                                  })
                                        ],
                                        title: delegate.bhstatus,
                                        content: Dailogue1()
                                            .dialogueContainer1(e, context),
                                      ),
                                    );
                                  }),
                                  child: e.statusId == 1
                                      ? const Text("Verified")
                                      : const Text(
                                          "Bounce",
                                          style: TextStyle(color: Colors.red),
                                        )),
                            )
                          ],
                        );

                        // if (state.bhverificationdatas!.isEmpty) {
                        //   Center(
                        //     child: Text("data"),
                        //   );
                        // }
                      },
                    ).toList()),
              ),
            ),
          ],
        );
      },
    );
  }
}
