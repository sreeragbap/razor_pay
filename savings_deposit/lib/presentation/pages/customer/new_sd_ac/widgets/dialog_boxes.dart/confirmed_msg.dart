// ignore_for_file: unnecessary_null_comparison

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/customer_deposit_desktopview.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/alert_dailoguebox.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';
import '../../../../../../application/customer/customer_bloc.dart';
import '../../../../../../application/employee/employee_bloc.dart';
import '../../../../../../application/language/language_bloc.dart';
import '../../../../../../application/login/login_bloc.dart';
import '../../../../../../core/constants.dart';
import '../../../../../widgets/buttons/colored_button.dart';
import '../../../../employee/customer_search/customer_search_widgets/customer_search_bar.dart';
import '../../../deposit/widgets/payment_card_content.dart';
import '../../../deposit/widgets/pdfcontent.dart';
import '../../new_savings_account.dart';

class NewSdConfirmedMessage extends StatelessWidget {
  const NewSdConfirmedMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: ((context, state) {
        state.newSdPostFailureOrSuccess.fold(
            () {},
            (a) => a.fold(
                    (l) => l.map(
                        noEligibleSchemes: (_) => "no schemes are there",
                        postNewsdFailed: (_) {
                          context.read<CustomerBloc>().add(
                              const CustomerEvent.newSDResponse(
                                  response: "Failed"));
                        },
                        customerNotFound: (_) => " customer not found",
                        employeeNotFound: (_) => " employee not found",
                        clientFailure: (_) {
                          context.read<CustomerBloc>().add(
                              const CustomerEvent.newSDResponse(
                                  response: "Failed"));
                        },
                        serverFailure: (_) {
                          context.read<CustomerBloc>().add(
                              const CustomerEvent.newSDResponse(
                                  response: "Failed"));
                        }), (r) {
                  context.read<CustomerBloc>().add(
                      const CustomerEvent.newSDResponse(response: "Success"));
                }));
      }),
      builder: (context, state) {
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        Widget _showWidget = const SizedBox();
        if (state.newsdresponseLoading) {
          _showWidget = const Dialog(
            child: SizedBox(
              width: 500,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
        if (state.newsdresponseLoading == false) {
          if (state.newsdResponse != "Failed") {
            _showWidget = Dialog(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () async {
                                  final amount = context
                                      .read<CustomerBloc>()
                                      .state
                                      .newSdamount;
                                  final transactionMethod =
                                      state //transaction method
                                          .customerPaymentDetails![
                                              state.paymentCardIndex]
                                          .paymentgatewayname;
                                  final account = state
                                      .newSdPostResponseDataModel!.depositId;
                                  PdfCreator().pdfCreation(
                                      nomineeName: state.newSdnomineeName,
                                      chequeNumber: state.chequeNumber,
                                      coapplicantRights:
                                          state.coapplicantRightsValue,
                                      coapplicantName:
                                          state.newSdcoApplicantName,
                                      type: "NewSd",
                                      branchName: context
                                          .read<LoginBloc>()
                                          .state
                                          .loginDetails!
                                          .branchname,
                                      customerId: state.searchResultCustomerID,
                                      customerName:
                                          state.searchResultCustomerName,
                                      date: cdate,
                                      time: time,
                                      amount: int.parse(amount),
                                      transactionType: transactionMethod,
                                      accountNumber: account.toString(),
                                      employeeId: context
                                          .read<LoginBloc>()
                                          .state
                                          .loginDetails!
                                          .empCode
                                          .toString(),
                                      employeeName: context
                                          .read<LoginBloc>()
                                          .state
                                          .loginDetails!
                                          .empName);
                                },
                                icon: const Icon(Icons.share)),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.close),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 500,
                          child: ListView(
                            children: [
                              Column(children: [
                                kHeight10,
                                Image.asset('assets/icons/tick.png'),
                                kHeight30,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      "Savings Account Created ",
                                      style: GoogleFonts.poppins(
                                        fontSize: 18,
                                        color: const Color.fromARGB(
                                          255,
                                          88,
                                          3,
                                          30,
                                        ),
                                      ),
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                                kHeight50,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Transaction Type",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    state
                                        .customerPaymentDetails![
                                            state.paymentCardIndex]
                                        .paymentgatewayname,
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Amount ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    "₹" + state.newSdamount,
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                    label: Text(
                                      "Scheme Name ",
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: ismalayalam ? 11 : 16,
                                        color: const Color.fromARGB(
                                            255, 93, 4, 50),
                                      ),
                                    ),
                                    value: state.newSdschemeName != null
                                        ? Text(
                                            "SD",
                                            style: GoogleFonts.poppins(
                                                fontSize: ismalayalam ? 12 : 18,
                                                color: Colors.black),
                                            maxLines: 1,
                                          )
                                        : Text(
                                            "SD",
                                            style: GoogleFonts.poppins(
                                                fontSize: ismalayalam ? 12 : 18,
                                                color: Colors.black),
                                            maxLines: 1,
                                          )),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Interest rate  ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Text(
                                    state.newSdinterest.toString() + "%",
                                    style: GoogleFonts.poppins(
                                        fontSize: ismalayalam ? 12 : 18,
                                        color: Colors.black),
                                    maxLines: 1,
                                  ),
                                ),
                                kHeight10,
                                LeftAlignContentRow(
                                  label: Text(
                                    "Customer Name ",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: ismalayalam ? 11 : 16,
                                      color:
                                          const Color.fromARGB(255, 93, 4, 50),
                                    ),
                                  ),
                                  value: Flexible(
                                    child: Text(
                                      context
                                          .read<LoginBloc>()
                                          .state
                                          .loginDetails!
                                          .customerName
                                          .toString(),
                                      style: GoogleFonts.poppins(
                                          fontSize: ismalayalam ? 12 : 18,
                                          color: Colors.black),
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                                kHeight10,
                                state.radioButtonActive
                                    ? LeftAlignContentRow(
                                        label: Text(
                                          "Co-Applicant Name ",
                                          style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w500,
                                            fontSize: ismalayalam ? 11 : 16,
                                            color: const Color.fromARGB(
                                                255, 93, 4, 50),
                                          ),
                                        ),
                                        value: Flexible(
                                          child: Text(
                                            state.newSdcoApplicantName
                                                .toString(),
                                            style: GoogleFonts.poppins(
                                                fontSize: ismalayalam ? 12 : 18,
                                                color: Colors.black),
                                            maxLines: 1,
                                          ),
                                        ),
                                      )
                                    : kWidth5,
                                kHeight40,
                              ]),
                            ],
                          ),
                        ),
                        kHeight20,
                        ColoredButton(
                          press: () {
                            context.read<CustomerBloc>().add(
                                  const CustomerEvent
                                      .newSdValidateAganeOrEmployee(
                                    newSdsalesCode: '',
                                    agentOrEmployee: "empcode",
                                  ),
                                );
                            context
                                .read<CustomerBloc>()
                                .add(const CustomerEvent.employeeOrAgent(0));
                            clearCustomerChequeData(context);
                            context.read<CustomerBloc>().add(
                                  const CustomerEvent.coApplicantRights(
                                    coApplicantSubType: 0,
                                    coApplicantRights: 'none',
                                    // statusid: 0,
                                  ),
                                );
                            amountcontroller.clear();
                            salesCodeController.clear();
                            if (context
                                    .read<CustomerBloc>()
                                    .state
                                    .nomineeACtive ==
                                true) {
                              context
                                  .read<CustomerBloc>()
                                  .add(const CustomerEvent.nomineeActive());
                            }
                            context.read<CustomerBloc>().add(
                                    const CustomerEvent.newSdcoApplicantDetails(
                                  null,
                                  null,
                                  null,
                                  null,
                                  null,
                                  null,
                                ));

                            context
                                .read<CustomerBloc>()
                                .add(const CustomerEvent.newSdnomineeDetails(
                                  relationWithNominee: "",
                                  nomineePhoneNumber: "",
                                  nomineeParentOrSpouseName: "",
                                  nomineeName: "",
                                  nomineeGuardian: "",
                                  nomineeHouseName: "",
                                  nomineelocation: "",
                                  nomineedob: "",
                                ));
                            context.read<CustomerBloc>().add(const CustomerEvent
                                .customerAccountInfoPageEvent());
                            final _customerId = context
                                .read<LoginBloc>()
                                .state
                                .loginDetails!
                                .customerId!;
                            context.read<CustomerBloc>().add(
                                CustomerEvent.fetchCustomerAccounts(
                                    customerId: _customerId));
                            context.read<CustomerBloc>().add(CustomerEvent
                                .fetchCustomerScheduledTransactions(
                                    customerId: _customerId));

                            context.router.replaceAll([
                              MainRoute(
                                  loginDetails: context
                                      .read<LoginBloc>()
                                      .state
                                      .loginDetails)
                            ]);

                            searchController.clear();

                            context
                                .read<EmployeeBloc>()
                                .add(const EmployeeEvent.started());
                            if (context
                                    .read<CustomerBloc>()
                                    .state
                                    .radioButtonActive ==
                                true) {
                              context
                                  .read<CustomerBloc>()
                                  .add(const CustomerEvent.resetRadioButton());
                            }
                            context.read<CustomerBloc>().add(
                                const CustomerEvent.accountCardChanged(
                                    accountCardIndex: 0));
                            Navigator.pop(context);
                          },
                          buttonHeight: 50,
                          buttonWidth: 100,
                          buttonTitle: "Okey",
                          borderRadius: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            _showWidget = Dialog(
              child: SizedBox(
                height: 560,
                width: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "OOPS !",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.red,
                      ),
                      maxLines: 1,
                    ),
                    kHeight10,
                    Image.network(
                      "https://img.freepik.com/free-vector/stick-figure-person-sad-upset-isolation-vector_566661-1659.jpg?w=2000",
                      height: 190,
                      width: 150,
                    ),
                    kHeight10,
                    const Text(
                      "Something Went Wrong",
                      style: TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 128, 4, 45),
                      ),
                      maxLines: 1,
                    ),
                    kHeight20,
                    const Text(
                      "Please Try again After Some Time",
                      maxLines: 1,
                    ),
                    kHeight10,
                    const Text("OR"),
                    kHeight10,
                    const Text("Contact Help Desk"),
                    kHeight20,
                    ColoredButton(
                      press: () {
                        Navigator.pop(context);
                      },
                      buttonHeight: 50,
                      buttonWidth: 122,
                      buttonTitle: "Go back",
                      borderRadius: 20,
                    )
                  ],
                ),
              ),
            );
          }
        }
        return _showWidget;
      },
    );
  }
}
