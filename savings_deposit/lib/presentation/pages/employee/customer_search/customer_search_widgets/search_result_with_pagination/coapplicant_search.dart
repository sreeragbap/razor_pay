import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/presentation/widgets/alert_show_dialogue/alert_show_dialogue.dart';

import '../../../../../../application/customer/customer_bloc.dart';
import '../../../../../../application/employee/employee_bloc.dart';
import '../../../../../../application/language/language_bloc.dart';
import '../../../../../../core/constants.dart';
import '../../../../../../domain/employee/customer_search/models/customer_search/customer_search_model.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../widgets/buttons/colored_button.dart';
import '../../../../customer/widgets/customer_profile/customer_profile.dart';
import '../customer_search_bar.dart';
import 'center_msg.dart';

class CoApplicantSearch extends StatelessWidget {
  CoApplicantSearch({Key? key}) : super(key: key);
  final _scrollControler = ScrollController();
  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (context, state) {},
      builder: (context, state) {
        final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
        Widget _showWidget = const CenterMessage();
        if (state.isLoading) {
          _showWidget = const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.customerSearchModel == null) {
          _showWidget = const CenterMessage();
        }
        if (state.customerSearchModel != null) {
          _showWidget = buildResult(state, context);
        }
        return _showWidget;
      },
    );
  }

  NotificationListener<Notification> buildResult(
      EmployeeState state, BuildContext context) {
    return NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollEndNotification &&
              _scrollControler.position.extentAfter == 0) {
            context.read<EmployeeBloc>().add(
                  EmployeeEvent.searchCustomerLoading(
                    searchController.text,
                    'phone',
                  ),
                );
          }
          return false;
        },
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return index >= state.customerSearchModel!.length
                ? _buildListLoadItem()
                : _searchResultsItems(
                    state.customerSearchModel![index], context);
          },
          itemCount: _calculateListItemCount(state),
          controller: _scrollControler,
        ));
  }

  int _calculateListItemCount(EmployeeState state) {
    if (state.customerSearchModel != null) {
      return state.customerSearchModel!.length;
    } else {
      return state.customerSearchModel!.length + 1;
    }
  }

  Widget _searchResultsItems(
      CustomerSearchModel searchModel, BuildContext context) {
    final bool? newSdPage = context.read<CustomerBloc>().state.newSdPage;
    dynamic _valueChoosen;
    final delegate = S.of(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Neumorphic(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              searchResultText("Name"),
                              kWidth5,
                              const Text(":"),
                              kWidth5,
                              searchResultText(
                                searchModel.customerName!,
                              ),
                            ],
                          ),
                          kHeight10,
                          Row(
                            children: [
                              const Text(
                                "ID",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              kWidth5,
                              const Text(":"),
                              kWidth5,
                              searchResultText(
                                searchModel.customerId!,
                              ),
                            ],
                          ),
                          kHeight10,
                          Row(
                            children: [
                              const Icon(
                                Icons.phone,
                                size: 14,
                              ),
                              kWidth5,
                              const Text(":"),
                              kWidth5,
                              searchResultText(
                                searchModel.customerPhone1 ??
                                    "Add mobile number",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    kHeight40,
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.other_houses_outlined,
                                size: 14,
                              ),
                              kWidth5,
                              const Text(":"),
                              kWidth5,
                              searchResultText(
                                searchModel.customerAddress ?? "Add Address",
                              ),
                            ],
                          ),
                          kHeight10,
                          Row(
                            children: [
                              const Icon(
                                Icons.account_balance,
                                size: 14,
                              ),
                              kWidth5,
                              const Text(":"),
                              kWidth5,
                              searchResultText(searchModel.branchID.toString()),
                            ],
                          ),
                          kHeight10,
                          Row(
                            children: [
                              const Icon(
                                Icons.phone,
                                size: 14,
                              ),
                              kWidth5,
                              const Text(":"),
                              kWidth5,
                              searchResultText(
                                  searchModel.customerPhone2 ?? ""),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    NeumorphicButton(
                      style: const NeumorphicStyle(
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.circle()),
                      onPressed: () {
                        if (context
                                .read<LoginBloc>()
                                .state
                                .loginDetails!
                                .customerId ==
                            searchModel.customerId) {
                          sdShowDailogue(
                              context: context,
                              dailogue: AlertDialog(
                                content: Container(
                                  padding: const EdgeInsets.all(10),
                                  height: 150,
                                  child: Column(
                                    children: [
                                      const Text(
                                        "You cannot select the same customer as Co-applicant",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      kHeight20,
                                      TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text("Ok"))
                                    ],
                                  ),
                                ),
                              ));
                        } else {
                          context.read<CustomerBloc>().add(
                                const CustomerEvent.coApplicantRights(
                                  coApplicantSubType: 0,
                                  coApplicantRights: 'Select',
                                  // statusid: 0,
                                ),
                              );
                          context.read<CustomerBloc>().add(
                              CustomerEvent.fetchCustomerProfile(
                                  customerId: searchModel.customerId!));
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return selectedCoApplicantView(
                                  context, searchModel, delegate);
                            },
                          );
                        }
                      },
                      child: const Icon(
                        Icons.person_add,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchResultText(String value) {
    return Flexible(
      child: Text(
        value,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(
          fontSize: 10,
        ),
      ),
    );
  }

  Widget _buildListLoadItem() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  selectedCoApplicantView(
      BuildContext context, CustomerSearchModel searchModel, S delegate) {
    dynamic _valueChoosen;
    return Dialog(
      child: Scaffold(
        body: PreferredSize(
          preferredSize: const Size.fromHeight(260.0),
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: CustomerProfile(),
                ),
                Expanded(
                  flex: 1,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Co applicant Operations :",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w700),
                            ),
                            kWidth5,
                            BlocBuilder<CustomerBloc, CustomerState>(
                              builder: (context, state) {
                                int? _statusId;
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: SizedBox(
                                      width: 250,
                                      child: DropdownButton<dynamic>(
                                        // style: const TextStyle(
                                        //     fontSize: 20,
                                        //     fontWeight: FontWeight.w500,
                                        //     color: Colors.black),
                                        value: _valueChoosen,
                                        hint: Text(
                                          context
                                              .read<CustomerBloc>()
                                              .state
                                              .coapplicantRightsValue,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        isExpanded: true,
                                        alignment:
                                            AlignmentDirectional.bottomEnd,
                                        underline: Container(
                                          height: .8,
                                          color: const Color(0xff914686),
                                        ),
                                        items: state.coApplicantRightsModel!
                                            .map((e) {
                                          return DropdownMenuItem(
                                              value: e.status,
                                              onTap: () {
                                                _statusId = e.statusId;
                                              },
                                              child: Text(e.status));
                                        }).toList(),
                                        onChanged: (val) {
                                          context.read<CustomerBloc>().add(
                                                CustomerEvent.coApplicantRights(
                                                  coApplicantSubType:
                                                      _statusId!,
                                                  coApplicantRights: val,
                                                ),
                                              );
                                        },
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                        kHeight20,
                        Row(
                          children: [
                            ColoredButton(
                              press: () {
                                if (context
                                        .read<CustomerBloc>()
                                        .state
                                        .coapplicantRightsValue ==
                                    "Select") {
                                  sdShowDailogue(
                                      context: context,
                                      dailogue: AlertDialog(
                                        content: SizedBox(
                                          height: 100,
                                          child: Column(
                                            children: [
                                              const Text(
                                                "Select your co-applicant operation !",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              kHeight10,
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text("Ok"))
                                            ],
                                          ),
                                        ),
                                      ));
                                } else {
                                  context.read<CustomerBloc>().add(
                                          CustomerEvent.newSdcoApplicantDetails(
                                        searchModel.customerName,
                                        searchModel.customerId,
                                        searchModel.customerAddress,
                                        searchModel.customerPhone1,
                                        "",
                                        searchModel.customerPhone2,
                                      ));

                                  context.read<CustomerBloc>().add(
                                        CustomerEvent.fetchCustomerProfile(
                                            customerId: context
                                                .read<LoginBloc>()
                                                .state
                                                .loginDetails!
                                                .customerId!),
                                      );
                                  context.read<CustomerBloc>().add(
                                      const CustomerEvent.resetRadioButton());

                                  Navigator.pop(context);
                                  Navigator.pop(context);

                                  searchController.clear();

                                  context
                                      .read<EmployeeBloc>()
                                      .add(const EmployeeEvent.started());
                                }
                              },
                              buttonHeight: 50,
                              buttonWidth: 150,
                              buttonTitle: delegate.CsAdd,
                              borderRadius: 10,
                              fontSize: 20,
                            ),
                            kWidth20,
                            GestureDetector(
                              onTap: () {
                                context.read<CustomerBloc>().add(
                                    CustomerEvent.fetchCustomerProfile(
                                        customerId: context
                                            .read<CustomerBloc>()
                                            .state
                                            .searchResultCustomerID));

                                Navigator.pop(context);
                              },
                              child: SizedBox(
                                height: 50,
                                width: 150,
                                child: Neumorphic(
                                  style: const NeumorphicStyle(
                                      shape: NeumorphicShape.concave),
                                  child: Center(
                                    child: Text(
                                      delegate.CsCancelButton,
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0xff914686)),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
