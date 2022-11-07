import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';

import '../../../../../../../application/customer/customer_bloc.dart';

class AccountFullInformation extends StatelessWidget {
  CustomerAccountsModel account;
  AccountFullInformation({Key? key, required this.account}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context
        .read<CustomerBloc>()
        .add(const CustomerEvent.newSdNomineeRelationListApiCall());
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.accountMoreInfoLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.accountMoreInfo == null) {
          const Center(
            child: Text("No data"),
          );
        }
        return Dialog(
          child: SizedBox(
            child: Scaffold(
              body: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Savings Account",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: const Color.fromARGB(255, 146, 8, 93),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      kHeight5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Account No: ",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            state.accountMoreInfo!.accountNumber!,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // BlocBuilder<CustomerBloc, CustomerState>(
                  //     builder: (context, state) {
                  //   return
                  Neumorphic(
                    margin: const EdgeInsets.all(15),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          rowContent(
                              "Firm Id", "${state.accountMoreInfo!.firmid}"),
                          kHeight10,
                          rowContent("Branch Id",
                              "${state.accountMoreInfo!.branchid}"),
                          kHeight10,
                          rowContent("Primary customer",
                              '${state.accountMoreInfo!.customerName}'),
                          kHeight10,
                          rowContent("Primary customer Id ",
                              '${state.accountMoreInfo!.customerId}'),
                          //  kHeight10,
                          //  rowContent("Secondary customer", ''),
                          kHeight10,
                          rowContent("Scheme Name",
                              "${state.accountMoreInfo!.accountType}"),
                          kHeight10,
                          rowContent("Scheme Id",
                              '${state.accountMoreInfo!.schemeId}'),
                          kHeight10,
                          rowContent("Interest rate",
                              '${state.accountMoreInfo!.interest}'),
                          kHeight10,
                          rowContent(
                              "A/c Created Date",
                              DateFormat("dd-MMM-yyyy").format(DateTime.parse(
                                  state.accountMoreInfo!.depositDate!))),
                          kHeight10,
                          rowContent("Balance",
                              '₹${toRupeeFormat(state.accountMoreInfo!.balance!)}'),
                          kHeight10,
                          rowContent("Secondary customer Rights",
                              '${state.accountMoreInfo!.coApplicantid ?? 'Nil'}'),
                          kHeight10,
                          rowContent(
                              "Nominee",
                              state.accountMoreInfo!.nominee == 1
                                  ? "Yes"
                                  : "No"),
                        ],
                      ),
                    ),
                  ),
                  // }),
                  // Neumorphic(
                  //   child: SizedBox(
                  //     height: 500,
                  //     width: 350,
                  //     child: Padding(
                  //       padding: const EdgeInsets.all(18.0),
                  //       child: Column(
                  //         mainAxisAlignment: MainAxisAlignment.start,
                  //         crossAxisAlignment: CrossAxisAlignment.center,
                  //         children: [
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.end,
                  //             children: [
                  //               OutlinedButton(
                  //                 onPressed: () {
                  //                   showDialog(
                  //                     context: context,
                  //                     builder: (BuildContext context) {
                  //                       return AddNominee();
                  //                     },
                  //                   );
                  //                 },
                  //                 child: const Text(
                  //                   "Edit",
                  //                   style: TextStyle(
                  //                       color: Colors.pink, fontSize: 18),
                  //                 ),
                  //               )
                  //             ],
                  //           ),
                  //           kHeight10,
                  //           Text(
                  //             "Nominee Details",
                  //             style: GoogleFonts.poppins(
                  //                 fontSize: 20,
                  //                 color: const Color(0xff363636),
                  //                 fontWeight: FontWeight.w600),
                  //           ),
                  //           kHeight30,
                  //           rowContent("Nominee Name", ""),
                  //           kHeight10,
                  //           rowContent(
                  //               "Nominee Rlationship With Applicant", ""),
                  //           kHeight10,
                  //           rowContent("Date of Birth", ''),
                  //           kHeight10,
                  //           rowContent("House Name", ''),
                  //           kHeight10,
                  //           rowContent("Minor", ''),
                  //           kHeight10,
                  //           rowContent("Guardian Name", ''),
                  //           kHeight10,
                  //           rowContent("Parent/Spouse Name", ''),
                  //           kHeight10,
                  //           rowContent("Location", ''),
                  //           kHeight10,
                  //           rowContent("Phone Number", ''),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: 30,
                    width: 100,
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Neumorphic(
                        child: const SizedBox(
                          height: 50,
                          width: 100,
                          child: Center(
                            child: Text("Cancel"),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Row rowContent(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Text(":"),
        kWidth5,
        Flexible(
          child: Text(
            value,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
