import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/language/language_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';
import 'package:savings_deposit/domain/login/models/login_model.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/customer_deposit_desktopview.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/pdfcontent.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';
import 'package:savings_deposit/presentation/widgets/buttons/colored_button.dart';

Future<dynamic> depositConfirmedDailog(BuildContext context, BuildContext ctx,
    List<CustomerAccountsModel> unsettledAccounts) {
  final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
  final delegate = S.of(context);
  String time = DateFormat("hh:mm:ss a").format(DateTime.now());
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        BlocBuilder<CustomerBloc, CustomerState>(
                          builder: (context, state) {
                            return IconButton(
                                onPressed: () async {
                                  PdfCreator().pdfCreation(
                                      transId: state.depositDetails!.transId,
                                      accountNumber: unsettledAccounts[
                                              state.accountCardIndex]
                                          .accountNumber,
                                      type: "Deposit",
                                      branchName: context
                                          .read<LoginBloc>()
                                          .state
                                          .loginDetails!
                                          .branchname,
                                      customerId: context
                                          .read<LoginBloc>()
                                          .state
                                          .loginDetails!
                                          .customerId,
                                      customerName: context
                                          .read<LoginBloc>()
                                          .state
                                          .loginDetails!
                                          .customerName,
                                      date: cdate,
                                      amount: int.parse(state.depositAmount),
                                      transactionType: state
                                          .customerPaymentDetails![
                                              state.paymentCardIndex]
                                          .paymentgatewayname,
                                      time: time,
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
                                          .empName,
                                      chequeNumber: state.chequeNumber,
                                      branchBank: state.subsidiaryBank,
                                      ifscCode: state.depositIfscCode);
                                },
                                icon: const Icon(Icons.share));
                          },
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);

                            // Navigator.pop(ctx);
                          },
                          icon: const Icon(Icons.close),
                        ),
                      ],
                    ),
                    kHeight10,
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: BlocBuilder<CustomerBloc, CustomerState>(
                          builder: (context, state) {
                        LoginDetails _loginDetails =
                            context.read<LoginBloc>().state.loginDetails!;
                        final customerId = _loginDetails.customerId;
                        return SizedBox(
                          height: 500,
                          child: ListView(
                            children: [
                              Column(
                                children: [
                                  Image.asset('assets/icons/tick.png'),
                                  kHeight20,
                                  Center(
                                      child: Text(
                                    delegate.depositDeposited,
                                    style: TextStyle(
                                        fontSize: ismalayalam ? 10 : 20),
                                  )),
                                  kHeight20,
                                  LeftAlignContentRow(
                                    label: Text(
                                      delegate.depositDate,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: ismalayalam ? 11 : 16,
                                        color: const Color.fromARGB(
                                            255, 93, 4, 50),
                                      ),
                                    ),
                                    value: Text(
                                      cdate,
                                      style: GoogleFonts.poppins(
                                          fontSize: ismalayalam ? 12 : 18,
                                          color: Colors.black),
                                    ),
                                  ),
                                  kHeight10,
                                  LeftAlignContentRow(
                                    label: Text(
                                      delegate.depositCustomerId,
                                      style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w500,
                                        fontSize: ismalayalam ? 11 : 16,
                                        color: const Color.fromARGB(
                                            255, 93, 4, 50),
                                      ),
                                    ),
                                    value: Text(
                                      customerId!,
                                      style: GoogleFonts.poppins(
                                          fontSize: ismalayalam ? 12 : 18,
                                          color: Colors.black),
                                    ),
                                  ),
                                  kHeight10,
                                  LeftAlignContentRow(
                                      label: Text(
                                        delegate.depositSdNo,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: ismalayalam ? 11 : 16,
                                          color: const Color.fromARGB(
                                              255, 93, 4, 50),
                                        ),
                                      ),
                                      value: Text(
                                        unsettledAccounts[
                                                state.accountCardIndex]
                                            .accountNumber!,
                                        style: GoogleFonts.poppins(
                                            fontSize: ismalayalam ? 12 : 18,
                                            color: Colors.black),
                                      )),
                                  kHeight10,
                                  LeftAlignContentRow(
                                      label: Text(
                                        delegate.depositTransactionType,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: ismalayalam ? 11 : 16,
                                          color: const Color.fromARGB(
                                              255, 93, 4, 50),
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
                                      )),
                                  kHeight10,
                                  LeftAlignContentRow(
                                      label: Text(
                                        delegate.depositAmount,
                                        style: GoogleFonts.poppins(
                                          fontWeight: FontWeight.w500,
                                          fontSize: ismalayalam ? 11 : 16,
                                          color: const Color.fromARGB(
                                              255, 93, 4, 50),
                                        ),
                                      ),
                                      value: Text(
                                        '₹ ' +
                                            toRupeeFormat(double.parse(
                                                state.depositAmount)),
                                        style: GoogleFonts.poppins(
                                            fontSize: ismalayalam ? 12 : 18,
                                            color: Colors.black),
                                      )),
                                  kHeight10,
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                    kHeight20,
                    Center(
                      child: ColoredButton(
                        press: () {
                          Navigator.pop(context);

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

                          context.read<CustomerBloc>().add(
                              CustomerEvent.fetchCustomerScheduledTransactions(
                                  customerId: _customerId));

                          context
                              .read<EmployeeBloc>()
                              .add(const EmployeeEvent.started());

                          context.read<CustomerBloc>().add(
                              const CustomerEvent.accountCardChanged(
                                  accountCardIndex: 0));
                          context.router.replaceAll([
                            MainRoute(
                                loginDetails: context
                                    .read<LoginBloc>()
                                    .state
                                    .loginDetails),
                          ]);
                        },
                        buttonHeight: 50,
                        buttonWidth: 100,
                        buttonTitle: delegate.depositOk,
                        borderRadius: 10,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
