// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/bh_tabbar.dart';
import 'package:savings_deposit/presentation/pages/employee/bhverification/bhstate_decision.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/reports.dart';
import 'package:savings_deposit/presentation/widgets/calendar/calendar_view.dart';

import '../../../../application/language/language_bloc.dart';
import '../cheque_recouncilation/cheque_recouncilation.dart';
import '../customer_search/customer_search.dart';
import '../employee_notification/employee_notification.dart';

class EmployeePageTab extends StatelessWidget {
  const EmployeePageTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    List<Widget> views = [
      const CustomerSearchPage(),
      const ChequeRecouncilationPage(),
      const BhTabbar(),
      const ReportsPage(),
      const EmployeeNotificationWidget(),
      const CalendarView()
    ];
    return BlocBuilder<EmployeeBloc, EmployeeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kbackgroundColor,
          bottomNavigationBar: SalomonBottomBar(
            currentIndex: state.index,
            onTap: (i) {
              context.read<EmployeeBloc>().add(EmployeeEvent.indexChanging(i));
              i == 2
                  ? context
                      .read<EmployeeBloc>()
                      .add(const EmployeeEvent.bhverificationinitialEvent())
                  : () {};
            },
            items: [
              /// Search
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.person_search_outlined,
                  size: 32,
                  color: Colors.black54,
                ),
                title: const Text("Customer Search"),
                selectedColor: Colors.orange,
              ),

              /// Cheque Reconciliation
              SalomonBottomBarItem(
                icon: Image.asset(
                  "assets/icons/cheque_reconciliation.png",
                  width: 40,
                  height: 28,
                ),
                title: const Text("Cheque Reconciliation"),
                selectedColor: Colors.pink,
              ),

              /// Home
              SalomonBottomBarItem(
                icon: Image.asset(
                  "assets/icons/bh_verification.png",
                  width: 40,
                  height: 32,
                ),
                title: const Text("BH APPROVAL"),
                selectedColor: Colors.purple,
              ),

              /// Profile
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.library_books_outlined,
                  color: Colors.black54,
                  size: 28,
                ),
                title: const Text("Reports"),
                selectedColor: Colors.teal,
              ),
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.black54,
                  size: 32,
                ),
                title: const Text("Notifications"),
                selectedColor: Colors.orange,
              ),

              //Settlement
              SalomonBottomBarItem(
                icon: const Icon(
                  Icons.edit_note,
                  color: Colors.black54,
                  size: 32,
                ),
                title: const Text("Notes"),
                selectedColor: Colors.purple,
              ),
            ],
          ),
          body: SizedBox(
            child: views[state.index],
          ),
          // )
        );
      },
    );
  }
}
