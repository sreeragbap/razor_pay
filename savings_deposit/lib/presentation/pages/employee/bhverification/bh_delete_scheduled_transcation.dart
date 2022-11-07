import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/bh_delete_show_dailogue.dart';
import 'package:savings_deposit/presentation/widgets/alert_dialogue_action/alert_dialogue_action.dart';
import 'package:savings_deposit/presentation/widgets/alert_show_dialogue/alert_show_dialogue.dart';
import 'package:savings_deposit/presentation/widgets/dailogue_content/dailogue_content.dart';

class DeleteScheduledTranscationPage extends StatelessWidget {
  const DeleteScheduledTranscationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context
        .read<EmployeeBloc>()
        .add(const EmployeeEvent.getbhdeletedscheduledtranscationdetails());
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (context, state) {
        state.bhdeletescheduledtranscationFailureorSuccess.fold(() {},
            (either) {
          either.fold(
            (bhfailure) {
              Flushbar(
                duration: kDuration1,
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
              // ignore: avoid_print
              print("success");
            },
          );
        });
      },
      builder: (context, state) {
        // create(state);

        List<int> rtIdss = create(state);
        // create(state);
        // List<String> rtIds = getRtIds(state);
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
            itemCount: state.bhdeletescheduleddatas!.length,
            itemBuilder: (BuildContext context, int index) {
              final usertype =
                  context.read<LoginBloc>().state.loginDetails!.userType;
              final bhid =
                  context.read<LoginBloc>().state.loginDetails!.empCode;

              final details = state.bhdeletescheduleddatas![index].detail;
              return Card(
                  color: Colors.blue.shade50,
                  shadowColor: Colors.black87,
                  elevation: 1,
                  child: ExpansionTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: Text(
                        '${index + 1}',
                        style: const TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            context.read<EmployeeBloc>().add(const EmployeeEvent
                                .deleteScheduledTransactionAllMonth());
                            sdShowDailogue(
                                context: context,
                                dailogue: DailogueContent(
                                    actions: [
                                      AlertDialogueAction(
                                          leftButtonLabel: "Delete",
                                          rightButtonLabel: "Cancel",
                                          leftButtononPressed: () {
                                            context.read<EmployeeBloc>().add(
                                                EmployeeEvent
                                                    .deleteScheduledTranscations(
                                                        flag: state.deleteflag!,
                                                        rtId: details[0].rtid!,
                                                        transactionDate:
                                                            DateTime.parse(
                                                                details[0]
                                                                    .date
                                                                    .toString()),
                                                        userType: usertype!,
                                                        bhId: bhid!));

                                            Future.delayed(kDuration1, () {
                                              context.read<EmployeeBloc>().add(
                                                  const EmployeeEvent
                                                      .getbhdeletedscheduledtranscationdetails());
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          rightButtononPressed: () {
                                            Navigator.of(context).pop();
                                          })
                                    ],
                                    title: "Transaction",
                                    content:
                                        // Text("daaaaa pulleeee"),
                                        //)
                                        DeleteDailogue()
                                            .dialogueContainerDelete(
                                                state
                                                    .bhdeletescheduleddatas![
                                                        index]
                                                    .detail,
                                                context)));
                          },
                          icon: const Icon(Icons.delete),
                        ),
                        kWidth20,
                        const Icon(Icons.keyboard_arrow_down_sharp)
                      ],
                    ),
                    title: Text(state.bhdeletescheduleddatas![index].detail[0]
                            .customerName! +
                        "\n" +
                        state.bhdeletescheduleddatas![index].detail[0]
                            .depositNumber! +
                        "\n" +
                        "Amount :" '₹ ' +
                        toRupeeFormat(state
                            .bhdeletescheduleddatas![index].detail[0].amount!)),
                    children:
                        state.bhdeletescheduleddatas![index].detail.map((e) {
                      return ListTile(
                        title: Text("A/C No : " +
                            e.depositNumber.toString() +
                            "\n" +
                            "Date     : " +
                            DateFormat("dd-MMM-yyyy")
                                .format(DateTime.parse(e.date.toString()))),
                        subtitle:
                            Text("Amount : " '₹ ' + toRupeeFormat(e.amount!)),
                        // trailing: IconButton(
                        //     onPressed: () {
                        //       sdShowDailogue(
                        //           context: context,
                        //           dailogue: DailogueContent(
                        //               actions: [
                        //                 e.statusid == 2
                        //                     ? AlertDialogueAction(
                        //                         leftButtonLabel:
                        //                             "leftButtonLabel",
                        //                         rightButtonLabel:
                        //                             "rightButtonLabel",
                        //                         leftButtononPressed: () {},
                        //                         rightButtononPressed: () {})
                        //                     : const SizedBox()
                        //               ],
                        //               title: "Transaction",
                        //               content: DeleteDailogue()
                        //                   .dialogueContainerDelete(
                        //                       e, context)));
                        //     },
                        //     icon: const Icon(Icons.delete)),
                      );
                    }).toList(),
                  ));
            });
      },
    );
  }

  create(EmployeeState state) {
    List<int> rtidList = [];
    for (int i = 0; i < state.bhdeletescheduleddatas!.length; i++) {
      rtidList.add(state.bhdeletescheduleddatas![i].rtId!);
    }
    print(rtidList);
    return rtidList;
  }
}
