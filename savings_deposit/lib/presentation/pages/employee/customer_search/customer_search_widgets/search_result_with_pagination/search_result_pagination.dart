// ignore_for_file: unnecessary_type_check, unused_local_variable

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/domain/employee/customer_search/models/customer_search/customer_search_model.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';
import '../../../../../../application/auth/auth_bloc.dart';
import '../../../../../../application/customer/customer_bloc.dart';
import '../../../../../../application/employee/employee_bloc.dart';
import '../../../../../../application/language/language_bloc.dart';
import '../customer_search_bar.dart';
import 'center_msg.dart';

String? searchResultcustomerId;

class SearchResultWithPagination extends StatelessWidget {
  SearchResultWithPagination({Key? key}) : super(key: key);
  final _scrollControler = ScrollController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EmployeeBloc, EmployeeState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                    state.searchType,
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
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    return Responsive.isDesktop(context)
        ? Padding(
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
                                    const Icon(
                                      Icons.person,
                                      size: 18,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Text(
                                      searchModel.customerName!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                kHeight10,
                                Row(
                                  children: [
                                    const Text(
                                      "ID",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Text(
                                      searchModel.customerId!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                kHeight10,
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      size: 18,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Text(
                                      searchModel.customerPhone1 ??
                                          "Add mobile number",
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
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
                                      size: 18,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Flexible(
                                      child: AutoSizeText(
                                        searchModel.customerAddress ??
                                            "Add Address",
                                        maxLines: 2,
                                        overflow: TextOverflow.clip,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                kHeight10,
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.account_balance,
                                      size: 18,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Text(
                                      searchModel.branchName!,
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                kHeight10,
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      size: 18,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Text(
                                      searchModel.customerPhone2 ?? "",
                                      style: const TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
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
                                context.read<CustomerBloc>().add(
                                    CustomerEvent.searchResultCustomerIdEvent(
                                        searchModel.customerId!,
                                        searchModel.customerName!,
                                        searchModel.firmID!,
                                        searchModel.branchID!));
                                searchResultcustomerId = searchModel.customerId;
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.customerPageEvent());
                                context
                                    .read<CustomerBloc>()
                                    .add(CustomerEvent.fetchCustomerAccounts(
                                      customerId: searchModel.customerId!,
                                    ));

                                context.read<CustomerBloc>().add(CustomerEvent
                                        .fetchCustomerNotifications(
                                      customerId: searchModel.customerId!,
                                    ));
                                context
                                    .read<CustomerBloc>()
                                    .add(CustomerEvent.fetchCustomerProfile(
                                      customerId: searchModel.customerId!,
                                    ));
                                context.read<CustomerBloc>().add(CustomerEvent
                                        .fetchCustomerScheduledTransactions(
                                      customerId: searchModel.customerId!,
                                    ));
                                context.read<CustomerBloc>().add(
                                    const CustomerEvent
                                        .customerAccountInfoPageEvent());
                                searchController.clear();
                              },
                              child: const Icon(
                                Icons.arrow_forward,
                                size: 18,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : Padding(
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
                                    const Icon(
                                      Icons.person,
                                      size: 18,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Text(
                                      searchModel.customerName!,
                                      style: TextStyle(
                                        fontSize: Responsive.isMobile(context)
                                            ? 10
                                            : 12,
                                      ),
                                    ),
                                  ],
                                ),
                                kHeight20,
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      size: 14,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Text(
                                      searchModel.customerPhone1 ??
                                          "Add mobile number",
                                      style: TextStyle(
                                        fontSize: Responsive.isMobile(context)
                                            ? 10
                                            : 12,
                                      ),
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
                                      size: 16,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Flexible(
                                      child: AutoSizeText(
                                        searchModel.customerAddress ??
                                            "Add Address",
                                        maxLines: 2,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: Responsive.isMobile(context)
                                              ? 10
                                              : 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                kHeight20,
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.phone,
                                      size: 14,
                                    ),
                                    kWidth5,
                                    const Text(":"),
                                    kWidth5,
                                    Text(
                                      searchModel.customerPhone2 ?? "",
                                      style: TextStyle(
                                        fontSize: Responsive.isMobile(context)
                                            ? 10
                                            : 12,
                                      ),
                                    ),
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
                                context.read<CustomerBloc>().add(
                                    CustomerEvent.searchResultCustomerIdEvent(
                                        searchModel.customerId!,
                                        searchModel.customerName!,
                                        searchModel.firmID!,
                                        searchModel.branchID!));
                                searchResultcustomerId = searchModel.customerId;
                                context
                                    .read<AuthBloc>()
                                    .add(const AuthEvent.customerPageEvent());
                                context
                                    .read<CustomerBloc>()
                                    .add(CustomerEvent.fetchCustomerAccounts(
                                      customerId: searchModel.customerId!,
                                    ));

                                context.read<CustomerBloc>().add(CustomerEvent
                                        .fetchCustomerNotifications(
                                      customerId: searchModel.customerId!,
                                    ));
                                context
                                    .read<CustomerBloc>()
                                    .add(CustomerEvent.fetchCustomerProfile(
                                      customerId: searchModel.customerId!,
                                    ));
                                context.read<CustomerBloc>().add(CustomerEvent
                                        .fetchCustomerScheduledTransactions(
                                      customerId: searchModel.customerId!,
                                    ));
                                context.read<CustomerBloc>().add(
                                    const CustomerEvent
                                        .customerAccountInfoPageEvent());
                                searchController.clear();
                              },
                              child: const Icon(
                                Icons.arrow_forward,
                                size: 15,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }

  Widget _buildListLoadItem() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
