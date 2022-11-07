// ignore_for_file: iterable_contains_unrelated_type

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/auth/auth_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/core/constants.dart';

import '../../../../../application/customer/customer_bloc.dart';
import '../../../../widgets/buttons/colored_button.dart';
import '../../../customer/widgets/customer_profile/customer_profile.dart';
import 'customer_search_bar.dart';

String? custName;

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        Widget searchResults = const SizedBox();
        if (state is EmployeePageState) {
          searchResults = BlocBuilder<EmployeeBloc, EmployeeState>(
            builder: (context, state) {
              Widget? _showWidget = const SizedBox();
              if (state.isLoading) {
                _showWidget = const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                _showWidget = FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Center(
                    child: SizedBox(
                      width: 1000,
                      // height: context
                      //             .read<LoginBloc>()
                      //             .state
                      //             .loginDetails!
                      //             .userType ==
                      //         "Employee"
                      //     ? 500
                      //     : 250,
                      child: DataTable(
                        headingRowColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff914686)),
                        columns: const [
                          DataColumn(
                              label: Text('CUSTOMER ID',
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11))),
                          DataColumn(
                              label: Text('CUSTOMER NAME',
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11))),
                          DataColumn(
                              label: Text('CUSTOMER ADDRESS',
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11))),
                          DataColumn(
                              label: Text('PHONE NUMBER 1',
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11))),
                          DataColumn(
                              label: Text('PHONE NUMBER 2',
                                  maxLines: 1,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 11))),
                          DataColumn(
                              label: Text('',
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white))),
                        ],
                        rows: state.customerSearchModel == null
                            ? []
                            : state.customerSearchModel!.map((e) {
                                return DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        e.customerId.toString(),
                                        maxLines: 1,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        e.customerName.toString(),
                                        maxLines: 1,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        e.customerAddress.toString(),
                                        maxLines: 2,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        e.customerPhone1.toString(),
                                        maxLines: 1,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        e.customerPhone2.toString(),
                                        maxLines: 1,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      IconButton(
                                        onPressed: () {
                                          context.read<CustomerBloc>().add(
                                              CustomerEvent
                                                  .searchResultCustomerIdEvent(
                                                      e.customerId!,
                                                      e.customerName!,
                                                      e.firmID!,
                                                      e.branchID!));
                                          // searchResultcustomerId = e.customerId;
                                          context.read<AuthBloc>().add(
                                              const AuthEvent
                                                  .customerPageEvent());
                                          context.read<CustomerBloc>().add(
                                                  CustomerEvent
                                                      .fetchCustomerAccounts(
                                                customerId: e.customerId!,
                                              ));

                                          context
                                              .read<CustomerBloc>()
                                              .add(CustomerEvent
                                                  .fetchCustomerNotifications(
                                                customerId: e.customerId!,
                                              ));
                                          context.read<CustomerBloc>().add(
                                                  CustomerEvent
                                                      .fetchCustomerProfile(
                                                customerId: e.customerId!,
                                              ));
                                          context
                                              .read<CustomerBloc>()
                                              .add(CustomerEvent
                                                  .fetchCustomerScheduledTransactions(
                                                customerId: e.customerId!,
                                              ));
                                          context.read<CustomerBloc>().add(
                                              const CustomerEvent
                                                  .customerAccountInfoPageEvent());
                                          searchController.clear();
                                        },
                                        icon: const Icon(Icons.arrow_forward),
                                        iconSize: 20,
                                        color: const Color(0xff914686),
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
                      ),
                    ),
                  ),
                );
              }

              return _showWidget;
            },
          );
        } else if (state is CustomerPageState) {
          /////////////////////////     Co-Applicant Search /////////////////
          searchResults = BlocBuilder<EmployeeBloc, EmployeeState>(
            builder: (context, state) {
              Widget? _showWidget = const SizedBox();
              if (state.isLoading) {
                _showWidget = const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                _showWidget = FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Center(
                    child: SizedBox(
                      width: 1000,
                      height: context
                                  .read<LoginBloc>()
                                  .state
                                  .loginDetails!
                                  .userType ==
                              "Employee"
                          ? 500
                          : 250,
                      child: DataTable(
                        headingRowColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xff914686)),
                        columns: const [
                          DataColumn(
                              label: Text('CUSTOMER ID',
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white))),
                          DataColumn(
                              label: Text('CUSTOMER NAME',
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white))),
                          DataColumn(
                              label: Text('CUSTOMER ADDRESS',
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white))),
                          DataColumn(
                              label: Text('PHONE NUMBER 1',
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white))),
                          DataColumn(
                              label: Text('PHONE NUMBER 2',
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white))),
                          DataColumn(
                              label: Text('Select',
                                  maxLines: 1,
                                  style: TextStyle(color: Colors.white))),
                        ],
                        rows: state.customerSearchModel == null
                            ? []
                            : state.customerSearchModel!.map((e) {
                                return DataRow(
                                  cells: [
                                    DataCell(
                                      Text(
                                        e.customerId.toString(),
                                        maxLines: 1,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        e.customerName.toString(),
                                        maxLines: 2,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        e.customerAddress.toString(),
                                        maxLines: 2,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        e.customerPhone1.toString(),
                                        maxLines: 1,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      Text(
                                        e.customerPhone2.toString(),
                                        maxLines: 1,
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ),
                                    DataCell(
                                      TextButton(
                                          onPressed: () {
                                            context.read<CustomerBloc>().add(
                                                CustomerEvent
                                                    .fetchCustomerProfile(
                                                        customerId:
                                                            e.customerId!));
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return BlocBuilder<
                                                      EmployeeBloc,
                                                      EmployeeState>(
                                                    builder: (context, state) {
                                                      return Dialog(
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: SizedBox(
                                                            width: 450,
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(9.0),
                                                              child: Column(
                                                                children: [
                                                                  SizedBox(
                                                                    height: 680,
                                                                    child:
                                                                        CustomerProfile(),
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      ColoredButton(
                                                                        press:
                                                                            () {
                                                                          context
                                                                              .read<CustomerBloc>()
                                                                              .add(CustomerEvent.newSdcoApplicantDetails(
                                                                                e.customerName,
                                                                                e.customerId,
                                                                                e.customerAddress,
                                                                                e.customerPhone1,
                                                                                "",
                                                                                e.customerPhone2,
                                                                              ));
                                                                          context
                                                                              .read<CustomerBloc>()
                                                                              .add(
                                                                                CustomerEvent.fetchCustomerProfile(customerId: context.read<CustomerBloc>().state.searchResultCustomerID),
                                                                              );
                                                                          context
                                                                              .read<CustomerBloc>()
                                                                              .add(const CustomerEvent.resetRadioButton());
                                                                          Navigator.pop(
                                                                              context);
                                                                          Navigator.pop(
                                                                              context);

                                                                          searchController
                                                                              .clear();

                                                                          context
                                                                              .read<EmployeeBloc>()
                                                                              .add(const EmployeeEvent.started());
                                                                        },
                                                                        buttonHeight:
                                                                            50,
                                                                        buttonWidth:
                                                                            130,
                                                                        buttonTitle:
                                                                            "Add",
                                                                        borderRadius:
                                                                            10,
                                                                      ),
                                                                      kWidth50,
                                                                      GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          context
                                                                              .read<CustomerBloc>()
                                                                              .add(CustomerEvent.fetchCustomerProfile(customerId: context.read<CustomerBloc>().state.searchResultCustomerID));

                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            SizedBox(
                                                                          height:
                                                                              50,
                                                                          width:
                                                                              130,
                                                                          child:
                                                                              Neumorphic(
                                                                            style:
                                                                                const NeumorphicStyle(shape: NeumorphicShape.concave),
                                                                            child:
                                                                                Center(
                                                                              child: Text(
                                                                                "Cancel",
                                                                                style: GoogleFonts.poppins(fontSize: 14, color: const Color(0xff914686)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                });
                                          },
                                          child: const Icon(Icons.person_add)),
                                    ),
                                  ],
                                );
                              }).toList(),
                      ),
                    ),
                  ),
                );
              }

              return _showWidget;
            },
          );
        }
        return searchResults;
      },
    );
  }
}
