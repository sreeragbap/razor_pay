// ignore_for_file: must_be_immutable, avoid_print, unnecessary_null_comparison, unrelated_type_equality_checks

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/core/core_functionalities.dart';
import 'package:savings_deposit/presentation/widgets/content_row/content_row.dart';

import '../../../../../../application/language/language_bloc.dart';
import '../../../../../../core/colors.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../widgets/buttons/colored_button.dart';
import 'custom_textfield.dart';

class NomineeDetails extends StatelessWidget {
  NomineeDetails({Key? key}) : super(key: key);
  final _nomineeNameController = TextEditingController();
  final _nomineeDobController = TextEditingController();
  final _nomineeHouseNameController = TextEditingController();
  final _nomineeParentOrSpouseController = TextEditingController();
  final _nomineeRelationController = TextEditingController();
  final _nomineeGuardianController = TextEditingController();
  final _nomineePhoneNumberController = TextEditingController();
  final _nomineeLocationController = TextEditingController();
  dynamic _valueChoosen;
  bool minor = false;

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final delegate = S.of(context);
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, state) {
        return TextButton(
          onPressed: () {
            if (context.read<CustomerBloc>().state.minor == true) {
              context
                  .read<CustomerBloc>()
                  .add(const CustomerEvent.nomineeMinor());
            }
            context.read<CustomerBloc>().add(
                const CustomerEvent.relationWithApplicant(
                    relation: "Relation"));
            _nomineeNameController.clear();
            _nomineeDobController.clear();
            _nomineePhoneNumberController.clear();
            _nomineeGuardianController.clear();
            _nomineeRelationController.clear();
            _nomineeHouseNameController.clear();
            _nomineeParentOrSpouseController.clear();
            _nomineeLocationController.clear();
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  Widget _showWidget = const SizedBox();
                  final _formkey = GlobalKey<FormState>();
                  if (state.newSdnomineeName == "") {
                    _showWidget = addNomineeDetails(
                        _formkey, _valueChoosen, context, ismalayalam);
                  } else {
                    _showWidget = displayNomineeDetails(context, ismalayalam);
                  }
                  return _showWidget;
                });
          },
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 20,
                    child: Neumorphic(
                      style: const NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.rect(),
                      ),
                      child: state.nomineeACtive
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
                    delegate.NsNomineeDetails,
                    style: TextStyle(
                      fontSize: ismalayalam ? 11 : 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff914686),
                    ),
                  )
                ],
              ),
              state.newSdnomineeName == ""
                  ? const SizedBox()
                  : Text(
                      state.newSdnomineeName,
                      style: TextStyle(
                        fontSize: ismalayalam ? 10 : 12,
                        color: const Color.fromARGB(255, 222, 21, 21),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }

  Dialog addNomineeDetails(GlobalKey<FormState> _formkey, _valueChoosen,
      BuildContext context, bool isMalayalam) {
    final delegate = S.of(context);
    return Dialog(
      backgroundColor: kbackgroundColor,
      child: SizedBox(
        height: 800,
        width: 450,
        child: ListView(
          children: [
            FittedBox(
              fit: BoxFit.scaleDown,
              child: SizedBox(
                child: Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      kHeight30,
                      Text(
                        delegate.NsNomineeDetails,
                        style: GoogleFonts.poppins(
                          fontSize: isMalayalam ? 19 : 22,
                          color: const Color(0xff363636),
                        ),
                      ),
                      kHeight40,
                      CustomTextFormFled(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                          UpperCaseTextFormatter(),
                        ],
                        formkey: _formkey,
                        title: delegate.NsName,
                        controller: _nomineeNameController,
                        validate: (String? value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            //allow upper and lower case alphabets and space
                            return delegate.NsNameNotCorrect;
                          } else {
                            return null;
                          }
                        },
                      ),
                      kHeight15,
                      BlocBuilder<CustomerBloc, CustomerState>(
                        builder: (context, state) {
                          return SizedBox(
                            width: 320,
                            child: DropdownButton<dynamic>(
                              isExpanded: true,
                              alignment: AlignmentDirectional.bottomEnd,
                              underline: Container(
                                height: .8,
                                color: const Color(0xff914686),
                              ),
                              value: _valueChoosen,
                              hint: Text(state.relationLabel),
                              items: state.nomineeRelationDataModel!.map((e) {
                                return DropdownMenuItem(
                                    value: e.relationName,
                                    onTap: () {
                                      _nomineeRelationController.text =
                                          e.relationName!;
                                    },
                                    child: Text(e.relationName!));
                              }).toList(),
                              onChanged: (newValue) {
                                context.read<CustomerBloc>().add(
                                      CustomerEvent.relationWithApplicant(
                                        relation: newValue,
                                      ),
                                    );
                              },
                            ),
                          );
                        },
                      ),

                      BlocBuilder<CustomerBloc, CustomerState>(
                        builder: (context, state) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 48,
                              width: 320,
                              child: TextFormField(
                                onTap: () async {
                                  final birthdate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime.now(),
                                  );

                                  if (birthdate != null) {
                                    context
                                        .read<CustomerBloc>()
                                        .add(CustomerEvent.newsdNomineeDob(
                                          choosenDate: birthdate,
                                        ));
                                    _nomineeDobController.text =
                                         DateFormat('yyyy-MM-dd')
                                            .format(birthdate);

                                    print(state.age);
                                  }
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return delegate.NsBirthThisfieldCantBeEmpty;
                                  } else {
                                    return null;
                                  }
                                },
                                controller: _nomineeDobController,
                                decoration: InputDecoration(
                                  hintText: delegate.NsDateOfBirth,
                                  hintStyle: GoogleFonts.poppins(
                                    fontSize: isMalayalam ? 12 : 14,
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
                            ),
                          );
                        },
                      ),
                      ////////////---Minor-----////////////////////////////////
                      BlocBuilder<CustomerBloc, CustomerState>(
                        builder: (context, state) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, top: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        if (state.age >= 18) {
                                          context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .nomineeMinor());
                                        }
                                      },
                                      child: SizedBox(
                                        height: 20,
                                        width: 20,
                                        child: Neumorphic(
                                          style: const NeumorphicStyle(
                                            boxShape: NeumorphicBoxShape.rect(),
                                          ),
                                          child: state.minor
                                              ? Image.asset(
                                                  "assets/icons/tick_icon.png",
                                                  width: 40,
                                                  height: 40,
                                                )
                                              : Container(),
                                        ),
                                      ),
                                    ),
                                    kWidth15,
                                    Text(delegate.NsMinor)
                                  ],
                                ),
                              ),
                              kWidth20,
                              SizedBox(
                                width: 240,
                                child: state.minor
                                    ? CustomTextFormFled(
                                        inputFormatters: [
                                          LengthLimitingTextInputFormatter(20),
                                          UpperCaseTextFormatter(),
                                        ],
                                        formkey: _formkey,
                                        title: delegate.NsAppointeeName,
                                        controller: _nomineeGuardianController,
                                        validate: (value) {
                                          if (value!.isEmpty ||
                                              !RegExp(r'^[a-z A-Z]+$')
                                                  .hasMatch(value)) {
                                            //allow upper and lower case alphabets and space
                                            return delegate
                                                .NsEnterAppointeeName;
                                          } else {
                                            return null;
                                          }
                                        },
                                      )
                                    : const SizedBox(),
                              )
                            ],
                          );
                        },
                      ),
                      CustomTextFormFled(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                          UpperCaseTextFormatter(),
                        ],
                        formkey: _formkey,
                        title: delegate.NsParentOrSpouse,
                        controller: _nomineeParentOrSpouseController,
                        validate: (address) {
                          if (address!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(address)) {
                            return delegate.NsEnterParentOrSpouse;
                          } else {
                            return null;
                          }
                        },
                      ),
                      CustomTextFormFled(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                          UpperCaseTextFormatter(),
                        ],
                        formkey: _formkey,
                        title: delegate.NsHouseName,
                        controller: _nomineeHouseNameController,
                        validate: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            //allow upper and lower case alphabets and space
                            return delegate.NsEntertheHouseName;
                          } else {
                            return null;
                          }
                        },
                      ),

                      CustomTextFormFled(
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(20),
                          UpperCaseTextFormatter(),
                        ],
                        formkey: _formkey,
                        title: delegate.NsLocation,
                        controller: _nomineeLocationController,
                        validate: (address) {
                          if (address!.isEmpty ||
                              !RegExp(r'[d{1,5}\s\w.\s(\b\w*\b\s){1,2}\w*]')
                                  .hasMatch(address)) {
                            return delegate.NsEnterLocation;
                          } else {
                            return null;
                          }
                        },
                      ),
                      CustomTextFormFled(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(10)
                        ],
                        formkey: _formkey,
                        title: delegate.NsPhoneNumber,
                        controller: _nomineePhoneNumberController,
                        validate: (phone) {
                          if (phone!.length != mobileNumberLength ||
                              !RegExp(r'^\d{1,10}$').hasMatch(phone)) {
                            return delegate.NsInvalidnumber;
                          } else {
                            return null;
                          }
                        },
                      ),
                      kHeight40,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ColoredButton(
                            press: () {
                              if (_formkey.currentState == null) {
                                return;
                              } else if (_formkey.currentState!.validate()) {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: ListView(
                                        children: [
                                          Column(
                                            children: [
                                              kHeight30,
                                              Text(
                                                delegate
                                                    .NsPleaseConfirmtheDetails,
                                                style: GoogleFonts.poppins(
                                                  fontSize:
                                                      isMalayalam ? 19 : 25,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      const Color(0xff363636),
                                                ),
                                              ),
                                              Container(
                                                padding:
                                                    const EdgeInsets.all(15),
                                                height: 500,
                                                child: ListView(children: [
                                                  LeftAlignContentRow(
                                                    label: Text(
                                                      delegate.NsNomineeName,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 13
                                                            : 16,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 93, 4, 50),
                                                      ),
                                                    ),
                                                    value: Text(
                                                      _nomineeNameController
                                                          .text,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 11
                                                            : 14,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 8, 6, 6),
                                                      ),
                                                    ),
                                                  ),
                                                  LeftAlignContentRow(
                                                    label: Text(
                                                      delegate
                                                          .NsRelationWithApplicant,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 12
                                                            : 16,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 93, 4, 50),
                                                      ),
                                                    ),
                                                    value: Text(
                                                      _nomineeRelationController
                                                          .text,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 11
                                                            : 14,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 8, 6, 6),
                                                      ),
                                                    ),
                                                  ),
                                                  LeftAlignContentRow(
                                                    label: Text(
                                                      delegate.NsDateOfBirth,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 12
                                                            : 16,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 93, 4, 50),
                                                      ),
                                                    ),
                                                    value: Text(
                                                      _nomineeDobController
                                                          .text,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 11
                                                            : 14,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 8, 6, 6),
                                                      ),
                                                    ),
                                                  ),
                                                  kHeight15,
                                                  BlocBuilder<CustomerBloc,
                                                      CustomerState>(
                                                    builder: (context, state) {
                                                      return state.minor
                                                          ? Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                kHeight10,
                                                                LeftAlignContentRow(
                                                                  label: Text(
                                                                    delegate
                                                                        .NsAppointeeName,
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      fontSize:
                                                                          isMalayalam
                                                                              ? 12
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
                                                                    _nomineeGuardianController
                                                                        .text,
                                                                    style: GoogleFonts
                                                                        .poppins(
                                                                      fontSize:
                                                                          isMalayalam
                                                                              ? 11
                                                                              : 14,
                                                                      color: const Color
                                                                              .fromARGB(
                                                                          255,
                                                                          8,
                                                                          6,
                                                                          6),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                          : kHeight5;
                                                    },
                                                  ),
                                                  kHeight15,
                                                  LeftAlignContentRow(
                                                    label: Text(
                                                      delegate.NsParentOrSpouse,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 12
                                                            : 16,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 93, 4, 50),
                                                      ),
                                                    ),
                                                    value: Text(
                                                      _nomineeParentOrSpouseController
                                                          .text,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 11
                                                            : 14,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 8, 6, 6),
                                                      ),
                                                    ),
                                                  ),
                                                  kHeight15,
                                                  LeftAlignContentRow(
                                                    label: Text(
                                                      delegate.NsHouseName,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 12
                                                            : 16,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 93, 4, 50),
                                                      ),
                                                    ),
                                                    value: Text(
                                                      _nomineeHouseNameController
                                                          .text,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 11
                                                            : 14,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 8, 6, 6),
                                                      ),
                                                    ),
                                                  ),
                                                  LeftAlignContentRow(
                                                    label: Text(
                                                      delegate.NsLocation,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 12
                                                            : 16,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 93, 4, 50),
                                                      ),
                                                    ),
                                                    value: Text(
                                                      _nomineeLocationController
                                                          .text,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 11
                                                            : 14,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 8, 6, 6),
                                                      ),
                                                    ),
                                                  ),
                                                  LeftAlignContentRow(
                                                    label: Text(
                                                      delegate.NsPhoneNumber,
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: isMalayalam
                                                            ? 12
                                                            : 16,
                                                        color: const Color
                                                                .fromARGB(
                                                            255, 93, 4, 50),
                                                      ),
                                                    ),
                                                    value: Flexible(
                                                      child: Text(
                                                        _nomineePhoneNumberController
                                                            .text,
                                                        style:
                                                            GoogleFonts.poppins(
                                                          fontSize: isMalayalam
                                                              ? 11
                                                              : 14,
                                                          color: const Color
                                                                  .fromARGB(
                                                              255, 8, 6, 6),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ]),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  ColoredButton(
                                                    press: () {
                                                      context
                                                          .read<CustomerBloc>()
                                                          .add(const CustomerEvent
                                                              .nomineeActive());
                                                      context
                                                          .read<CustomerBloc>()
                                                          .add(CustomerEvent
                                                              .newSdnomineeDetails(
                                                            nomineeName:
                                                                _nomineeNameController
                                                                    .text
                                                                    .toUpperCase(),
                                                            nomineedob:
                                                                _nomineeDobController
                                                                    .text
                                                                    .toUpperCase(),
                                                            nomineePhoneNumber:
                                                                _nomineePhoneNumberController
                                                                    .text
                                                                    .toUpperCase(),
                                                            nomineeGuardian:
                                                                _nomineeGuardianController
                                                                    .text
                                                                    .toUpperCase(),
                                                            relationWithNominee:
                                                                _nomineeRelationController
                                                                    .text
                                                                    .toUpperCase(),
                                                            nomineeHouseName:
                                                                _nomineeHouseNameController
                                                                    .text
                                                                    .toUpperCase(),
                                                            nomineeParentOrSpouseName:
                                                                _nomineeParentOrSpouseController
                                                                    .text
                                                                    .toUpperCase(),
                                                            nomineelocation:
                                                                _nomineeLocationController
                                                                    .text
                                                                    .toUpperCase(),
                                                          ));
                                                      Navigator.pop(context);
                                                      Navigator.pop(context);
                                                      _nomineeNameController
                                                          .clear();
                                                      _nomineeDobController
                                                          .clear();
                                                      _nomineePhoneNumberController
                                                          .clear();
                                                      _nomineeGuardianController
                                                          .clear();
                                                      _nomineeRelationController
                                                          .clear();
                                                      _nomineeHouseNameController
                                                          .clear();
                                                      _nomineeParentOrSpouseController
                                                          .clear();
                                                      _nomineeLocationController
                                                          .clear();
                                                      context
                                                          .read<CustomerBloc>()
                                                          .add(const CustomerEvent
                                                              .nomineeMinor());
                                                      context
                                                          .read<CustomerBloc>()
                                                          .add(const CustomerEvent
                                                                  .relationWithApplicant(
                                                              relation:
                                                                  "Relation"));
                                                    },
                                                    buttonHeight: 45,
                                                    buttonWidth: 98,
                                                    buttonTitle:
                                                        delegate.NsConfirm,
                                                    borderRadius: 10,
                                                  ),
                                                  kWidth50,
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: SizedBox(
                                                      height: 45,
                                                      width: 98,
                                                      child: Neumorphic(
                                                        style: const NeumorphicStyle(
                                                            shape:
                                                                NeumorphicShape
                                                                    .convex),
                                                        child: Center(
                                                          child: Text(
                                                            delegate.NsEdit,
                                                            style: GoogleFonts.poppins(
                                                                fontSize:
                                                                    isMalayalam
                                                                        ? 11
                                                                        : 14,
                                                                color: const Color(
                                                                    0xff914686)),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              } else {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: SizedBox(
                                        height: 200,
                                        width: 350,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              delegate.NsPleasecompletethedata,
                                              style: GoogleFonts.poppins(
                                                fontSize: isMalayalam ? 14 : 18,
                                                color: const Color(0xff363636),
                                              ),
                                            ),
                                            kHeight30,
                                            MaterialButton(
                                              color: const Color(0xff914686),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                delegate.NsOkay,
                                                style: GoogleFonts.poppins(
                                                  fontSize:
                                                      isMalayalam ? 14 : 18,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              }
                            },
                            buttonHeight: 50,
                            buttonWidth: 100,
                            buttonTitle: delegate.NsAdd,
                            borderRadius: 10,
                          ),
                          kWidth50,
                          GestureDetector(
                            onTap: () {
                              context.read<CustomerBloc>().add(
                                    const CustomerEvent.relationWithApplicant(
                                      relation: "Relation",
                                    ),
                                  );
                              context.read<CustomerBloc>().state.minor
                                  ? context
                                      .read<CustomerBloc>()
                                      .add(const CustomerEvent.nomineeMinor())
                                  : _nomineeNameController.clear();
                              _nomineeNameController.clear();
                              _nomineeDobController.clear();
                              _nomineePhoneNumberController.clear();
                              _nomineeGuardianController.clear();
                              _nomineeRelationController.clear();
                              _nomineeHouseNameController.clear();
                              _nomineeParentOrSpouseController.clear();
                              _nomineeLocationController.clear();
                              Navigator.pop(context);
                            },
                            child: SizedBox(
                              height: 45,
                              width: 98,
                              child: Neumorphic(
                                style: const NeumorphicStyle(
                                    shape: NeumorphicShape.convex),
                                child: Center(
                                  child: Text(
                                    delegate.NsCancel,
                                    style: GoogleFonts.poppins(
                                        fontSize: isMalayalam ? 11 : 14,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff914686)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),

                      kHeight40,
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BlocBuilder<CustomerBloc, CustomerState> displayNomineeDetails(
      BuildContext context, bool isMalayalam) {
    final delegate = S.of(context);
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, state) {
        return Dialog(
          child: ListView(
            children: [
              Column(
                children: [
                  kHeight40,
                  Text(
                    'Nominee Details',
                    style: GoogleFonts.poppins(
                      fontSize: isMalayalam ? 20 : 24,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff363636),
                    ),
                  ),
                  Container(
                      height: 500,
                      padding: const EdgeInsets.all(15),
                      child: ListView(
                        children: [
                          LeftAlignContentRow(
                            label: Text(
                              delegate.NsNomineeName,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 12 : 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 93, 4, 50),
                              ),
                            ),
                            value: Text(
                              state.newSdnomineeName,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 11 : 16,
                                color: const Color.fromARGB(255, 8, 6, 6),
                              ),
                            ),
                          ),
                          kHeight10,
                          LeftAlignContentRow(
                            label: Text(
                              delegate.NsRelationWithApplicant,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 12 : 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 93, 4, 50),
                              ),
                            ),
                            value: Text(
                              state.newSdrelationWithNominee,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 11 : 16,
                                color: const Color.fromARGB(255, 8, 6, 6),
                              ),
                            ),
                          ),
                          kHeight10,
                          LeftAlignContentRow(
                            label: Text(
                              delegate.NsDateOfBirth,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 11 : 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 93, 4, 50),
                              ),
                            ),
                            value: Text(
                              state.newSdnomineedob,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 11 : 16,
                                color: const Color.fromARGB(255, 8, 6, 6),
                              ),
                            ),
                          ),
                          kHeight10,
                          BlocBuilder<CustomerBloc, CustomerState>(
                            builder: (context, state) {
                              return state.minor
                                  ? Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        kHeight40,
                                        LeftAlignContentRow(
                                          label: Text(
                                            delegate.NsApplicantName,
                                            style: GoogleFonts.poppins(
                                              fontSize: isMalayalam ? 12 : 16,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 93, 4, 50),
                                            ),
                                          ),
                                          value: Text(
                                            state.newSdnomineeGuardian,
                                            style: GoogleFonts.poppins(
                                              fontSize: isMalayalam ? 11 : 18,
                                              fontWeight: FontWeight.w500,
                                              color: const Color.fromARGB(
                                                  255, 8, 6, 6),
                                            ),
                                          ),
                                        ),
                                        kHeight10,
                                      ],
                                    )
                                  : kHeight5;
                            },
                          ),
                          kHeight10,
                          LeftAlignContentRow(
                            label: Text(
                              delegate.NsHouseName,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 12 : 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 93, 4, 50),
                              ),
                            ),
                            value: Text(
                              state.newSdnomineeHouseName,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: const Color.fromARGB(255, 8, 6, 6),
                              ),
                            ),
                          ),
                          kHeight10,
                          LeftAlignContentRow(
                            label: Text(
                              delegate.NsParentOrSpouse,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 12 : 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 93, 4, 50),
                              ),
                            ),
                            value: Text(
                              state.newSdnomineeSpouseOrParentName,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: const Color.fromARGB(255, 8, 6, 6),
                              ),
                            ),
                          ),
                          kHeight10,
                          LeftAlignContentRow(
                            label: Text(
                              delegate.NsLocation,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 12 : 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 93, 4, 50),
                              ),
                            ),
                            value: Text(
                              state.newSdnomineeLocation,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: const Color.fromARGB(255, 8, 6, 6),
                              ),
                            ),
                          ),
                          kHeight10,
                          LeftAlignContentRow(
                            label: Text(
                              delegate.NsPhoneNumber,
                              style: GoogleFonts.poppins(
                                fontSize: isMalayalam ? 12 : 16,
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 93, 4, 50),
                              ),
                            ),
                            value: Text(
                              state.newSdnomineePhoneNumber,
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: const Color.fromARGB(255, 8, 6, 6),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: 45,
                          width: 98,
                          child: Neumorphic(
                            style: const NeumorphicStyle(
                                shape: NeumorphicShape.convex),
                            child: Center(
                              child: Text(
                                delegate.NsGoback,
                                style: GoogleFonts.poppins(
                                    fontSize: isMalayalam ? 11 : 14,
                                    color: const Color(0xff914686)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      kWidth50,
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          context
                              .read<CustomerBloc>()
                              .add(const CustomerEvent.nomineeActive());
                          context
                              .read<CustomerBloc>()
                              .add(CustomerEvent.newSdnomineeDetails(
                                relationWithNominee:
                                    _nomineeRelationController.text,
                                nomineePhoneNumber:
                                    _nomineePhoneNumberController.text,
                                nomineeParentOrSpouseName:
                                    _nomineeParentOrSpouseController.text,
                                nomineeName: _nomineeNameController.text,
                                nomineeGuardian:
                                    _nomineeGuardianController.text,
                                nomineeHouseName:
                                    _nomineeHouseNameController.text,
                                nomineelocation:
                                    _nomineeLocationController.text,
                                nomineedob: _nomineeDobController.text,
                              ));
                          state.minor
                              ? context
                                  .read<CustomerBloc>()
                                  .add(const CustomerEvent.nomineeMinor())
                              : _nomineeLocationController.clear();
                          context.read<CustomerBloc>().add(
                              const CustomerEvent.relationWithApplicant(
                                  relation: "Relation"));
                        },
                        child: SizedBox(
                          height: 45,
                          width: 98,
                          child: Neumorphic(
                            style: const NeumorphicStyle(
                                shape: NeumorphicShape.convex),
                            child: Center(
                              child: Text(
                                delegate.NsDeleteData,
                                style: GoogleFonts.poppins(
                                    fontSize: isMalayalam ? 11 : 14,
                                    color: const Color(0xff914686)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  kHeight40,
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
