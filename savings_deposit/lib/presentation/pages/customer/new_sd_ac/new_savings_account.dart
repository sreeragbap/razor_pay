// ignore_for_file: avoid_print, prefer_adjacent_string_concatenation, unnecessary_string_interpolations, unnecessary_null_comparison, unused_local_variable

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/pages/customer/new_sd_ac/widgets/newsd_widgets/co_applicant.dart';
import 'package:savings_deposit/presentation/pages/customer/new_sd_ac/widgets/newsd_widgets/nominee.dart';
import 'package:savings_deposit/presentation/pages/customer/payment/payment_functions.dart';
import '../../../../application/customer/customer_bloc.dart';
import '../../../../application/language/language_bloc.dart';
import '../../../../generated/l10n.dart';
import '../../../widgets/sd_card/sd_card.dart';
import '../../../widgets/sd_carousel_slider/sd_carousel_slider.dart';
import '../deposit/widgets/payment_card_content.dart';
import 'widgets/dialog_boxes.dart/confirm_msg.dart';
import 'widgets/scheme_card/scheme_card.dart';

var salesCodeController = TextEditingController();
final amountcontroller = TextEditingController();
final newSdValidationKey = GlobalKey<FormState>();

class NewSavingsDepositAccountPage extends StatelessWidget {
  const NewSavingsDepositAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final delegate = S.of(context);
    context
        .read<CustomerBloc>()
        .add(const CustomerEvent.newSdNomineeRelationListApiCall());

    return Form(
      key: newSdValidationKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: ListView(
        children: [
          //----------------------------------------------------------SchemeCards------------------------------------//
          const SchemeCards(),
          kHeight15,
          Column(
            children: [
              //----------------------------------TaxPayer-------------------------------------//
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BlocBuilder<CustomerBloc, CustomerState>(
                    builder: (context, state) {
                      return TextButton(
                        onPressed: (() {
                          context
                              .read<CustomerBloc>()
                              .add(const CustomerEvent.enableNewSdTaxpayer());
                          print(state.tdsCode);
                        }),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: Neumorphic(
                                  style: const NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.rect(),
                                  ),
                                  child: state.taxPayer
                                      ? Image.asset(
                                          "assets/icons/tick_icon.png",
                                          width: 40,
                                          height: 40,
                                        )
                                      : const SizedBox()),
                            ),
                            kWidth10,
                            Text(
                              "Tax Payer",
                              style: TextStyle(
                                fontSize: ismalayalam ? 11 : 14,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff914686),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  kWidth10,

                  //--------------------------------------------------------Co Applicant-----------------------------------//
                  const NewSdCoApplicant(),
                ],
              ),
              //--------------------------------------------------------Nominee Details-----------------------------------//
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NomineeDetails(),
                ],
              ),
              kHeight20,
              //--------------------------------------------------------amount textformfield-----------------------------------//
              BlocBuilder<CustomerBloc, CustomerState>(
                builder: (context, state) {
                  return Container(
                    padding: const EdgeInsets.all(8.0),
                    height: 48,
                    width: 250,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      onChanged: (value) {
                        context.read<CustomerBloc>().add(
                            CustomerEvent.newSdAmount(
                                newSdAmount: amountcontroller.text));
                      },
                      validator: (value) {
                        if (value!.isEmpty || value == null) {
                          return delegate.NsFieldisempty;
                        } else {
                          final amount = int.parse(value);
                          final maxAmount = state
                                  .availableschemeModel![state.schemeCardIndex]
                                  .maxAmount ??
                              10000000000000000;
                          final minAmount = state
                                  .availableschemeModel![state.schemeCardIndex]
                                  .minimumAmount ??
                              -1;
                          if (amount > maxAmount) {
                            return delegate
                                .NsAmountcantBeGreaterThanMaximumAmount;
                          } else if (amount < minAmount) {
                            return delegate.NsAmountCantBeLessThanMinimumAmount;
                          }

                          return null;
                        }
                      },
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(state
                            .availableschemeModel![0].maxAmount
                            .toString()
                            .length)
                      ],
                      controller: amountcontroller,
                      decoration: InputDecoration(
                        hintText: delegate.NsAmount,
                        hintStyle: GoogleFonts.poppins(
                          fontSize: ismalayalam ? 12 : 14,
                          color: const Color(0xffAFB0B0),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff914686),
                            style: BorderStyle.solid,
                            width: 2,
                          ),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff914686),
                            style: BorderStyle.solid,
                            width: .8,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              //--------------------------------------------------------Radio buttons-----------------------------------//

              BlocBuilder<CustomerBloc, CustomerState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              context.read<CustomerBloc>().add(
                                    const CustomerEvent
                                        .newSdValidateAganeOrEmployee(
                                      newSdsalesCode: '',
                                      agentOrEmployee: "agentid",
                                    ),
                                  );
                              const CustomerEvent.newSdSalescode(
                                newSdsalesCode: "0",
                              );
                              context
                                  .read<CustomerBloc>()
                                  .add(const CustomerEvent.employeeOrAgent(0));
                              salesCodeController.clear();
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Neumorphic(
                                    style: const NeumorphicStyle(
                                      boxShape: NeumorphicBoxShape.rect(),
                                    ),
                                    child: state.employeeOrAgent == 0
                                        ? Image.asset(
                                            "assets/icons/tick_icon.png",
                                            width: 40,
                                            height: 40,
                                          )
                                        : const SizedBox(),
                                  ),
                                ),
                                kWidth10,
                                Text(
                                  delegate.NsRadioNone,
                                  style: TextStyle(
                                    fontSize: ismalayalam ? 11 : 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff914686),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              context
                                  .read<CustomerBloc>()
                                  .add(const CustomerEvent.employeeOrAgent(1));

                              context
                                  .read<CustomerBloc>()
                                  .add(const CustomerEvent.resetSalesCode());
                              salesCodeController.clear();
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Neumorphic(
                                    style: const NeumorphicStyle(
                                      boxShape: NeumorphicBoxShape.rect(),
                                    ),
                                    child: state.employeeOrAgent == 1
                                        ? Image.asset(
                                            "assets/icons/tick_icon.png",
                                            width: 40,
                                            height: 40,
                                          )
                                        : const SizedBox(),
                                  ),
                                ),
                                kWidth10,
                                Text(
                                  delegate.NsRadioAgent,
                                  style: TextStyle(
                                    fontSize: ismalayalam ? 11 : 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff914686),
                                  ),
                                )
                              ],
                            ),
                          ),
                          kWidth30,
                          TextButton(
                            onPressed: () {
                              context
                                  .read<CustomerBloc>()
                                  .add(const CustomerEvent.employeeOrAgent(2));
                              context
                                  .read<CustomerBloc>()
                                  .add(const CustomerEvent.resetSalesCode());
                              salesCodeController.clear();
                            },
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Neumorphic(
                                    style: const NeumorphicStyle(
                                      boxShape: NeumorphicBoxShape.rect(),
                                    ),
                                    child: state.employeeOrAgent == 2
                                        ? Image.asset(
                                            "assets/icons/tick_icon.png",
                                            width: 40,
                                            height: 40,
                                          )
                                        : const SizedBox(),
                                  ),
                                ),
                                kWidth10,
                                Text(
                                  delegate.NsRdioEmployee,
                                  // delegate.NsCoApplicantDetails,
                                  style: TextStyle(
                                    fontSize: ismalayalam ? 11 : 14,
                                    fontWeight: FontWeight.bold,
                                    color: const Color(0xff914686),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                },
              ),
              //------------------------------------------------------- customerOrAgent Textformfield -----------------------------------//
              BlocConsumer<CustomerBloc, CustomerState>(
                listener: (context, state) {
                  String? found;
                  state.validateSalescodeFailureOrSuccess.fold(
                      () {},
                      (either) => either.fold((l) {
                            found = l.map(
                              noEligibleSchemes: (_) => "",
                              postNewsdFailed: (_) => "",
                              customerNotFound: (_) {
                                context.read<CustomerBloc>().add(
                                      const CustomerEvent
                                          .salescodevalidateOrNot(
                                        found: "Customer not found",
                                      ),
                                    );

                                return "Customer not found";
                              },
                              employeeNotFound: (_) {
                                context.read<CustomerBloc>().add(
                                      const CustomerEvent
                                          .salescodevalidateOrNot(
                                        found: "Employee not found",
                                      ),
                                    );

                                return "Employee not found";
                              },
                              clientFailure: (_) =>
                                  delegate.CsFailureClientFailure,
                              serverFailure: (_) =>
                                  delegate.CsFailureServerFailure,
                            );
                          }, (r) {
                            context.read<CustomerBloc>().add(
                                CustomerEvent.salescodevalidateOrNot(
                                    found: r.status));
                          }));
                },
                builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48,
                          width: 250,
                          child: TextFormField(
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              state.employeeOrAgent == 1
                                  ? LengthLimitingTextInputFormatter(10)
                                  : state.employeeOrAgent == 2
                                      ? LengthLimitingTextInputFormatter(6)
                                      : LengthLimitingTextInputFormatter(10)
                            ],
                            readOnly: state.employeeOrAgent == 0 ? true : false,
                            onChanged: (salescode) {
                              if (state.employeeOrAgent == 1) {
                                context.read<CustomerBloc>().add(
                                      CustomerEvent
                                          .newSdValidateAganeOrEmployee(
                                        newSdsalesCode: salescode,
                                        agentOrEmployee: "mobilenumber",
                                      ),
                                    );
                              }
                              if (state.employeeOrAgent == 2) {
                                context.read<CustomerBloc>().add(
                                      CustomerEvent
                                          .newSdValidateAganeOrEmployee(
                                        newSdsalesCode: salescode,
                                        agentOrEmployee: "empcode",
                                      ),
                                    );
                              }
                            },
                            validator: (salescode) {
                              if (state.employeeOrAgent == 1) {
                                if (salescode!.isEmpty || salescode == null) {
                                  return "Enter Mobile number";
                                }
                                if (salescode.length != 10 ||
                                    !RegExp(r'^\d{1,10}$')
                                        .hasMatch(salescode)) {
                                  return "invalid mobile number";
                                }
                                if (salescode.length == agentIdLength ||
                                    RegExp(r'^\d{1,10}$').hasMatch(salescode)) {
                                  return null;
                                }
                              }
                              if (state.employeeOrAgent == 2) {
                                if (salescode!.isEmpty || salescode == null) {
                                  return delegate.NsEnterEmployeeId;
                                }
                                if (salescode.isNotEmpty) {
                                  // if (salescode.length != employeeIdLength ||
                                  //     RegExp(r'^\d{1,6}$')
                                  //         .hasMatch(salescode)) {
                                  //   return delegate.NsInvalidEmployeeId;
                                  // }
                                  if (salescode.length == employeeIdLength ||
                                      RegExp(r'^\d{1,5}$')
                                          .hasMatch(salescode)) {}
                                }
                              }

                              return null;
                            },
                            controller: salesCodeController,
                            decoration: InputDecoration(
                              hintText: delegate.NsSalesCode,
                              hintStyle: GoogleFonts.poppins(
                                fontSize: ismalayalam ? 12 : 14,
                                color: const Color(0xffAFB0B0),
                              ),
                              // suffixIcon: context
                              //                 .read<CustomerBloc>()
                              //                 .state
                              //                 .found ==
                              //             "Employee Id Found" ||
                              //         context
                              //                 .read<CustomerBloc>()
                              //                 .state
                              //                 .found ==
                              //             "AgentId Found"
                              //     ? Image.asset("assets/icons/tick_icon.png")
                              //     : context
                              //                 .read<CustomerBloc>()
                              //                 .state
                              //                 .found ==
                              //             "Sales person not found"
                              //         ? const Icon(
                              //             Icons.search_off,
                              //             color: Colors.red,
                              //           )
                              //         : kHeight5,
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff914686),
                                  style: BorderStyle.solid,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xff914686),
                                  style: BorderStyle.solid,
                                  width: .8,
                                ),
                              ),
                            ),
                          ),
                        ),
                        kHeight5,
                        context.read<CustomerBloc>().state.found ==
                                        "Employee Id Found" &&
                                    salesCodeController.text.length >= 5 ||
                                context.read<CustomerBloc>().state.found ==
                                        "customer found" &&
                                    salesCodeController.text.length >= 10
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Name:",
                                    style: TextStyle(
                                      fontSize: ismalayalam ? 11 : 14,
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff914686),
                                    ),
                                  ),
                                  kWidth5,
                                  Text(
                                    state.employeeOrAgentDataModel!.name,
                                    style: TextStyle(
                                      fontSize: ismalayalam ? 10 : 12,
                                      color: const Color.fromARGB(
                                          255, 222, 21, 21),
                                    ),
                                  )
                                ],
                              )
                            : Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                    state.employeeOrAgent == 1 &&
                                                salesCodeController
                                                        .text.length >=
                                                    10 ||
                                            state.employeeOrAgent == 2 &&
                                                salesCodeController
                                                        .text.length >=
                                                    6
                                        ? Text(
                                            state.found!,
                                            style: TextStyle(
                                              fontSize: ismalayalam ? 10 : 12,
                                              color: const Color.fromARGB(
                                                  255, 222, 21, 21),
                                            ),
                                          )
                                        : const SizedBox()
                                  ]),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
          kHeight15,
          kHeight10,
          BlocBuilder<CustomerBloc, CustomerState>(
            builder: (context, state) {
              return SdCarouselSlider(
                  onPageChanged: (index) {
                    context.read<CustomerBloc>().add(
                        CustomerEvent.paymentCardChanged(
                            paymentCardIndex: index));
                  },
                  items: state.customerPaymentDetails!.map((payment) {
                    return SdCard(
                        color: const Color.fromARGB(255, 4, 50, 87),
                        content: PaymentCardContent(
                          type: payment.paymentgatewayname,
                        ));
                  }).toList());
            },
          ),
          kHeight30,
          BlocBuilder<CustomerBloc, CustomerState>(
            builder: (context, state) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    height: 42,
                    width: 146,
                    child: Neumorphic(
                      child: MaterialButton(
                        onPressed: () {
                          if (newSdValidationKey.currentState!.validate()) {
                            if (state.nomineeACtive ||
                                state.radioButtonActive) {
                              generateOrderId(context, amountcontroller.text);

                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return BlocBuilder<CustomerBloc,
                                        CustomerState>(
                                      builder: (context, state) {
                                        Widget _showWidget = const SizedBox();
                                        if (state.availableSchemesLoading) {
                                          _showWidget = const Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }
                                        // if (state.nomineeACtive != true) {
                                        //   _showWidget = nomineeNotActive(
                                        //       state, context, ismalayalam);
                                        // } else {
                                        state.employeeOrAgent == 0
                                            ? context.read<CustomerBloc>().add(
                                                const CustomerEvent
                                                        .newSdSalescode(
                                                    newSdsalesCode: "0"))
                                            : context.read<CustomerBloc>().add(
                                                CustomerEvent.newSdSalescode(
                                                    newSdsalesCode:
                                                        salesCodeController.text
                                                            .toString()));
                                        _showWidget = const ConfirmMessage();
                                        // }
                                        return _showWidget;
                                      },
                                    );
                                  });
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const AlertDialog(
                                      title: Text(
                                        'Required either co-Applicant or nominee',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                    );
                                  });
                            }

                            /////generate order key , generate order id

                          }
                        },
                        // }
                        child: Text(
                          delegate.NsSubmit,
                          maxLines: 1,
                          style: GoogleFonts.poppins(
                            fontSize: ismalayalam ? 13 : 18,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff914686),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }

  Widget nomineeNotActive(
      CustomerState state, BuildContext context, bool isMalayalam) {
    final delegate = S.of(context);
    Widget _showWidget = const SizedBox();
    if (state.nomineeACtive) {
      _showWidget = const ConfirmMessage();
    } else {
      _showWidget = Dialog(
        child: SizedBox(
          height: state.nomineeACtive ? 600 : 600,
          width: 450,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  delegate.NsWarning,
                  style: GoogleFonts.poppins(
                    fontSize: isMalayalam ? 18 : 22,
                    color: const Color.fromARGB(
                      255,
                      88,
                      3,
                      30,
                    ),
                  ),
                ),
                kHeight20,
                Text(
                  delegate.NsPleaseCompleteTheNomineeDetails,
                  style: GoogleFonts.poppins(
                    fontSize: isMalayalam ? 13 : 18,
                    color: const Color(0xff363636),
                  ),
                  maxLines: 1,
                ),
                kHeight10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NomineeDetails(),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    }
    return _showWidget;
  }
}
