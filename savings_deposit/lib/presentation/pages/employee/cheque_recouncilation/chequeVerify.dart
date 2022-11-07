// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants.dart';
import 'dropdownList.dart';

// ignore: must_be_immutable
class ChequeVerifyPage extends StatelessWidget {
  List<Map<String, dynamic>> chequeVerifyApiresults;
  ChequeVerifyPage({Key? key, required this.chequeVerifyApiresults})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Text(
              "Verify Cheques",
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
      ],
    );
  }

  DataTable chequeVerifyData(
      BuildContext context, List<Map<String, dynamic>> chequeVerifyApiresults) {
    return DataTable(
        headingRowHeight: 50,
        headingRowColor: MaterialStateProperty.all(Colors.blue[100]),
        columns: [
          buildDataColumn(const Text("Customer Name ")),
          buildDataColumn(const Text("Cheque Number")),
          buildDataColumn(const Text("Date")),
          buildDataColumn(const Text("Action")),
        ],
        rows: chequeVerifyApiresults.map((cheques) {
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
                  child: const Text('Verify'),
                ),
              ),
            ],
          );
        }).toList());
  }

  DataCell buildDataCell(Widget widget) {
    return DataCell(widget);
  }

  DataColumn buildDataColumn(Widget widget) {
    return DataColumn(label: widget);
  }
}

List<Map<String, dynamic>> chequeVerifyApiresults = [
  {
    "customerName": "SATHAR",
    "chequeNumber": "136478963",
    "chequeSubmitDate": "2022-03-22T10:43:15",
    "firmId": 2,
    "branchId": 0,
    "amount": 5000,
    "statusId": 1,
    "bhStatus": 1,
    "depositid": "0200000400543066"
  },
  {
    "customerName": "PREEJA SHAJI",
    "chequeNumber": "097856",
    "chequeSubmitDate": "2022-03-26T10:04:30",
    "firmId": 2,
    "branchId": 0,
    "amount": 5,
    "statusId": 1,
    "bhStatus": 1,
    "depositid": "0200000400543066"
  },
  {
    "customerName": "DEVASSY",
    "chequeNumber": "0807",
    "chequeSubmitDate": "2022-03-30T08:54:38",
    "firmId": 2,
    "branchId": 0,
    "amount": 100,
    "statusId": 1,
    "bhStatus": 1,
    "depositid": "0200380400601614"
  },
  {
    "customerName": "ANASWARA.CK",
    "chequeNumber": "7676",
    "chequeSubmitDate": "2022-03-30T09:08:31",
    "firmId": 2,
    "branchId": 0,
    "amount": 100,
    "statusId": 1,
    "bhStatus": 1,
    "depositid": "0233260400060001"
  },
  {
    "customerName": "ANASWARA.CK",
    "chequeNumber": "1414",
    "chequeSubmitDate": "2022-03-30T09:10:57",
    "firmId": 2,
    "branchId": 0,
    "amount": 100,
    "statusId": 1,
    "bhStatus": 1,
    "depositid": "0233260400060001"
  },
  {
    "customerName": "ANASWARA.CK",
    "chequeNumber": "6769",
    "chequeSubmitDate": "2022-03-30T10:20:41",
    "firmId": 2,
    "branchId": 0,
    "amount": 100,
    "statusId": 1,
    "bhStatus": 1,
    "depositid": "0233260400060001"
  }
];
