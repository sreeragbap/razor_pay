// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/bh_tabbar.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/bhstate_decision.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/reports.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

import '../../../../application/language/language_bloc.dart';
import '../cheque_recouncilation/cheque_recouncilation.dart';
import '../customer_search/customer_search.dart';

class EmployeePageMobile extends StatelessWidget {
  const EmployeePageMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final _controller = PageController();
    List<Widget> views = [
      const CustomerSearchPage(),
      const ChequeRecouncilationPage(),
      const BhTabbar(),
      const ReportsPage(),
      // const EmployeeNotificationWidget(),
      // const CalendarView()
    ];
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kbackgroundColor,
          bottomNavigationBar: WaterDropNavBar(
            waterDropColor: kPrimaryColor,
            backgroundColor: kbackgroundColor,
            selectedIndex: state.index,
            onItemSelected: (i) {
              _controller.animateToPage(state.index,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeOutQuad);
              context.read<EmployeeBloc>().add(EmployeeEvent.indexChanging(i));
              i == 2
                  ? context
                      .read<EmployeeBloc>()
                      .add(const EmployeeEvent.bhverificationinitialEvent())
                  : () {};
            },
            barItems: [
              /// Search
              BarItem(
                  outlinedIcon: Icons.person_search_outlined,
                  filledIcon: Icons.person_search_rounded),

              /// Cheque Reconciliation
              BarItem(
                  outlinedIcon: Icons.note_alt_outlined,
                  filledIcon: Icons.note_alt_rounded),

              /// Home
              BarItem(
                  outlinedIcon: Icons.note_outlined,
                  filledIcon: Icons.note_rounded),

              /// Profile
              BarItem(
                  outlinedIcon: Icons.library_books_outlined,
                  filledIcon: Icons.library_books_rounded),
              // BarItem(
              //   outlinedIcon: Icons.notifications_active_outlined,
              //   filledIcon: Icons.notifications_active_rounded,
              // ),

              //Settlement
              // BarItem(
              //   filledIcon: Icons.edit_note,
              //   outlinedIcon: Icons.edit_note_rounded,
              // ),
            ],
          ),
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              SizedBox(
                child: views[state.index],
              ),
            ],
          ),
          // )
        );
      },
    );
  }
}
