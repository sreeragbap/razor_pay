import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/auth/auth_bloc.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/domain/employee/customer_search/models/customer_search/customer_search_model.dart';
import '../../../../application/employee/employee_bloc.dart';
import '../../../../application/language/language_bloc.dart';
import '../../../../generated/l10n.dart';
import '../../../responsive/responsive.dart';
import 'customer_search_widgets/custom_radio_button.dart';
import 'customer_search_widgets/customer_search_bar.dart';
import 'customer_search_widgets/search_result_with_pagination/coapplicant_search.dart';
import 'customer_search_widgets/search_result_with_pagination/search_result_pagination.dart';

class CustomerSearchPage extends StatelessWidget {
  const CustomerSearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final delegate = S.of(context);
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        Widget _showWidegt = const SizedBox();
        if (state is EmployeePageState) {
          /////////////// Customer Search ////////////////////////////////
          _showWidegt = Scaffold(
              appBar: PreferredSize(
                preferredSize: const Size.fromHeight(260.0),
                child: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: kbackgroundColor,
                  elevation: 0,
                  toolbarHeight: 280,
                  title: Column(
                    children: [
                      Center(
                        child: Text(
                          delegate.CsSearchcustomer,
                          style: GoogleFonts.poppins(
                            fontSize: ismalayalam ? 20 : 24,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff363636),
                          ),
                        ),
                      ),
                      kHeight30,
                      const CustomRadioButtons(),
                      kHeight20,
                      const CustomerSearchBar(),
                    ],
                  ),
                  centerTitle: true,
                ),
              ),
              backgroundColor: kbackgroundColor,
              body: SearchResultWithPagination());
        } else if (state is CustomerPageState) {
          ///////////// CO-Applicant Search ////////////////////////////////
          context
              .read<CustomerBloc>()
              .add(const CustomerEvent.coApplicantRightsApiCall());
          _showWidegt = Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(260.0),
              child: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: kbackgroundColor,
                elevation: 0,
                toolbarHeight: 280,
                title: Column(
                  children: [
                    Center(
                      child: Text(
                        delegate.CsSearchCoApplicant,
                        style: GoogleFonts.poppins(
                          fontSize: ismalayalam ? 20 : 24,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff363636),
                        ),
                      ),
                    ),
                    kHeight30,
                    //  const CustomRadioButtons(),
                    kHeight20,
                    const CustomerSearchBar(),
                  ],
                ),
                centerTitle: true,
              ),
            ),
            backgroundColor: kbackgroundColor,
            body: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: CoApplicantSearch(),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                          searchController.clear();

                          context
                              .read<EmployeeBloc>()
                              .add(const EmployeeEvent.started());
                        },
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: SizedBox(
                            height: Responsive.isTablet(context) ? 40 : 50,
                            width: Responsive.isTablet(context) ? 80 : 130,
                            child: Neumorphic(
                              style: const NeumorphicStyle(
                                  shape: NeumorphicShape.concave),
                              child: Center(
                                child: Text(
                                  delegate.CsCancelButton,
                                  style: GoogleFonts.poppins(
                                      fontSize: Responsive.isTablet(context)
                                          ? 11
                                          : 14,
                                      color: const Color(0xff914686)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                kHeight10,
              ],
            ),
          );
        }
        return _showWidegt;
      },
    );
  }

  Container searchResult(
    CustomerSearchModel customerSearchModel,
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(customerSearchModel.customerName!),
          Text(customerSearchModel.customerAddress!),
          Text(customerSearchModel.customerPhone1!),
        ],
      ),
    );
  }
}

  // return RefreshWidget(
                //     child: ListView.builder(
                //       itemBuilder: (BuildContext context, int index) {
                //         if (state.customerSearchModel == null) {
                //           return kHeight1;
                //         }
                //         return const SearchResults();
                //       },
                //       itemCount: 1,
                //     ),
                //     onRefresh: () async {
                //       await Future.delayed(const Duration(microseconds: 4000));
                //       context
                //           .read<EmployeeBloc>()
                //           .add(EmployeeEvent.searchCustomer(
                //             searchController.text,
                //             state.searchType,
                //             state.currentPage,
                //           ));
                //     });
                // return SmartRefresher(
                //   onRefresh: () {
                //     context
                //         .read<EmployeeBloc>()
                //         .add(EmployeeEvent.searchCustomer(
                //           searchController.text,
                //           state.searchType,
                //           1,
                //         ));
                //     if (state.customerSearchModel == null) {
                //       _refreshController.refreshFailed();
                //     } else {
                //       _refreshController.refreshCompleted();
                //     }
                //   },
                //   onLoading: () {
                //     context
                //         .read<EmployeeBloc>()
                //         .add(EmployeeEvent.searchCustomerLoading(
                //           searchController.text,
                //           state.searchType,
                //         ));
                //     if (state.customerSearchModel == null) {
                //       _refreshController.loadFailed();
                //     } else {
                //       _refreshController.loadComplete();
                //     }
                //   },
                //   enablePullDown: true,
                //   enablePullUp: true,
                //   controller: _refreshController,
                //   // child: ListView(
                //   //   controller: _scrollController,
                //   //   children: const [SearchResults()],
                //   // ),
                //   child: ListView.builder(
                //     itemBuilder: (BuildContext context, int index) {
                //       final data = state.customerSearchModel![index];
                //       return ListTile(
                //         title: Text(data.customerName!),
                //       );
                //     },
                //     itemCount: state.customerSearchModel!.length,
                //   ),
                // );