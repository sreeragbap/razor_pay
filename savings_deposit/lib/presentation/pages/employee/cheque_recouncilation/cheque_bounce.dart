import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/presentation/widgets/data_table_widgets/data_table_widgets.dart';

import '../../../../application/language/language_bloc.dart';
import '../../../../core/constants.dart';
import 'dropDownList.dart';

// String? depositId;

// ignore: must_be_immutable
class ChequeBouncePage extends StatelessWidget {
  //List<Map<String, dynamic>> chequeBounceApiresults;
  const ChequeBouncePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                "Cheque Bounces",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff363636),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [DropdownList()],
              ),
              kHeight50,
            ],
          ),
          chequeBounceData(context, chequeBounceApiresults)
        ],
      ),
    );
  }

  DataTable chequeBounceData(
      BuildContext context, List<Map<String, dynamic>> chequeBounceApiresults) {
    return DataTable(
        headingRowHeight: 50,
        headingRowColor: MaterialStateProperty.all(Colors.blue[100]),
        columns: [
          buildDataColumn(const Text("Customer Name ")),
          buildDataColumn(const Text(
            "Cheque Number",
            overflow: TextOverflow.ellipsis,
          )),
          buildDataColumn(const Text("Date")),
          buildDataColumn(const Text("Action")),
        ],
        rows: chequeBounceApiresults.map((cheques) {
          return DataRow(
            cells: [
              //Icon(Icons.person),
              buildDataCell(Row(
                children: [
                  const Icon(Icons.person),
                  Text(cheques["customerName"].toString())
                ],
              )),
              buildDataCell(
                Column(
                  children: [
                    Flexible(child: Text(cheques["chequeNumber"])),
                  ],
                ),
              ),
              buildDataCell(Text(
                cheques["chequeSubmitDate"].toString(),
              )),
              buildDataCell(
                TextButton(
                  onPressed: () {},
                  child: const Text('Bounce'),
                ),
              ),
            ],
          );
        }).toList());
  }
}

List<Map<String, dynamic>> chequeBounceApiresults = [
  {
    "customerName": "SATHAR",
    "chequeNumber": "45674322",
    "chequeSubmitDate": "2022-03-23T16:05:00",
    "firmId": 2,
    "branchId": 0,
    "amount": 2000,
    "depositid": "0200000400543066"
  }
];
