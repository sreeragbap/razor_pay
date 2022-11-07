// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:savings_deposit/application/cheque_recouncilation/cheque_recouncilation_bloc.dart';

// class ChequeDailogue {
//   Color colorblack54 = Colors.black54;
//   Color colorblack = Colors.black;
//   FontWeight fontWeightnormal = FontWeight.normal;
// //-----------------------
//   Widget textDialogueAction({
//     required String textLabelName,
//     required Color colorLabel,
//     required FontWeight labelFontWeight,
//   }) {
//     return Text(
//       textLabelName,
//       style: TextStyle(
//         color: colorLabel,
//         fontWeight: labelFontWeight,
//       ),
//     );
//   }

// //------------------span style color-black54----------------
//   TextStyle textSpanTextStyleBlack54({
//     Color colorblack54 = Colors.black54,
//     FontWeight fontWeightnormal = FontWeight.normal,
//   }) {
//     return TextStyle(
//       color: colorblack54,
//       fontWeight: fontWeightnormal,
//     );
//   }

// //------------------span style color-black------------------
//   TextStyle textSpanStyleColorBlack({
//     Color colorblack = Colors.black,
//     FontWeight fontWeightnormal = FontWeight.normal,
//   }) {
//     return TextStyle(color: colorblack, fontWeight: fontWeightnormal);
//   }

//-----------------------------------------------------------
//   Container dialogueContainer(dynamic chequedata, BuildContext context) {
//     //final delegate = S.of(context);
//     // ignore: sized_box_for_whi
//     log(context.read<ChequeRecouncilationBloc>().state.result.toString());
//     return Container(
//       width: 350,
//       height: 300,
//       color: Colors.transparent,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           textDialogueAction(
//             textLabelName:
//                 "Employee Code :" + chequedata.employeeCode.toString(),
//             colorLabel: colorblack54,
//             labelFontWeight: fontWeightnormal,
//           ),
//           textDialogueAction(
//               textLabelName: "Customer Name :" + chequedata.CustomerName,
//               colorLabel: colorblack54,
//               labelFontWeight: fontWeightnormal),
//           textDialogueAction(
//               textLabelName: "Amount :" + chequedata.Amount.toString(),
//               colorLabel: colorblack54,
//               labelFontWeight: fontWeightnormal),
//           RichText(
//             text: TextSpan(
//               text: "Cheque No :",
//               style: textSpanStyleColorBlack(),
//               children: <TextSpan>[
//                 TextSpan(
//                   text: chequedata.chequeno,
//                   style: textSpanTextStyleBlack54(),
//                 ),
//               ],
//             ),
//           ),
//           RichText(
//             text: TextSpan(
//               text: "Received Date:",
//               style: textSpanStyleColorBlack(),
//               children: <TextSpan>[
//                 TextSpan(
//                   text: chequedata.chqSubmiteDate.toString(),
//                   style: textSpanTextStyleBlack54(),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

// }
// ignore_for_file: prefer_adjacent_string_concatenation, must_be_immutable, unused_local_variable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/cheque_dialogue_content.dart';

import '../../../../application/cheque_recouncilation/cheque_recouncilation_bloc.dart';
import '../../../../generated/l10n.dart';

class Dailogue {
  Color kcolorblack54 = Colors.black54;
  Color kcolorblack = Colors.black;
  FontWeight kfontWeightnormal = FontWeight.normal;
  Color kcolorblue = Colors.blue;

//-----------------------

//------------------span style color-black54----------------
  // TextStyle textSpanTextStyleBlack54({
  //   Color colorblack54 = Colors.black54,
  //   FontWeight fontWeightnormal = FontWeight.normal,
  // }) {
  //   return TextStyle(
  //     color: colorblack54,
  //     fontWeight: fontWeightnormal,
  //   );
  // }

//------------------span style color-black------------------
  // TextStyle textSpanStyleColorBlack({
  //   Color colorblack = Colors.black,
  //   FontWeight fontWeightnormal = FontWeight.normal,
  // }) {
  //   return TextStyle(color: colorblack, fontWeight: fontWeightnormal);
  // }

  dialogueContainer(dynamic e, BuildContext context) {
    final delegate = S.of(context);
    return BlocBuilder<ChequeRecouncilationBloc, ChequeRecouncilationState>(
      builder: (context, state) {
        log(state.clearDate.toString());
        return SizedBox(
          width: 300,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Chequedailoguecontent(
                label: const Text("Employee code ",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                value: Text(e.employeeCode.toString()),
              ),
              kHeight5,
              Chequedailoguecontent(
                label: const Text("Customer Name ",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                value: Text(e.customerName),
              ),
              kHeight5,
              Chequedailoguecontent(
                label: const Text("Amount ",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                value: Text('₹ ' + toRupeeFormat(e.amount!)),
              ),
              kHeight5,
              Chequedailoguecontent(
                label: const Text("Cheque No",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                value: Text(e.chequeno),
              ),
              kHeight5,
              Chequedailoguecontent(
                label: const Text("Received Date",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                value: Text(DateFormat("dd-MMM-yyyy").format(e.chqSubmiteDate)),
              ),
              kHeight5,
              Chequedailoguecontent(
                label: const Text("Cheque Sequence ",
                    style: TextStyle(fontWeight: FontWeight.w500)),
                value: Text(e.chequeSeq.toString()),
              ),
              kHeight5,
              Chequedailoguecontent(
                label: const Text(
                  "Clearance Date",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                value: state.clearDate == null
                    ? MaterialButton(
                        onPressed: () async {
                          final pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: e.chqSubmiteDate,
                            lastDate: DateTime.now(),
                          );
                          log("Picked date: $pickedDate");
                          log("Cheque Recocilation clear date event called");
                          if (pickedDate != null) {
                            context.read<ChequeRecouncilationBloc>().add(
                                  ChequeRecouncilationEvent.updateClearDate(
                                    pickedDate,
                                  ),
                                );
                          }
                        },
                        child: const Text(
                          "Select clear date",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : Text(
                        DateFormat("dd-MMM-yyyy").format(state.clearDate!),
                      ),
                // value: Row(
                //   children: [
                //     state.clearDate == null
                //         ? const SizedBox()
                // : Text(
                //     DateFormat("dd-MMM-yyyy").format(state.clearDate!),
                //   ),
                //     IconButton(
                //       icon: const Icon(
                //         Icons.calendar_month,
                //         color: Colors.black,
                //       ),
                //       onPressed: () async {
                //         final pickedDate = await showDatePicker(
                //           context: context,
                //           initialDate: DateTime.now(),
                //           // firstDate: e.chqSubmiteDate,
                //           firstDate:
                //               DateTime.now().subtract(const Duration(days: 10)),
                //           lastDate: DateTime.now(),
                //           // lastDate: DateTime.now().subtract(const Duration(days: 0)),
                //         );
                //         log("Picked date: $pickedDate");
                //         if (pickedDate != null) {
                //           context.read<ChequeRecouncilationBloc>().add(
                //                 ChequeRecouncilationEvent.updateClearDate(
                //                   pickedDate,
                //                 ),
                //               );
                //           log("Cheque Recocilation clear date event calledd");
                //         }
                //       },
                //     ),
                //   ],
                // ),
              ),
            ],
          ),
        );
      },
    );
  }
}
