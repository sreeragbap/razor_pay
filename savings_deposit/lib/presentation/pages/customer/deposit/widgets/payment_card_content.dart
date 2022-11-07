import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/customer_deposit_desktopview.dart';

final ifscController = TextEditingController();
final bankController = TextEditingController();
final chequeController = TextEditingController();
final dateController = TextEditingController();
final chequeDataKey = GlobalKey<FormState>();

class PaymentCardContent extends StatelessWidget {
  String? type;
  PaymentCardContent({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return type == 'online payment'
        ? const ContentBilldesk()
        : const SizedBox();
  }
}

// --------------Cash Card Content--------------- //

class ContentCash extends StatelessWidget {
  const ContentCash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final delegate = S.of(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            delegate.depositCash,
            style: TextStyle(
              fontSize: ismalayalam ? 12 : 15,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

// --------------Cheque Card Content--------------- //

// class ContentCheque extends StatelessWidget {
//   const ContentCheque({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
//     final delegate = S.of(context);
//     dynamic selectedBank;
//     return BlocBuilder<CustomerBloc, CustomerState>(builder: (context, state) {
//       return Form(
//         key: chequeDataKey,
//         child: Padding(
//           padding: const EdgeInsets.all(5),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 delegate.depositCheque,
//                 style: const TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               Row(
//                 children: [
//                   ContentTextfield(
//                     controler: dateController,
//                     hinttext: '(DD-MMM-YYYY)',
//                     textStyle: TextStyle(fontSize: ismalayalam ? 10 : 15),
//                     onChanged: (value) {
//                       context.read<CustomerBloc>().add(
//                           CustomerEvent.updateRealizationDate(
//                               DateTime.parse(value)));
//                     },
//                     onTap: () async {
//                       final depositdate = await showDatePicker(
//                         context: context,
//                         initialDate: DateTime.now(),
//                         firstDate: DateTime.now(),
//                         lastDate: DateTime(2022, 12),
//                       );

//                       if (depositdate != null) {
//                         context.read<CustomerBloc>().add(
//                             CustomerEvent.updateRealizationDate(depositdate));
//                         dateController.text =
//                             DateFormat('dd-MMM-yyyy').format(depositdate);
//                       }
//                     },
//                     autovalidateMode: AutovalidateMode.onUserInteraction,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return delegate.depositEnterTheDate;
//                       }
//                       return null;
//                     },
//                   ),
//                   kWidth10,
//                   Expanded(
//                     child: DropdownButtonFormField<dynamic>(
//                       value: selectedBank,
//                       autovalidateMode: AutovalidateMode.onUserInteraction,
//                       isExpanded: true,
//                       alignment: AlignmentDirectional.bottomEnd,
//                       hint: Text(delegate.depositBranchBank,
//                           // state.subsidiaryBank,
//                           style: TextStyle(fontSize: ismalayalam ? 10 : 15)),
//                       items: state.customerBankDetails!.map((bank) {
//                         return DropdownMenuItem(
//                           onTap: () {
//                             context.read<CustomerBloc>().add(
//                                 CustomerEvent.subsidiaryAccountNumber(
//                                     subsidiaryAccountNumber: bank.accountNo));
//                           },
//                           child: Text(bank.accountName),
//                           value: bank.accountName,
//                         );
//                       }).toList(),
//                       onChanged: (newvalue) {
//                         context.read<CustomerBloc>().add(
//                             CustomerEvent.subsidiaryBank(
//                                 subsidiaryBank: newvalue));
//                       },
//                       validator: (value) {
//                         if (state.subsidiaryBank == 'Branch Bank') {
//                           return delegate.depositPleaseSelectYourBank;
//                         } else {
//                           return null;
//                         }
//                       },
//                     ),
//                   ),
//                 ],
//               ),
//               kHeight10,
//               Row(
//                 children: [
//                   ContentTextfield(
//                     inputFormatters: [
//                       FilteringTextInputFormatter.digitsOnly,
//                       LengthLimitingTextInputFormatter(30)
//                     ],
//                     controler: chequeController,
//                     hinttext: delegate.depositChequeNo,
//                     textStyle: TextStyle(fontSize: ismalayalam ? 10 : 15),
//                     // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//                     // keyboardType: TextInputType.number,
//                     onChanged: (value) {
//                       context
//                           .read<CustomerBloc>()
//                           .add(CustomerEvent.updateChqueNumber(value));
//                     },
//                     autovalidateMode: AutovalidateMode.onUserInteraction,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return delegate.depositEnterTheChequeNumber;
//                       }
//                       return null;
//                     },
//                   ),
//                   kWidth10,
//                   ContentTextfield(
//                     inputFormatters: [
//                       UpperCaseTextFormatter(),
//                       LengthLimitingTextInputFormatter(15),
//                       FilteringTextInputFormatter.allow(RegExp(r"[A-Z0-9]+"))
//                     ],
//                     controler: ifscController,
//                     hinttext: delegate.depositIfscCode,
//                     textStyle: TextStyle(fontSize: ismalayalam ? 10 : 15),
//                     onChanged: (value) {
//                       context
//                           .read<CustomerBloc>()
//                           .add(CustomerEvent.updateIfscCode(value));

//                       context
//                           .read<CustomerBloc>()
//                           .add(const CustomerEvent.fetchIfscCode());
//                     },
//                     autovalidateMode: AutovalidateMode.onUserInteraction,
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return delegate.depositEnterIfscCode;
//                       }
//                       if (!state.isIfscValid) {
//                         return delegate.depositInvalidIfscCode;
//                       }

//                       return null;
//                     },
//                   ),
//                 ],
//               ),
//               kHeight5,
//               ifscController.text.isNotEmpty
//                   ? state.isIfscValid
//                       ? Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             const Icon(Icons.home_work_sharp),
//                             Text(
//                               '${state.ifscCodeDetails!.bankname} , ${state.ifscCodeDetails!.branchname}',
//                             ),
//                           ],
//                         )
//                       : const SizedBox()
//                   : const SizedBox()
//             ],
//           ),
//         ),
//       );
//     });
//   }
// }

// --------------Billdesk Card Content--------------- //

class ContentBilldesk extends StatelessWidget {
  const ContentBilldesk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.customerPaymentDetails![state.paymentCardIndex]
                  .paymentgatewayname,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        );
      },
    );
  }
}

// --------------PayU Card Content--------------- //

class ContentPayU extends StatelessWidget {
  const ContentPayU({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              state.customerPaymentDetails![state.paymentCardIndex]
                  .paymentgatewayname,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        );
      },
    );
  }
}

//-----------------Cheque Content label & textformfields-----------------//
class ContentTextfield extends StatelessWidget {
  final Function(String)? onChanged;
  final String hinttext;
  final TextEditingController? controler;
  final String? Function(String?)? validator;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final Function()? onTap;
  final TextStyle? textStyle;

  const ContentTextfield({
    Key? key,
    required this.hinttext,
    required this.onChanged,
    this.validator,
    this.controler,
    this.autovalidateMode,
    this.inputFormatters,
    this.keyboardType,
    this.onTap,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 60,
        child: TextFormField(
          validator: validator,
          onChanged: onChanged,
          onTap: onTap,
          controller: controler,
          inputFormatters: inputFormatters,
          keyboardType: keyboardType,
          autovalidateMode: autovalidateMode,
          style: const TextStyle(color: Colors.black, fontSize: 20),
          decoration: InputDecoration(
            hintText: hinttext,
            hintStyle: textStyle,
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Color.fromARGB(255, 59, 59, 59))),
          ),
        ),
      ),
    );
  }
}

//----------------------Clear Textformfield values ------------//

clearCustomerChequeData(BuildContext context) {
  ifscController.clear();
  chequeController.clear();
  dateController.clear();
  depositAmountController.clear();
}
