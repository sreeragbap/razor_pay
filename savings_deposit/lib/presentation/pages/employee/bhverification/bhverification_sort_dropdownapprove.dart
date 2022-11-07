// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';

import '../../../../application/language/language_bloc.dart';
import '../../../../generated/l10n.dart';

Color kcolorblack54 = Colors.black54;
Color kcolorblack = Colors.black;
FontWeight kfontWeightnormal = FontWeight.normal;
dynamic valueChoosen;

class BhverifyDropDownApprove extends StatelessWidget {
  const BhverifyDropDownApprove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (context, state) {
        state.bhverificationsortfailureorsuccess.fold(
          () {},
          (either) {
            either.fold(
              (bhsortfailure) {
                Flushbar(
                    message: bhsortfailure.map(
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
                )).show(context);
              },
              (_) => {},
            );
          },
        );
      },
      builder: (context, state) {
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        final delegate = S.of(context);
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView(
          children: [
            kHeight10,
            Center(
              child: Text(
                delegate.bhbranchheadapproved,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            BlocBuilder<EmployeeBloc, EmployeeState>(
              builder: (context, state) {
                return Row(
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
                            context.read<EmployeeBloc>().add(const EmployeeEvent
                                .bhverificationSortbhverificationpageEvent());
                          },
                          child: Text(delegate.bhapproval),
                          value: "BH Approval",
                        ),
                        DropdownMenuItem(
                          onTap: () {
                            context.read<EmployeeBloc>().add(
                                const EmployeeEvent.getBhBounceListdetails());
                          },
                          child: Text(delegate.bhbounce),
                          value: "Bounce",
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                    headingRowHeight: 40,
                    showBottomBorder: true,
                    headingTextStyle: const TextStyle(
                        // // fontSize: 15,
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
                      DataColumn(label: Text(delegate.bhamount)),
                      DataColumn(label: Text(delegate.bhapproveddate)),
                      DataColumn(label: Text(delegate.bhactions)),
                    ],
                    rows: state.bhverificationsortsdatas!.map(
                      (sortapprovedatas) {
                        return DataRow(
                          cells: [
                            DataCell(
                              Row(
                                children: [
                                  const Icon(Icons.person),
                                  Text(sortapprovedatas.employeeCode.toString())
                                ],
                              ),
                            ),
                            DataCell(
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                      child: Text(sortapprovedatas.customerName
                                          .toString())),
                                  Flexible(
                                    child: Text(sortapprovedatas.customerBank
                                        .toString()),
                                  ),
                                ],
                              ),
                            ),
                            DataCell(
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                      child: Text(sortapprovedatas.chequeNumber
                                          .toString())),
                                  Flexible(
                                      child: Text(DateFormat("dd-MMM-yyyy")
                                          .format(DateTime.parse(
                                              sortapprovedatas.chequeSubmitDate
                                                  .toString())))),
                                ],
                              ),
                            ),
                            DataCell(Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                    "₹${toRupeeFormat(sortapprovedatas.amount!)}"))),
                            DataCell(Text(DateFormat("dd-MMM-yyyy").format(
                                DateTime.parse(sortapprovedatas.bhVerifiedDate
                                    .toString())))),
                            DataCell(TextButton(
                                onPressed: (() {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                            title: Text(delegate.bhstatus),
                                            content: Text(
                                                delegate.bhalreadyapproved),
                                            actions: [
                                              ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text('Ok'))
                                            ],
                                          ));
                                }),
                                child: Text(delegate.bhapproved)))
                          ],
                        );
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
