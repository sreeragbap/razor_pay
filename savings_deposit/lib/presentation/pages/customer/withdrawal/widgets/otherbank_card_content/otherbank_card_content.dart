// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:savings_deposit/core/constants.dart';
// import 'package:savings_deposit/domain/customer/models/customer_models.dart';

// class OtherAccountCardContent extends StatelessWidget {
//   CustomerOtherBankDataModel otherBankDataModel;

//   OtherAccountCardContent({Key? key, required this.otherBankDataModel})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
//       width: double.infinity,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const CircleAvatar(
//             backgroundColor: Colors.grey,
//             radius: 25,
//           ),
//           kHeight10,
//           Text(
//             otherBankDataModel.customerBankName!,
//             // customerBankName!,
//             // "Rs. ${.balance.toString()}",
//             style: const TextStyle(
//                 fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
//           ),
//           kHeight15,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 otherBankDataModel.accountNumber!,
//                 //   accountNumber!,
//                 style: const TextStyle(
//                     fontSize: 16,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold),
//               ),
//               Flexible(
//                 child: Text(otherBankDataModel.ifscCode!,
//                     // ifscCode!,
//                     overflow: TextOverflow.ellipsis,
//                     style: const TextStyle(
//                       fontSize: 15,
//                       color: Colors.white,
//                     )),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Flexible(
//                 child: Text(
//                   otherBankDataModel.branchName!,
//                   // branchName!,
//                   // account.accountNumber!,
//                   // account[acnumber],
//                   overflow: TextOverflow.ellipsis,
//                   style: const TextStyle(
//                     fontSize: 15,
//                     color: Colors.white,
//                     // account[labelColor],
//                   ),
//                 ),
//               ),
//               // Text(
//               //   "Interest Rate : ${account.intrestRate!.toString()}",
//               //   // account[acnumber],
//               //   style: const TextStyle(
//               //     fontSize: 15,
//               //     color: Colors.white,
//               //     // account[labelColor],
//               //   ),
//               // ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
