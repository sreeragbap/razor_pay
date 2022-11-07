// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/presentation/widgets/data_table_widgets/data_table_widgets.dart';

import '../../../../../application/language/language_bloc.dart';
import '../../../../../generated/l10n.dart';

class CustomerwiseReportsDesktopView extends StatelessWidget {
  const CustomerwiseReportsDesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<EmployeeBloc>().add(EmployeeEvent.getCustomerwiseReports(
        firmId: context.read<LoginBloc>().state.loginDetails!.firmId!,
        branchId: context.read<LoginBloc>().state.loginDetails!.branchId!));
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (context, state) {
        state.customerReportsFailureOrSuccess.fold(
            () => {},
            (a) => a.fold(
                (l) => l.map(
                      serverError: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('There is no data')));
                      },
                      clientFailure: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(' Something Went Wrong!')));
                      },
                    ),
                (r) => {}));
      },
      builder: (context, state) {
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        final delegate = S.of(context);
        String cdate = DateFormat("dd-MMMM-yyyy").format(DateTime.now());
        String tdata = DateFormat("hh:mm:ss a").format(DateTime.now());

        return ListView(
          controller: ScrollController(),
          children: [
            Column(children: [
              Text(
                delegate.reportsMabenNidhiLimited,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              kHeight10,
              BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      delegate.reportsBranchID +
                          '-${state.loginDetails!.branchId.toString()} ,' +
                          delegate.reportsBranchName +
                          ' ${state.loginDetails!.branchname}',
                      style: const TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                );
              }),
              kHeight10,
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(delegate.reportDate + ':$cdate'),
                        Text(delegate.reportsTime + ':$tdata'),
                      ],
                    ),
                    kHeight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(delegate.reportsAsOn + ' $cdate '),
                      ],
                    )
                  ],
                ),
              ),
              FittedBox(
                child: DataTable(
                    headingTextStyle: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                    headingRowColor: MaterialStateColor.resolveWith(
                        (states) => const Color(0xff914686)),
                    columns: [
                      buildDataColumn(Text(
                        delegate.reportsType,
                      )),
                      buildDataColumn(Text(delegate.reportsDocId)),
                      buildDataColumn(Text(delegate.reportsName)),
                      buildDataColumn(Text(delegate.reportsAmount)),
                      buildDataColumn(Text(delegate.reportsDate)),
                      buildDataColumn(Text(delegate.reportsRate)),
                      buildDataColumn(Text(delegate.reportsAccured)),
                      buildDataColumn(Text(delegate.reportsPayable)),
                    ],
                    rows: state.customerwisereports!.map((e) {
                      return DataRow(cells: [
                        buildDataCell(Text(e.type.toString())),
                        buildDataCell(Text(e.docId.toString())),
                        buildDataCell(Text(e.customerName.toString())),
                        buildDataCell(Align(
                          child:
                              Text('₹ ' + toRupeeFormat(e.amount!.toDouble())),
                          alignment: Alignment.centerRight,
                        )),
                        buildDataCell(Text(DateFormat("dd-MMMM-yyyy")
                            .format(DateTime.parse(e.intDate.toString())))),
                        buildDataCell(Text(e.intRate.toString())),
                        buildDataCell(Text(e.intAcured.toString())),
                        buildDataCell(Text(e.intPayable.toString()))
                      ]);
                    }).toList()),
              ),
            ]),
          ],
        );
      },
    );
  }
}
