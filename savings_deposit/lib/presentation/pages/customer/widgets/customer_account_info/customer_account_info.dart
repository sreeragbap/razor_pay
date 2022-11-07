// ignore_for_file: must_be_immutable

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/customer/deposit/widgets/payment_card_content.dart';
import 'package:savings_deposit/presentation/pages/customer/new_sd_ac/new_savings_account.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_info/widgets/account_card_content/account_card_content.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_info/widgets/customer_account_transaction_button/customer_account_transaction_button.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';

import 'package:savings_deposit/presentation/responsive/responsive.dart';
import 'package:savings_deposit/presentation/widgets/alert_dialogue_action/alert_dialogue_action.dart';
import 'package:savings_deposit/presentation/widgets/alert_show_dialogue/alert_show_dialogue.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';
import 'package:savings_deposit/presentation/widgets/dailogue_content/dailogue_content.dart';
import 'package:savings_deposit/presentation/widgets/sd_card/sd_card.dart';
import 'package:savings_deposit/presentation/widgets/sd_carousel_slider/sd_carousel_slider.dart';

import '../../../../../application/language/language_bloc.dart';
import '../../../employee/customer_search/customer_search_widgets/check_box.dart';
import '../../../employee/customer_search/customer_search_widgets/search_result_with_pagination/search_result_pagination.dart';
import 'widgets/account_full_info/account_full_info.dart';

class CustomerAccountInfo extends StatelessWidget {
  CustomerAccountInfo({Key? key}) : super(key: key);
  dynamic valueChoosen;
  final ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final delegate = S.of(context);
    final _loginDetails = context.read<LoginBloc>().state.loginDetails!;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          BlocConsumer<CustomerBloc, CustomerState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state.customerAccountsLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: kPrimaryColor,
                  ),
                );
              }
              return state.customerActiveAccounts!.isEmpty
                  ? SizedBox(
                      height: 200,
                      child: Center(
                        child: Text(
                          delegate.customerAccountInfoNoAccounts,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : SdCarouselSlider(
                      onPageChanged: (index) {
                        context.read<CustomerBloc>().add(
                            CustomerEvent.accountCardChanged(
                                accountCardIndex: index));
                      },
                      items: state.customerActiveAccounts!.map((account) {
                        return InkWell(
                          onTap: () {
                            sdShowDailogue(
                              context: context,
                              dailogue: DailogueContent(
                                title: delegate
                                    .customerAccountInfoSelectYourOption,
                                content: SizedBox(
                                  height: 130,
                                  child: Column(
                                    children: [
                                      kHeight10,
                                      TextButton(
                                        child: Text(delegate
                                            .customerAccountInfoAccountStatement),
                                        onPressed: () {
                                          final customerId = context
                                              .read<LoginBloc>()
                                              .state
                                              .loginDetails!
                                              .customerId;
                                          /////////////calculating date///////////
                                          String _fromDate = DateTime.now()
                                              .subtract(
                                                  const Duration(days: 31))
                                              .toString()
                                              .split(" ")
                                              .first;

                                          String _toDate = DateTime.now()
                                              .add(const Duration(days: 1))
                                              .toString()
                                              .split(" ")
                                              .first;
                                          /////////////////////////////
                                          context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                      .saveCustomerStatementSelectedDate(
                                                  fromDate: "", toDate: ""));
                                          context.read<CustomerBloc>().add(
                                                CustomerEvent
                                                    .statementAccountDetails(
                                                        loginToken:
                                                            state.loginToken,
                                                        customerId: customerId!,
                                                        accountNumber: account
                                                            .accountNumber!,
                                                        fromDate: _fromDate,
                                                        toDate: _toDate),
                                              );

                                          ////////////////////////////////////////
                                          context.read<CustomerBloc>().add(
                                                CustomerEvent
                                                    .statementTransactions(
                                                  loginToken: state.loginToken,
                                                  fromDate: _fromDate,
                                                  toDate: _toDate,
                                                  customerId: customerId,
                                                  accountNumber:
                                                      account.accountNumber!,
                                                ),
                                              );
                                          context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .statementPageEvent());

                                          Navigator.pop(context);
                                        },
                                      ),
                                      // kHeight10,
                                      // account.status == 1
                                      //     ? context
                                      //                 .read<LoginBloc>()
                                      //                 .state
                                      //                 .loginDetails!
                                      //                 .userType ==
                                      //             "Employee"
                                      //         ? TextButton(
                                      //             child: Text(delegate
                                      //                 .customerAccountInfoSettleAccount),
                                      //             onPressed: () {
                                      //               context
                                      //                   .read<CustomerBloc>()
                                      //                   .add(CustomerEvent
                                      //                       .getSettlementDetails(
                                      //                           accountNumber:
                                      //                               account
                                      //                                   .accountNumber!,
                                      //                           customerId: state
                                      //                               .searchResultCustomerID));

                                      //               context
                                      //                   .read<CustomerBloc>()
                                      //                   .add(const CustomerEvent
                                      //                       .settlementPageEvent());

                                      //               context
                                      //                   .read<CustomerBloc>()
                                      //                   .add(const CustomerEvent
                                      //                           .checkboxSelectedCash(
                                      //                       setCheckboxValue:
                                      //                           false));

                                      //               Navigator.pop(context);
                                      //             },
                                      //           )
                                      //         : const SizedBox()
                                      //     : const SizedBox(),
                                      kHeight10,
                                      TextButton(
                                          onPressed: () {
                                            context.read<CustomerBloc>().add(
                                                CustomerEvent
                                                    .fetchAccountMoreInfo(
                                                        depositId: account
                                                            .accountNumber!));
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AccountFullInformation(
                                                    account: account,
                                                  );
                                                });
                                          },
                                          child: const Text("Account Details"))
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: SdCard(
                              color: account.status == 1
                                  ? Colors.red
                                  : Colors.grey,
                              content: AccountCardContent(account: account)),
                        );
                      }).toList());
            },
          ),
          kHeight30,
          Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  kWidth10,
                  CustomerAccountTransactionButton(
                    icon: "assets/icons/addAccount_icon.png",
                    label: delegate.customerAccountInfoNewSDOpening,
                    onPress: () {
                      final _loginDetails =
                          context.read<LoginBloc>().state.loginDetails!;
                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.newSdPageEvent());

                      context.read<CustomerBloc>().add(
                          CustomerEvent.availableSchemes(
                              branchid: context
                                  .read<CustomerBloc>()
                                  .state
                                  .searchResultBranchId
                                  .toString()));

                      context
                          .read<CustomerBloc>()
                          .add(CustomerEvent.fetchPaymentCards(
                              paymentType: _loginDetails.userType == 'Customer'
                                  ? 'Receipt'
                                  : _loginDetails.userType == 'Employee'
                                      ? 'Payment'
                                      : '',
                              userType: _loginDetails.userType!));
                      ////newsd field cleared////
                      amountcontroller.clear();
                      salesCodeController.clear();
                      //////////page event//////////
                      context.read<CustomerBloc>().state.minor
                          ? context
                              .read<CustomerBloc>()
                              .add(const CustomerEvent.nomineeMinor())
                          : kHeight1;
                      context.read<CustomerBloc>().add(
                            const CustomerEvent.newSdValidateAganeOrEmployee(
                              newSdsalesCode: '',
                              agentOrEmployee: "agentid",
                            ),
                          );
                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.employeeOrAgent(0));
                      context.read<CustomerBloc>().add(
                          const CustomerEvent.paymentCardChanged(
                              paymentCardIndex: 0));
                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.newSdPageEvent());
                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.fetchBankDetails());
                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.setDropDownBankToInitial());
                      clearCustomerChequeData(context);
                    },
                  ),
                  kWidth30,
                  // BlocBuilder<CustomerBloc, CustomerState>(
                  //   builder: (context, state) {
                  //     if (state.customerAccountsLoading) {
                  //       return const Center(
                  //         child: CircularProgressIndicator(
                  //           color: kPrimaryColor,
                  //         ),
                  //       );
                  //     }
                  //     if (state.customerActiveAccounts == null) {
                  //       return const SizedBox();
                  //     }
                  //     if (state.customerActiveAccounts!.isEmpty) {
                  //       return const SizedBox();
                  //     }
                  //     return  state.customerAccounts![state.accountCardIndex]
                  //         .status ==
                  //     1
                  // ?
                  BlocBuilder<CustomerBloc, CustomerState>(
                    builder: (context, state) {
                      if (state.customerOtherBankLoading) {
                        return const Center(
                          child: CircularProgressIndicator(
                            color: kPrimaryColor,
                          ),
                        );
                      }
                      return
                          // state.customerOtherBankAccounts!.isEmpty
                          //     ? const SizedBox()
                          //     :
                          CustomerAccountTransactionButton(
                        icon: "assets/icons/fundTransfer_icon.png",
                        label: delegate.customerAccountInfoWithdrawal,
                        onPress: () {
                          final _loginDetails =
                              context.read<LoginBloc>().state.loginDetails!;
                          context.read<CustomerBloc>().add(
                              CustomerEvent.fetchCustomerOtherBankAccounts(
                                  userType: _loginDetails.userType!,
                                  customerId:
                                      _loginDetails.userType == "Customer"
                                          ? context
                                              .read<LoginBloc>()
                                              .state
                                              .loginDetails!
                                              .customerId!
                                          : _loginDetails.userType == "Employee"
                                              ? searchResultcustomerId!
                                              : ""));
                          //////////page event//////////
                          context
                              .read<CustomerBloc>()
                              .add(const CustomerEvent.fundTransferPageEvent());
                          context.read<CustomerBloc>().add(
                              const CustomerEvent.otherBankcardchanged(
                                  otherbankindex: 0));
                          context
                              .read<CustomerBloc>()
                              .add(const CustomerEvent.switchbutton(false));
                          clearCustomerCardData(context);
                          context.read<CustomerBloc>().add(
                              const CustomerEvent.sdsearchclearDatamodel());
                        },
                      );
                    },
                  ),
                  kWidth30,
                  // BlocBuilder<CustomerBloc, CustomerState>(
                  //   builder: (context, state) {

                  //     if (state.customerAccounts == null) {
                  //       return const SizedBox();
                  //     }
                  //     if (state.customerAccounts!.isEmpty) {
                  //       return const SizedBox();
                  //     }
                  //     return state.customerAccounts![state.accountCardIndex]
                  //                 .status ==
                  //             1
                  //         ?
                  CustomerAccountTransactionButton(
                    label: delegate.customerAccountInfoDeposit,
                    icon: "assets/icons/deposit_icon.png",
                    onPress: () {
                      context
                          .read<CustomerBloc>()
                          .add(CustomerEvent.fetchPaymentCards(
                              paymentType: 'Receipt',
                              // _loginDetails.userType == 'Customer'
                              //     ? 'Receipt'
                              //     : _loginDetails.userType ==
                              //             'Employee'
                              //         ? 'Payment'
                              //         : '',
                              userType: _loginDetails.userType!));
                      //////////page event//////////
                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.depositPageEvent());

                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.fetchBankDetails());

                      context.read<CustomerBloc>().add(
                          const CustomerEvent.paymentCardChanged(
                              paymentCardIndex: 0));
                      context.read<CustomerBloc>().add(
                          const CustomerEvent.accountCardChanged(
                              accountCardIndex: 0));
                      context
                          .read<CustomerBloc>()
                          .add(const CustomerEvent.setDropDownBankToInitial());

                      clearCustomerChequeData(context);
                    },
                  ),
                  // : const SizedBox();
                  // },
                  // ),
                ],
              ),
            ),
          ),
          kHeight50,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(delegate.customerAccountInfoScheduledTransactions,
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff363636),
                  )),
              // BlocBuilder<CustomerBloc, CustomerState>(
              //   builder: (context, state) {
              //     return DropdownButton<dynamic>(
              //       value: valueChoosen,
              //       onChanged: (newValue) {
              //         context
              //             .read<CustomerBloc>()
              //             .add(CustomerEvent.dropDownEvent(value: newValue));
              //       },
              //       hint: Text(
              //         state.dropDownLabel!,
              //         // style: TextStyle(color: Colors.black),
              //       ),
              //       items: const [
              //         DropdownMenuItem(
              //           child: Text("Date"),
              //           value: "Date",
              //         ),
              //         DropdownMenuItem(
              //           child: Text("Amount"),
              //           value: "Amount",
              //         )
              //       ],
              //     );
              //   },
              // )
            ],
          ),
          kHeight20,
          BlocConsumer<CustomerBloc, CustomerState>(
            listener: (context, state) {
              state.removeScheduledTransactionFailureOrSuccess.fold(
                  () => null,
                  (a) => a.fold((failure) => null, (success) {
                        print("deleted");
                        context
                                    .read<LoginBloc>()
                                    .state
                                    .loginDetails!
                                    .userType ==
                                "Customer"
                            ? context.read<CustomerBloc>().add(CustomerEvent
                                .fetchCustomerScheduledTransactions(
                                    customerId: context
                                        .read<LoginBloc>()
                                        .state
                                        .loginDetails!
                                        .customerId!))
                            : context.read<CustomerBloc>().add(CustomerEvent
                                .fetchCustomerScheduledTransactions(
                                    customerId: state.searchResultCustomerID));
                      }));
            },
            builder: (context, state) {
              if (state.customerScheduledTRansactionLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: kPrimaryColor,
                  ),
                );
              }
              return SizedBox(
                width: double.infinity,
                height: 230,
                child: state.customerScheduleTransaction!.isEmpty
                    ? Column(
                        children: [
                          Image.asset(
                            "assets/images/empty_box.png",
                            width: 200,
                            height: 200,
                          ),
                          Center(
                            child: Text(
                              delegate
                                  .customerAccountInfoNoScheduledTransactions,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                    : Padding(
                        padding: Responsive.isDesktop(context)
                            ? const EdgeInsets.only(left: 80, right: 80)
                            : const EdgeInsets.all(0),
                        child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) {
                            return const Divider();
                          },
                          controller: scrollController,
                          itemCount: state.customerScheduleTransaction!.length,
                          itemBuilder: (BuildContext context, int index) {
                            final transaction = state
                                .customerScheduleTransaction!.reversed
                                .toList()[index];
                            return ListTile(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Container(
                                        padding: const EdgeInsets.all(15),
                                        height: 500,
                                        child: Neumorphic(
                                          padding: const EdgeInsets.all(30),
                                          child: ListView(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Transaction Details",
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 109, 6, 40)),
                                                  ),
                                                  kHeight20,
                                                  SizedBox(
                                                      height: 300,
                                                      child: ListView(
                                                        children: [
                                                          LeftAlignContentRow(
                                                              label: Text(
                                                                "Transaction Type",
                                                                maxLines: 1,
                                                                style:
                                                                    GoogleFonts
                                                                        .poppins(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      ismalayalam
                                                                          ? 11
                                                                          : 16,
                                                                  color: const Color
                                                                          .fromARGB(
                                                                      255,
                                                                      93,
                                                                      4,
                                                                      50),
                                                                ),
                                                              ),
                                                              value: Text(
                                                                transaction.transactionType ==
                                                                        "D"
                                                                    ? "Debit"
                                                                    : "Credit",
                                                                maxLines: 1,
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        ismalayalam
                                                                            ? 12
                                                                            : 18,
                                                                    color: Colors
                                                                        .black),
                                                              )),
                                                          // Row(
                                                          //   mainAxisAlignment:
                                                          //       MainAxisAlignment
                                                          //           .spaceBetween,
                                                          //   children: [
                                                          //     Text(
                                                          //       "Transaction Type",
                                                          //       maxLines: 1,
                                                          //       style:
                                                          //           GoogleFonts.poppins(
                                                          //         fontSize: 14,
                                                          //         color: const Color(
                                                          //             0xff363636),
                                                          //       ),
                                                          //     ),
                                                          //     Text(
                                                          //       transaction.transactionType ==
                                                          //               "D"
                                                          //           ? "Debit"
                                                          //           : "Credit",
                                                          //       maxLines: 1,
                                                          //     ),
                                                          //   ],
                                                          // ),
                                                          kHeight10,
                                                          LeftAlignContentRow(
                                                            label: Text(
                                                              "Amount",
                                                              maxLines: 1,
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    ismalayalam
                                                                        ? 11
                                                                        : 16,
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    93,
                                                                    4,
                                                                    50),
                                                              ),
                                                            ),
                                                            value: Text(
                                                              toRupeeFormat(
                                                                  transaction
                                                                      .amount!),
                                                              maxLines: 1,
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      ismalayalam
                                                                          ? 12
                                                                          : 18,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          // Row(
                                                          //   mainAxisAlignment:
                                                          //       MainAxisAlignment
                                                          //           .spaceBetween,
                                                          //   children: [
                                                          //     Text(
                                                          //       "Amount",
                                                          //       maxLines: 1,
                                                          //       style: GoogleFonts.poppins(
                                                          //           fontSize: 14,
                                                          //           color: const Color(
                                                          //               0xff363636)),
                                                          //     ),
                                                          //     Text(
                                                          //       toRupeeFormat(
                                                          //           transaction
                                                          //               .amount!),
                                                          //       maxLines: 1,
                                                          //     ),
                                                          //   ],
                                                          // ),
                                                          kHeight10,
                                                          LeftAlignContentRow(
                                                            label: Text(
                                                              "From A/c",
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    ismalayalam
                                                                        ? 11
                                                                        : 16,
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    93,
                                                                    4,
                                                                    50),
                                                              ),
                                                              maxLines: 1,
                                                            ),
                                                            value: Text(
                                                              transaction
                                                                  .fromAccount!,
                                                              maxLines: 1,
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      ismalayalam
                                                                          ? 12
                                                                          : 18,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          // Row(
                                                          //   mainAxisAlignment:
                                                          //       MainAxisAlignment
                                                          //           .spaceBetween,
                                                          //   children: [
                                                          //     Text(
                                                          //       "From A/c",
                                                          //       style: GoogleFonts.poppins(
                                                          //           fontSize: 14,
                                                          //           color: const Color(
                                                          //               0xff363636)),
                                                          //       maxLines: 1,
                                                          //     ),
                                                          //     Text(
                                                          //       transaction.fromAccount!
                                                          //           .replaceRange(
                                                          //               0, 12, "XXXX"),
                                                          //       maxLines: 1,
                                                          //     ),
                                                          //   ],
                                                          // ),
                                                          kHeight10,
                                                          LeftAlignContentRow(
                                                            label: Text(
                                                              "To A/c",
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    ismalayalam
                                                                        ? 11
                                                                        : 16,
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    93,
                                                                    4,
                                                                    50),
                                                              ),
                                                              maxLines: 1,
                                                            ),
                                                            value: Text(
                                                              transaction
                                                                  .toAccount!,
                                                              maxLines: 1,
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      ismalayalam
                                                                          ? 12
                                                                          : 18,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          // Row(
                                                          //   mainAxisAlignment:
                                                          //       MainAxisAlignment
                                                          //           .spaceBetween,
                                                          //   children: [
                                                          //     Text(
                                                          //       "To A/c",
                                                          //       style: GoogleFonts.poppins(
                                                          //           fontSize: 14,
                                                          //           color: const Color(
                                                          //               0xff363636)),
                                                          //       maxLines: 1,
                                                          //     ),
                                                          //     Text(
                                                          //       transaction.toAccount!
                                                          //           .replaceRange(
                                                          //               0, 11, "XXXX"),
                                                          //       maxLines: 1,
                                                          //     ),
                                                          //   ],
                                                          // ),
                                                          kHeight10,
                                                          LeftAlignContentRow(
                                                            label: Text(
                                                              "Date",
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    ismalayalam
                                                                        ? 11
                                                                        : 16,
                                                                color: const Color
                                                                        .fromARGB(
                                                                    255,
                                                                    93,
                                                                    4,
                                                                    50),
                                                              ),
                                                              maxLines: 1,
                                                            ),
                                                            value: Text(
                                                              DateFormat(
                                                                      "dd-MMM-yyyy")
                                                                  .format(DateTime.parse(
                                                                      transaction
                                                                          .date!)),
                                                              style: GoogleFonts.poppins(
                                                                  fontSize:
                                                                      ismalayalam
                                                                          ? 12
                                                                          : 18,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ),
                                                          // Row(
                                                          //   mainAxisAlignment:
                                                          //       MainAxisAlignment
                                                          //           .spaceBetween,
                                                          //   children: [
                                                          //     Text(
                                                          //       "Date",
                                                          //       style: GoogleFonts.poppins(
                                                          //           fontSize: 14,
                                                          //           color: const Color(
                                                          //               0xff363636)),
                                                          //       maxLines: 1,
                                                          //     ),
                                                          //     Text(DateFormat(
                                                          //             "dd-MMMM-yyyy")
                                                          //         .format(
                                                          //             DateTime.parse(
                                                          //                 transaction
                                                          //                     .date!))),
                                                          //   ],
                                                          // ),
                                                        ],
                                                      )),
                                                  kHeight20,
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      "Go back",
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.pink,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },

                                  // DailogueContent(
                                  //   title: transaction.transactionType == "D"
                                  //       ? "Debit"
                                  //       : "Credit",
                                  //   content: Column(
                                  //     crossAxisAlignment:
                                  //         CrossAxisAlignment.start,
                                  //     children: [
                                  //       Text(
                                  //           toRupeeFormat(transaction.amount!)),
                                  //       kHeight10,
                                  //       Text(transaction.accountNumber!
                                  //           .toString()),
                                  //       kHeight10,
                                  //       Text(transaction.date!
                                  //           .toString()
                                  //           .split("T")
                                  //           .first),
                                  //     ],
                                  //   ),
                                  // ),
                                );
                              },
                              leading: CircleAvatar(
                                backgroundColor:
                                    transaction.transactionType == "C"
                                        ? const Color(0XFF772D6F)
                                        : const Color(0XFFC41CA7),
                                child: const Text(
                                  "₹",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    context.read<CustomerBloc>().add(
                                        const CustomerEvent
                                            .negateCheckBoxValue());
                                    sdShowDailogue(
                                        context: context,
                                        dailogue: BlocBuilder<CustomerBloc,
                                            CustomerState>(
                                          builder: (context, state) {
                                            return DailogueContent(
                                              title: "Delete Transaction",
                                              content: SizedBox(
                                                height: 250,
                                                child: Neumorphic(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                          "₹${toRupeeFormat(transaction.amount!)}",
                                                          style:
                                                              const TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20,
                                                          )),
                                                      kHeight10,
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Text(DateFormat(
                                                                  "dd-MMM-yyyy")
                                                              .format(DateTime
                                                                  .parse(transaction
                                                                      .date!)))
                                                        ],
                                                      ),
                                                      kHeight10,
                                                      Text(
                                                          "From A/c  : ${transaction.fromAccount!}"),
                                                      kHeight10,
                                                      transaction.rtId == 0
                                                          ? CustomCheckBox(
                                                              press: () {
                                                                context
                                                                    .read<
                                                                        CustomerBloc>()
                                                                    .add(const CustomerEvent
                                                                        .removeScheduledTransactionforOneDay());
                                                              },
                                                              title:
                                                                  'Cancel this particular transaction',
                                                              tickIcon: state
                                                                      .forOneDay!
                                                                  ? Image.asset(
                                                                      "assets/icons/tick_icon.png")
                                                                  : const SizedBox())
                                                          : const SizedBox(),
                                                      kHeight10,
                                                      transaction.rtId! > 0
                                                          ? Column(
                                                              children: [
                                                                CustomCheckBox(
                                                                    press: () {
                                                                      context
                                                                          .read<
                                                                              CustomerBloc>()
                                                                          .add(const CustomerEvent
                                                                              .removeScheduledTransactionforOneDay());
                                                                    },
                                                                    title:
                                                                        'Cancel this particular \n transaction',
                                                                    tickIcon: state
                                                                            .forOneDay!
                                                                        ? Image.asset(
                                                                            "assets/icons/tick_icon.png")
                                                                        : const SizedBox()),
                                                                kHeight10,
                                                                CustomCheckBox(
                                                                    press: () {
                                                                      context
                                                                          .read<
                                                                              CustomerBloc>()
                                                                          .add(const CustomerEvent
                                                                              .removeScheduledTransactionforEveryMonth());
                                                                    },
                                                                    title:
                                                                        'Cancel this series of \n transactions',
                                                                    tickIcon: state
                                                                            .forEveryMonth!
                                                                        ? Image.asset(
                                                                            "assets/icons/tick_icon.png")
                                                                        : const SizedBox()),
                                                              ],
                                                            )
                                                          : const SizedBox(),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              actions: [
                                                AlertDialogueAction(
                                                  leftButtonLabel: "No",
                                                  rightButtonLabel: "Yes",
                                                  leftButtononPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  rightButtononPressed:
                                                      () async {
                                                    if (state.forEveryMonth! ||
                                                        state.forOneDay!) {
                                                      context
                                                          .read<CustomerBloc>()
                                                          .add(CustomerEvent.removeScheduledTransaction(
                                                              rtId: transaction
                                                                  .rtId!,
                                                              transactionDate:
                                                                  transaction
                                                                      .date!,
                                                              flag: state
                                                                  .removeScheduledTransactionflag!,
                                                              userType: context
                                                                  .read<
                                                                      LoginBloc>()
                                                                  .state
                                                                  .loginDetails!
                                                                  .userType!));
                                                    }

                                                    Navigator.pop(context);
                                                  },
                                                )
                                              ],
                                            );
                                          },
                                        ));
                                  },
                                  icon: const Icon(
                                      Icons.delete_outline_outlined)),
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "Withdrawal",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(DateFormat("dd-MMM-yyyy").format(
                                      DateTime.parse(transaction.date!)))
                                ],
                              ),
                              subtitle: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "A/C : ${transaction.fromAccount!}",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    "₹${toRupeeFormat(transaction.amount!)}",
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
              );
            },
          ),
        ],
      ),
    );
    //   },
    // );
  }
}
