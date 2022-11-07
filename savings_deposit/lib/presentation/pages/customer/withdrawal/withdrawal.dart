// ignore_for_file: avoid_print, unused_local_variable

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jiffy/jiffy.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';

import 'package:savings_deposit/core/colors.dart';
import 'package:intl/intl.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_info/widgets/account_card_content/account_card_content.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/all_cards.dart';
import 'package:savings_deposit/presentation/pages/customer/withdrawal/widgets/submit_dailoguebox.dart';

import 'package:savings_deposit/presentation/widgets/alert_dialogue_action/alert_dialogue_action.dart';

import 'package:savings_deposit/presentation/widgets/sd_card/sd_card.dart';
import 'package:savings_deposit/presentation/widgets/sd_carousel_slider/sd_carousel_slider.dart';

import '../../../../application/language/language_bloc.dart';
import '../../../../generated/l10n.dart';

class Withdrawalpage extends StatelessWidget {
  const Withdrawalpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    String currentdate = DateTime.now().toString().substring(0, 10);
    String? endDate;
    bool? cashcondition;
    List<CustomerOtherBankDataModel> loopingList = [];
    final withdrawAmountController = TextEditingController();
    final withdrawDateController = TextEditingController();
    return ListView(
      children: [
        kHeight10,
        const Center(
          child: Text(
            'Withdrawal',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        // kHeight5,
        BlocConsumer<CustomerBloc, CustomerState>(listener: (context, state) {
          state.withdrawalPostFailureOrSuccess.fold(
              () {},
              (a) => a.fold((l) {
                    l.map(
                      dataNotFount: (_) =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Not Found"),
                        ),
                      ),
                      clientFailure: (_) =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Client Failure"),
                        ),
                      ),
                      serverFailure: (_) =>
                          ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Server Failure"),
                        ),
                      ),
                      dataResponseStatus: (_) {},
                      setteledaccount: (_) {},
                    );
                  }, (_) {
                    print("Success");
                    context.read<CustomerBloc>().add(
                        CustomerEvent.fetchCustomerAccounts(
                            customerId: state.searchResultCustomerID));
                  }));
        }, builder: (context, state) {
          final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;

          if (state.customerAccountsLoading) {
            return const Center(
              child: CircularProgressIndicator(
                color: kPrimaryColor,
              ),
            );
          }

          return SdCarouselSlider(
              onPageChanged: ((index) {
                context.read<CustomerBloc>().add(
                    CustomerEvent.nonSettledAccountcardchanged(
                        nonSettledcardindex: index));
              }),
              items: state.customerActiveAccounts!.map((account) {
                return SdCard(
                  content: AccountCardContent(account: account),
                  color: Colors.red,
                );
                // );
              }).toList());
        }),

        BlocBuilder<CustomerBloc, CustomerState>(builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 335,
                child: Column(
                  children: [
                    TextFormField(
                      controller: withdrawAmountController,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      decoration: InputDecoration(
                        labelText: delegate.withdrawalamount,
                        icon: const Icon(Icons.money),
                      ),
                      autovalidateMode: state.withdrawalAmount == 0.0
                          ? AutovalidateMode.disabled
                          : AutovalidateMode.always,
                      validator: (value) {
                        final cardData = state.customerAccounts;
                        final customercardindexbalance = state
                            .customerActiveAccounts![context
                                .read<CustomerBloc>()
                                .state
                                .nonSettledcardindex]
                            .balance!;

                        double balance = 0;
                        if (value!.isNotEmpty) {
                          balance = double.parse(value);
                        }
                        // if (balance < 100 && balance != 0.0) {
                        //   return delegate.withdrawalminimumamount100;
                        // }
                        if (balance > customercardindexbalance) {
                          return "Insufficient Amount ";
                        }

                        if (customercardindexbalance - balance < 100) {
                          return " A/C Should contain Minimum amount ₹100";
                        }
                        return null;
                      },
                      onChanged: (text) {
                        context.read<CustomerBloc>().add(
                              CustomerEvent.withdrawalUpdated(text),
                            );
                        print(state.withdrawalAmount);
                      },
                    ),
                    TextField(
                      controller:
                          withdrawDateController, //editing controller of this TextField
                      decoration: const InputDecoration(
                          // icon: Icon(Icons.calendar_month),
                          icon: Icon(Icons.calendar_today), //icon of text field
                          labelText: "Select Date" //label text of field
                          ),
                      readOnly:
                          true, //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate:
                              DateTime.now().subtract(const Duration(days: 0)),
                          lastDate: DateTime(2101),
                        );

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                              DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(formattedDate);
                          withdrawDateController.text = formattedDate;
                          context.read<CustomerBloc>().add(
                              CustomerEvent.datepicker(
                                  tradatepicker: withdrawDateController.text));
                        }

                        endDate = withdrawDateController.text;
                      },
                    ),
                    kHeight10,
                    Row(
                      children: [
                        const Text("Standing Instructions"),
                        Transform.scale(
                          scale: 1,
                          child: Switch(
                            value: state.switchbuttondate,
                            onChanged: (value) {
                              print(state.datepicker!);
                              final customercardindexbalance = state
                                  .customerActiveAccounts![context
                                      .read<CustomerBloc>()
                                      .state
                                      .nonSettledcardindex]
                                  .balance!;
                              double withdrawalamount = state.withdrawalAmount;

                              // String currentdate =
                              //     DateTime.now().toString().substring(0, 10);
                              // DateTime currenttime =
                              //     DateTime(now.year, now.month, now.day);
                              print(currentdate);
                              if (state.datepicker != "" &&
                                      state.withdrawalAmount !=
                                          0.0 /*&&
                                  state.datepicker != currentdate*/
                                  ) {
                                context
                                    .read<CustomerBloc>()
                                    .add(CustomerEvent.switchbutton(value));
                              } else {
                                Flushbar(
                                  duration: kDuration2,
                                  flushbarPosition: FlushbarPosition.BOTTOM,
                                  message: delegate
                                      .withdrawalpleasefillrequiredfields,
                                ).show(context);
                              }
                            },
                          ),
                        ),
                        Visibility(
                          visible: state.switchbuttondate,
                          child: SizedBox(
                            height: 42,
                            child: Neumorphic(
                              child: BlocBuilder<CustomerBloc, CustomerState>(
                                builder: (context, state) {
                                  return SizedBox(
                                    width: 140,
                                    child: MaterialButton(
                                      onPressed: () {
                                        // context.read<CustomerBloc>().add(
                                        //     const CustomerEvent
                                        //             .otherBankcardchanged(
                                        //         otherbankindex: 0));
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            title: Center(
                                                child: Text(
                                                    delegate
                                                        .withdrawalStandingInstructions,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold))),
                                            content: BlocConsumer<CustomerBloc,
                                                CustomerState>(
                                              listener: (context, state) {},
                                              builder: (context, state) {
                                                endDate = scheduledDate(
                                                        state.count,
                                                        DateTime.parse(state
                                                            .datepicker
                                                            .toString()),
                                                        state.scheduleMonth,
                                                        state.scheduleWeek)
                                                    .toString();

                                                return SizedBox(
                                                  height: 250,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Text(delegate
                                                              .withdrawalweek),
                                                          Checkbox(
                                                            value: state
                                                                .scheduleWeek,
                                                            onChanged: (value) {
                                                              context
                                                                  .read<
                                                                      CustomerBloc>()
                                                                  .add(CustomerEvent
                                                                      .scheduledWeekCheckbox(
                                                                          value!));
                                                            },
                                                            activeColor:
                                                                Colors.blue,
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          Text(delegate
                                                              .withdrawalmonth),
                                                          Checkbox(
                                                            value: state
                                                                .scheduleMonth,
                                                            onChanged: (value) {
                                                              context
                                                                  .read<
                                                                      CustomerBloc>()
                                                                  .add(CustomerEvent
                                                                      .scheduledMonthcheckbox(
                                                                          value!));
                                                            },
                                                            activeColor:
                                                                Colors.blue,
                                                          ),
                                                        ],
                                                      ),
                                                      kHeight10,
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          FloatingActionButton(
                                                            backgroundColor:
                                                                Colors.white,
                                                            onPressed: () {
                                                              if (state
                                                                      .scheduleWeek ||
                                                                  state
                                                                      .scheduleMonth) {
                                                                context
                                                                    .read<
                                                                        CustomerBloc>()
                                                                    .add(const CustomerEvent
                                                                        .decrementbutton());
                                                              }
                                                            },
                                                            child: const Icon(
                                                              Icons
                                                                  .horizontal_rule,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                          BlocBuilder<
                                                              CustomerBloc,
                                                              CustomerState>(
                                                            builder: (context,
                                                                state) {
                                                              return Text(
                                                                "${state.count}",
                                                                style:
                                                                    const TextStyle(
                                                                        fontSize:
                                                                            30),
                                                              );
                                                            },
                                                          ),
                                                          FloatingActionButton(
                                                            backgroundColor:
                                                                Colors.white,
                                                            onPressed: () {
                                                              if (state
                                                                      .scheduleWeek ||
                                                                  state
                                                                      .scheduleMonth) {
                                                                context
                                                                    .read<
                                                                        CustomerBloc>()
                                                                    .add(const CustomerEvent
                                                                        .incrementbutton());
                                                              }
                                                            },
                                                            child: const Icon(
                                                              Icons.add,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                              withdrawDateController
                                                                  .text
                                                                  .toString()),
                                                          const Text(
                                                            "To",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          Text(endDate
                                                              .toString())
                                                        ],
                                                      ),
                                                      // Text("To $scheduledDate"),
                                                    ],
                                                  ),
                                                );
                                              },
                                            ),
                                            actions: [
                                              AlertDialogueAction(
                                                  leftButtonLabel:
                                                      delegate.withdrawalok,
                                                  rightButtonLabel:
                                                      delegate.withdrawalcancel,
                                                  leftButtononPressed: () {
                                                    // context
                                                    //     .read<CustomerBloc>()
                                                    //     .add(const CustomerEvent
                                                    //         .clearCheckbox());

                                                    Navigator.pop(context);
                                                  },
                                                  rightButtononPressed: () {
                                                    context
                                                        .read<CustomerBloc>()
                                                        .add(const CustomerEvent
                                                            .clearCheckbox());

                                                    Navigator.pop(context);
                                                  }),
                                            ],
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Scheduled",
                                        style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color(0xff914686),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        }),

        kHeight10,
        BlocConsumer<CustomerBloc, CustomerState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.customerOtherBankLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final usertype =
                context.read<LoginBloc>().state.loginDetails!.userType;
            List<CustomerOtherBankDataModel> accountsForCustomer = [];
            accountsForCustomer = state.customerOtherBankAccounts!;

            if (state.switchbuttondate == false) {
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.clearCheckbox());
              endDate = withdrawDateController.text;
            }
            // else if (withdrawAmountController.text.isEmpty &&
            //     withdrawDateController.text.isEmpty) {
            //   state.switchbuttondate == false;
            // }

            if (withdrawDateController.text.isEmpty) {
              // context.read<CustomerBloc>().add(
              //     const CustomerEvent.otherBankcardchanged(otherbankindex: 0));
              loopingList = accountsForCustomer;
            }
            return SdCarouselSlider(
                onPageChanged: ((index) {
                  context.read<CustomerBloc>().add(
                      CustomerEvent.otherBankcardchanged(
                          otherbankindex: index));
                  searchsdid.clear();
                  searchRdNo.clear();
                  goldloanno.clear();
                  context
                      .read<CustomerBloc>()
                      .add(const CustomerEvent.sdsearchclearDatamodel());
                }),
                items: loopingList.isEmpty
                    ? [
                        SdCard(
                            content: const Center(
                                child: Text(
                              "Add Bank Account",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                            color: Colors.black12)
                      ]
                    : loopingList.map((otherBankDetails) {
                        return SdCard(
                            content:
                                AllBankCard(otherBankDetails: otherBankDetails),
                            color: Colors.brown);
                      }).toList());
          },
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              height: 42,
              width: 146,
              child: Neumorphic(
                child: BlocBuilder<CustomerBloc, CustomerState>(
                  builder: (context, state) {
                    return MaterialButton(
                      onPressed: () {
                        print(state.otherbankindex.toString());
                        // final carddatas = statusoncard;
                        const maximiumbalance = 100;
                        if (withdrawAmountController.text.isEmpty) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text(delegate.withdrawalalert),
                                    content: Text(delegate
                                        .withdrawalpleaseentertheamount),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(delegate.withdrawalok)),
                                    ],
                                  ));
                        }
                        //  else if (100 >
                        //     num.parse(withdrawAmountController.text)) {
                        //   showDialog(
                        //       context: context,
                        //       builder: (BuildContext context) => AlertDialog(
                        //             title: Text(delegate.withdrawalalert),
                        //             content: Text(
                        //                 delegate.withdrawalminimumamount100),
                        //             actions: [
                        //               ElevatedButton(
                        //                   onPressed: () {
                        //                     Navigator.pop(context);
                        //                   },
                        //                   child: Text(delegate.withdrawalok))
                        //             ],
                        //           ));
                        // }
                        else if (state
                                    .customerActiveAccounts![
                                        state.nonSettledcardindex]
                                    .balance! -
                                num.parse(withdrawAmountController.text) <
                            maximiumbalance) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text(delegate.withdrawalalert),
                                    content: const Text(
                                        "The account must have minimum ₹100"),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('Ok'))
                                    ],
                                  ));
                        } else if (state
                                .customerActiveAccounts![
                                    state.nonSettledcardindex]
                                .balance! <
                            num.parse(withdrawAmountController.text)) {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                    title: Text(delegate.withdrawalalert),
                                    content: Text(
                                        delegate.withdrawalinsufficientfund),
                                    actions: [
                                      ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('Ok'))
                                    ],
                                  ));
                        } else if (withdrawDateController.text.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Text(delegate.withdrawalalert),
                              content:
                                  Text(delegate.withdrawalpleaseselectdate),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      // context.read<CustomerBloc>().add(CustomerEvent.withdrawalpostmethod(customerId: customerId, depositid: depositid, branchid: branchid, firmid: firmid, amount: amount, transactionMethod: transactionMethod, traDate: traDate))
                                      Navigator.pop(context);
                                    },
                                    child: Text(delegate.withdrawalok)),
                              ],
                            ),
                          );
                        } else if (loopingList.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: Text(delegate.withdrawalalert),
                              content: const Text("Please select valid card"),
                              actions: [
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(delegate.withdrawalok)),
                              ],
                            ),
                          );
                        } else if (loopingList[state.otherbankindex].type ==
                            "SD") {
                          if (searchsdid.text.isEmpty ||
                              state.sdaccountsearchdatas == null ||
                              state.sdaccountsearchdatas!.customerName == "" ||
                              state.sdResponse == "NotFound") {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text(delegate.withdrawalalert),
                                content:
                                    const Text("Please Enter Valid Deposit ID"),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(delegate.withdrawalok)),
                                ],
                              ),
                            );
                          } else if (withdrawAmountController.text.isNotEmpty &&
                              withdrawDateController.text.isNotEmpty) {
                            print(loopingList);
                            submitdailogbox(
                              context,
                              endDate.toString(),
                              loopingList,
                              state.customerActiveAccounts!,
                            );
                          }
                        } else if (loopingList[state.otherbankindex].type ==
                            "RD") {
                          if (searchRdNo.text.isEmpty ||
                              state.rdsearchDatas == null ||
                              state.rdsearchDatas!.customername == "" ||
                              state.sdstatus == "Inavlid RD") {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text(delegate.withdrawalalert),
                                content: const Text("Please Enter Valid RD No"),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(delegate.withdrawalok)),
                                ],
                              ),
                            );
                          } else if (withdrawAmountController.text.isNotEmpty &&
                              withdrawDateController.text.isNotEmpty) {
                            print(loopingList);
                            submitdailogbox(
                              context,
                              endDate.toString(),
                              loopingList,
                              state.customerActiveAccounts!,
                            );
                          }
                        } else if (loopingList[state.otherbankindex].type ==
                            "GOLD_LOAN") {
                          if (goldloanno.text.isEmpty ||
                              state.goldloansearchdatas == null ||
                              state.goldloansearchdatas!.customername == "" ||
                              state.sdstatus ==
                                  "Unable to withdraw to Gold loan") {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text(delegate.withdrawalalert),
                                content: const Text(
                                    "Please Enter Valid Gold Loan No"),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(delegate.withdrawalok)),
                                ],
                              ),
                            );
                          } else if (withdrawAmountController.text.isNotEmpty &&
                              withdrawDateController.text.isNotEmpty) {
                            print(loopingList);
                            submitdailogbox(
                              context,
                              endDate.toString(),
                              loopingList,
                              state.customerActiveAccounts!,
                            );
                          }
                        } else if (withdrawAmountController.text.isNotEmpty &&
                            withdrawDateController.text.isNotEmpty) {
                          print(loopingList);
                          submitdailogbox(
                            context,
                            endDate.toString(),
                            loopingList,
                            state.customerActiveAccounts!,
                          );
                          // withdrawDateController.clear();
                          // withdrawAmountController.clear();
                          // context
                          //     .read<CustomerBloc>()
                          //     .add(const CustomerEvent.switchbutton(false));
                        }
                      },
                      child: Text(
                        delegate.withdrawalsubmit,
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff914686),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  scheduledDate(int count, DateTime startDate, bool month, bool week) {
    int? daysInMonth;
    int totalDays = 0;
    Jiffy? _scheduledDate;
    // int duration = month
    //     ? 31
    //     : week
    //         ? 7
    //         : 0;
    if (month) {
      _scheduledDate = Jiffy(startDate, "yyyy-MM-dd").add(months: count - 1);
    } else if (week) {
      _scheduledDate = Jiffy(startDate, "yyyy-MM-dd").add(weeks: count - 1);
    }
    String? calculatedMonth;
    String? calculatedDate;
    if (_scheduledDate != null) {
      calculatedMonth = _scheduledDate.month.toString().length < 2
          ? "0${_scheduledDate.month}"
          : _scheduledDate.month.toString();

      calculatedDate = _scheduledDate.date.toString().length < 2
          ? "0${_scheduledDate.date}"
          : _scheduledDate.date.toString();
    }
    return _scheduledDate == null
        ? startDate.toString().split(" ").first
        : "${_scheduledDate.year}-$calculatedMonth-$calculatedDate";
  }
}
