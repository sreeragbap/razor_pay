import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/domain/calendar/success/success.dart';
import 'package:savings_deposit/domain/customer/models/customer_models.dart';

final searchsdid = TextEditingController();
final goldloanno = TextEditingController();
final searchRdNo = TextEditingController();

// final sdponenumber = TextEditingController();
// CustomerOtherBankDataModel? otherBankDetails;

class AllBankCard extends StatelessWidget {
  CustomerOtherBankDataModel? otherBankDetails;

  AllBankCard({Key? key, this.otherBankDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        // state.sdaccountdetailsFailureorSuccess.fold(() {}, (either) {
        //   either.fold((failure) {
        //     failure.map(
        //         dataNotFount: (_) => "Invalid ID",
        //         clientFailure: (_) => "Client Failure",
        //         serverFailure: (_) => "Server Failure",
        //         dataResponseStatus: (value) {
        //           Flushbar(
        //             message: "Invalid ID",
        //             duration: const Duration(seconds: 1),
        //           ).show(context);
        //           context.read<CustomerBloc>().add(
        //               CustomerEvent.searchsdReponsesStatus(
        //                   sdstatus: value.status));
        //           return;
        //         },
        //         setteledaccount: (value) {
        //           showToast("Settled Account");
        //           // Flushbar(
        //           //   message: "Settled Account",
        //           //   duration: const Duration(seconds: 1),
        //           // ).show(context);
        //           context.read<CustomerBloc>().add(
        //               CustomerEvent.searchsdReponsesStatus(
        //                   sdstatus: value.status));
        //           return;
        //         });
        //   }, (success) {
        //     context.read<CustomerBloc>().add(
        //         const CustomerEvent.searchsdReponsesStatus(sdstatus: "Found"));
        //   });
        // });
      },
      builder: (context, state) {
        return BlocBuilder<CustomerBloc, CustomerState>(
          builder: (context, state) {
            // List<CustomerOtherBankDataModel> otherbankDatamodel = [];
            // otherbankDatamodel = state.customerOtherBankAccounts!
            //     .where((element) => element.type == "bank")
            //     .toList();
            return otherBankDetails!.type == 'Cash'
                ? const Cashcard()
                : otherBankDetails!.type == 'bank'
                    ? Bankcard(otherbankData: otherBankDetails!)
                    : otherBankDetails!.type == 'cheque'
                        ? const Chequecard()
                        : otherBankDetails!.type == 'SD'
                            ? SdsearchAccountCard()
                            : otherBankDetails!.type == 'RD'
                                ? const RecurringDepositcard()
                                : otherBankDetails!.type == 'GOLD_LOAN'
                                    ? const GoldLoanCard()
                                    : const SizedBox();
          },
        );
      },
    );
  }
}

class Cashcard extends StatelessWidget {
  const Cashcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("Cash",
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold));
  }
}

class Bankcard extends StatelessWidget {
  CustomerOtherBankDataModel otherbankData;
  Bankcard({Key? key, required this.otherbankData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 25,
              ),
              kHeight10,
              Text(
                otherbankData.customerBankName!,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              kHeight15,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    otherbankData.accountNumber!,
                    //   accountNumber!,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Flexible(
                    child: Text(otherbankData.ifscCode!,
                        // ifscCode!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      otherbankData.branchName!,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class SdsearchAccountCard extends StatelessWidget {
  SdsearchAccountCard({Key? key}) : super(key: key);
  dynamic valueChoosen;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.sdaccountdetailsFailureorSuccess.fold(() {}, (either) {
          either.fold((failure) {
            failure.map(
                dataNotFount: (_) => "Invalid ID",
                clientFailure: (_) => "Client Failure",
                serverFailure: (_) => "Server Failure",
                dataResponseStatus: (value) {
                  showToast("Invalid ID",
                      context: context,
                      position: StyledToastPosition.center,
                      duration: kDuration2);
                  // Flushbar(
                  //   flushbarPosition: FlushbarPosition.TOP,
                  //   backgroundColor: kbackgroundColor,
                  //   message: "Invalid ID",
                  //   duration: const Duration(seconds: 5),
                  // ).show(context);
                  context.read<CustomerBloc>().add(
                      CustomerEvent.searchsdReponsesStatus(
                          sdstatus: value.status));
                },
                setteledaccount: (value) {
                  showToast("Account Setteled",
                      context: context,
                      position: StyledToastPosition.center,
                      duration: kDuration2);
                  // Flushbar(
                  //   message: "Settled Account",
                  //   duration: const Duration(seconds: 1),
                  // ).show(context);
                  context.read<CustomerBloc>().add(
                      CustomerEvent.searchsdReponsesStatus(
                          sdstatus: value.status));
                  return;
                });
          }, (success) {
            context.read<CustomerBloc>().add(
                const CustomerEvent.searchsdReponsesStatus(sdstatus: "Found"));
          });
        });
      },
      builder: (context, state) {
        final usertype = context.read<LoginBloc>().state.loginDetails!.userType;

        return Form(
            child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("SD Search",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ContentTextfield(
                    controller: searchsdid,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16)
                    ],
                    hinttext: "Enter SD Number",
                    textStyle: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      context
                          .read<CustomerBloc>()
                          .add(CustomerEvent.sdsearchaccountno(value));
                      if (searchsdid.text.length == 16) {
                        context
                            .read<CustomerBloc>()
                            .add(CustomerEvent.searchsdaccountbutton(
                              depositid: searchsdid.text,
                              userType: usertype!,
                            ));
                      } else {
                        context
                            .read<CustomerBloc>()
                            .add(const CustomerEvent.sdsearchclearDatamodel());
                      }

                      // print(state.sdsearchNo);
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                  ),
                  kWidth10,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.person),
                  state.sdstatus == "SD number not found" ||
                          state.sdaccountsearchdatas == null
                      ? const SizedBox()
                      : Text(state.sdaccountsearchdatas!.customerName),
                ],
              ),
              kHeight10,
              Row(
                children: [
                  const Icon(Icons.mobile_friendly),
                  state.sdstatus == "SD number not found" ||
                          state.sdaccountsearchdatas == null
                      // state.sdaccountsearchdatas == null || searchsdid.text.isEmpty
                      ? const SizedBox()
                      : Text(state.sdaccountsearchdatas!.mobileNumber)
                ],
              )
            ],
          ),
        ));
      },
    );
  }
}

class Chequecard extends StatelessWidget {
  const Chequecard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class RecurringDepositcard extends StatelessWidget {
  const RecurringDepositcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.rddetailsFailureorSuccess.fold(() {}, (either) {
          either.fold((failure) {
            failure.map(
              dataNotFount: (_) => "Invalid ID",
              clientFailure: (_) => "Client Failure",
              serverFailure: (_) => "Server Failure",
              dataResponseStatus: (value) {
                showToast("Invalid ID",
                    context: context,
                    position: StyledToastPosition.center,
                    duration: kDuration2);
                // Flushbar(
                //   message: "Invalid ID",
                //   duration: const Duration(seconds: 1),
                // ).show(context);
                context.read<CustomerBloc>().add(
                    CustomerEvent.searchsdReponsesStatus(
                        sdstatus: value.status));
                return;
              },
              setteledaccount: (_) {},
              // setteledaccount: (_) {},
              // setteledaccount: (value) {
              //   Flushbar(
              //     message: "Settled Account",
              //     duration: const Duration(seconds: 1),
              //   ).show(context);
              //   context.read<CustomerBloc>().add(
              //       CustomerEvent.searchsdReponsesStatus(
              //           sdstatus: value.status));
              //   return;
              // }
            );
          }, (success) {
            context.read<CustomerBloc>().add(
                const CustomerEvent.searchsdReponsesStatus(sdstatus: "Found"));
          });
        });
      },
      builder: (context, state) {
        final usertype = context.read<LoginBloc>().state.loginDetails!.userType;
        return Form(
            child: Column(
          children: [
            const Text("RD/VRD",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [
                ContentTextfield(
                    hinttext: "Enter RD Number",
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16)
                    ],
                    controller: searchRdNo,
                    onChanged: (value) {
                      context.read<CustomerBloc>().add(
                          CustomerEvent.sdsearchaccountno(searchRdNo.text));
                      if (searchRdNo.text.length == 16) {
                        context.read<CustomerBloc>().add(
                            CustomerEvent.searchRdNo(
                                depositid: searchRdNo.text,
                                userType: usertype!));
                      } else {
                        context
                            .read<CustomerBloc>()
                            .add(const CustomerEvent.sdsearchclearDatamodel());
                      }
                    })
              ],
            ),
            Row(
              children: [
                const Icon(Icons.person),
                state.sdResponse == "No Payment Gateways" ||
                        state.rdsearchDatas == null
                    ? const SizedBox()
                    : Text(state.rdsearchDatas!.customername),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.account_balance),
                state.sdstatus == "No Payment Gateways" ||
                        state.rdsearchDatas == null
                    ? const SizedBox()
                    : Text(state.rdsearchDatas!.branchId == -1
                        ? ""
                        : state.rdsearchDatas!.branchId.toString() +
                            "-" +
                            state.rdsearchDatas!.branchName),
              ],
            )
          ],
        ));
      },
    );
  }
}

class GoldLoanCard extends StatelessWidget {
  const GoldLoanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomerBloc, CustomerState>(
      listener: (context, state) {
        state.goldLoandetailsFailureorSuccess.fold(() {}, (either) {
          either.fold((failure) {
            failure.map(
              dataNotFount: (_) => "Invalid ID",
              clientFailure: (_) => "Client Failure",
              serverFailure: (_) => "Server Failure",
              dataResponseStatus: (value) {
                showToast("Invalid ID",
                    context: context,
                    position: StyledToastPosition.center,
                    duration: kDuration2);
                // Flushbar(
                //   message: "Invalid ID",
                //   duration: const Duration(seconds: 1),
                // ).show(context);
                context.read<CustomerBloc>().add(
                    CustomerEvent.searchsdReponsesStatus(
                        sdstatus: value.status));
                return;
              },
              setteledaccount: (_) {},
//setteledaccount: (_) {
              //   Flushbar(
              //     message: "Settled Account",
              //     duration: const Duration(seconds: 1),
              //   ).show(context);
              //   context.read<CustomerBloc>().add(
              //       CustomerEvent.searchsdReponsesStatus(
              //           sdstatus: value.status));
              //   return;
              //  }
            );
          }, (success) {
            context.read<CustomerBloc>().add(
                const CustomerEvent.searchsdReponsesStatus(sdstatus: "Found"));
          });
        });
      },
      builder: (context, state) {
        final usertype = context.read<LoginBloc>().state.loginDetails!.userType;

        return Form(
            child: Column(
          children: [
            const Text("Gold Loan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            Row(
              children: [
                ContentTextfield(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16)
                    ],
                    keyboardType: TextInputType.number,
                    hinttext: "Enter Pledge No",
                    controller: goldloanno,
                    onChanged: (value) {
                      context.read<CustomerBloc>().add(
                          CustomerEvent.sdsearchaccountno(goldloanno.text));

                      if (goldloanno.text.length == 16) {
                        context.read<CustomerBloc>().add(
                            CustomerEvent.searchgoldLoanno(
                                pledgeno: goldloanno.text,
                                usertype: usertype!));
                      } else {
                        context
                            .read<CustomerBloc>()
                            .add(const CustomerEvent.sdsearchclearDatamodel());
                      }
                    }),
                // IconButton(
                //     onPressed: () {
                //       context.read<CustomerBloc>().add(
                //           CustomerEvent.searchgoldLoanno(
                //               pledgeno: goldloanno.text, usertype: usertype!));
                //     },
                //     icon: const Icon(Icons.search))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.person),
                state.sdstatus == "Unable to withdraw to Gold loan" ||
                        state.goldloansearchdatas == null
                    ? const SizedBox()
                    : Text(state.goldloansearchdatas!.customername),
              ],
            ),
            kHeight10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(Icons.account_balance),
                state.sdstatus == "Unable to withdraw to Gold loan" ||
                        state.goldloansearchdatas == null
                    ? const SizedBox()
                    : Text(state.goldloansearchdatas!.branchId == -1
                        ? ""
                        : state.goldloansearchdatas!.branchId.toString() +
                            "-" +
                            state.goldloansearchdatas!.branchName),
              ],
            ),
          ],
        ));
      },
    );
  }
}
//===============================================================================================

class ContentTextfield extends StatelessWidget {
  final Function(String)? onChanged;
  final String hinttext;
  final TextEditingController? controller;
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
    this.controller,
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
        height: 50,
        width: 60,
        child: TextFormField(
          validator: validator,
          onChanged: onChanged,
          onTap: onTap,
          controller: controller,
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

clearCustomerCardData(BuildContext context) {
  searchsdid.clear();
  // sdponenumber.clear();
}
