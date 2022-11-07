// ignore_for_file: avoid_print

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_flushbar/flutter_flushbar.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/core/core_functionalities.dart';

import '../../../../../application/language/language_bloc.dart';
import '../../../../../generated/l10n.dart';

final searchController = TextEditingController();

class CustomerSearchBar extends StatelessWidget {
  const CustomerSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (context, state) {
        state.customerSearchFailureOrSucces.fold(() {}, (either) {
          either.fold((failure) {
            Flushbar(
              duration: const Duration(seconds: 1),
              message: failure.map(
                (value) => null,
                panNotFound: (_) => "Pan not found",
                phoneNotFound: (_) => "Phone Number not found",
                documentNotFound: (_) => "Document Number not found",
                customerIdNotFound: (_) => "Customer Id not found",
                customerNameNotFound: (_) => "Customer Name not found",
                clientFailure: (_) => "Network error",
                serverFailure: (_) => "Server error",
              ),
            ).show(context);
          }, (_) {});
        });
      },
      builder: (context, state) {
        final _formkey = GlobalKey<FormState>();
        final delegate = S.of(context);
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        final bool? newSdPage = context.read<CustomerBloc>().state.newSdPage;
        return FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 440,
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  onFieldSubmitted: (value) {
                    searchCustomer(_formkey.currentState!, context, state,
                        searchController);
                  },
                  style: TextStyle(fontSize: newSdPage == true ? 25 : 20),
                  textCapitalization: TextCapitalization.words,
                  //         enabled: state.radioButtonValue == -1 ? false : true,
                  autofocus: true,
                  maxLength: searchBarMaxLength(state.radioButtonValue),
                  inputFormatters: searchBarInputType(state.radioButtonValue),
                  controller: searchController,
                  decoration: InputDecoration(
                    counterText: "",
                    errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    hintText: "Mobile Number",
                    hintStyle: TextStyle(
                      color: newSdPage == true
                          ? Colors.black
                          : const Color(0xffAFB0B0),
                      fontSize: newSdPage == true ? 25 : 14,
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xff6E3372),
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    context.read<EmployeeBloc>().add(
                        EmployeeEvent.searchCustomer(
                            searchController.text.trim(), 'phone', 0));
                    if (value.length == 10) {
                      hideKeyboard(context);
                    }

                    // if (_formkey.currentState!.validate()) {}
                  },
                  validator: (String? value) {
                    if (state.radioButtonValue == 2) {
                      if (value!.isEmpty ||
                          !RegExp(r'^(?:(?:\+|0{0,2})91(\s*[\-]\s*)?|[0]?)?[789]\d{9}$')
                              .hasMatch(value)) {
                        return "Invalid mobile number";
                      }
                    } else if (state.radioButtonValue == 4) {
                      if (value!.length != 16) {
                        return "Invalid Document No, length should be equal to 16";
                      }
                    } else if (state.radioButtonValue == 3) {
                      if (value!.isEmpty ||
                          !RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$')
                              .hasMatch(value)) {
                        return "Invalid pan card number";
                      }
                    } else if (state.radioButtonValue == 1) {
                      if (value!.length != 14) {
                        return "Invalid Customer Id, length should be equal to 14";
                      }
                    } else {
                      if (value!.isEmpty ||
                          !RegExp(r'^[a-zA-Z0-9. ]+$').hasMatch(value)) {
                        //allow upper and lower case alphabets and space
                        return "Invalid Customer Name";
                      } else {
                        return null;
                      }
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 60,
                child: Neumorphic(
                  style: const NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.circle(),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      final bool? newSdPage =
                          context.read<CustomerBloc>().state.newSdPage;

                      if (newSdPage == true) {
                        context.read<EmployeeBloc>().add(
                            EmployeeEvent.searchCustomer(
                                searchController.text.trim(), 'phone', 0));
                        //  hideKeyboard(context);
                      } else {}
                      // if (_formkey.currentState!.validate()) {
                      //   context
                      //       .read<CustomerBloc>()
                      //       .add(CustomerEvent.newSdEmployeeBranchDetails(
                      //         firmId: context
                      //             .read<LoginBloc>()
                      //             .state
                      //             .loginDetails!
                      //             .firmId!,
                      //         branchid: context
                      //             .read<LoginBloc>()
                      //             .state
                      //             .loginDetails!
                      //             .branchId!,
                      //         employeecode: context
                      //             .read<LoginBloc>()
                      //             .state
                      //             .loginDetails!
                      //             .empCode!,
                      //         branchName: context
                      //             .read<LoginBloc>()
                      //             .state
                      //             .loginDetails!
                      //             .branchname!,
                      //       ));
                      //   print(state.searchType);
                      //   print(searchController.text);
                      //   context
                      //       .read<EmployeeBloc>()
                      //       .add(EmployeeEvent.searchCustomer(
                      //         searchController.text.trim(),
                      //         state.searchType,
                      //         state.currentPage,
                      //       ));
                      // }
                    },
                    child: Icon(
                      Icons.search_outlined,
                      color: const Color(0xff914686),
                      size: newSdPage == true ? 40 : 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  searchCustomer(FormState? _currentState, BuildContext _context,
      EmployeeState state, TextEditingController searchController) {
    if (_currentState!.validate()) {
      // _context
      //     .read<CustomerBloc>()
      //     .add(CustomerEvent.newSdEmployeeBranchDetails(
      //       firmId: _context.read<LoginBloc>().state.loginDetails!.firmId!,
      //       branchid: _context.read<LoginBloc>().state.loginDetails!.branchId!,
      //       employeecode:
      //           _context.read<LoginBloc>().state.loginDetails!.empCode!,
      //       branchName:
      //           _context.read<LoginBloc>().state.loginDetails!.branchname!,
      //     ));
      print(state.searchType);
      print(searchController.text);
      _context.read<EmployeeBloc>().add(EmployeeEvent.searchCustomer(
            searchController.text.trim(),
            state.searchType,
            0,
          ));
    }
  }

  searchBarInputType(int radioButtonValue) {
    return radioButtonValue == 1 ||
            radioButtonValue == 2 ||
            radioButtonValue == 4
        ? [FilteringTextInputFormatter.digitsOnly]
        : radioButtonValue == 3
            ? [
                UpperCaseTextFormatter(),
                FilteringTextInputFormatter.allow(RegExp(r"[A-Z0-9]+"))
              ]
            : [
                UpperCaseTextFormatter(),
                FilteringTextInputFormatter.allow(RegExp(r"[A-Z0-9.]+"))
              ];
  }

  int searchBarMaxLength(int radioButtonValue) {
    return radioButtonValue == 1
        ? 14
        : radioButtonValue == 2
            ? 10
            : radioButtonValue == 3
                ? 10
                : radioButtonValue == 4
                    ? 16
                    : 40;
  }
}

void hideKeyboard(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
