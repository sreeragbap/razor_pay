// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/core/colors.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/customerwisereport/customerwise_report_desktop.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/customerwisereport/customerwise_report_tab.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/growthreport/growth_report_desktop.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/growthreport/growth_report_tab.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

import '../../../../application/language/language_bloc.dart';
import '../../../../generated/l10n.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  State<ReportsPage> createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage>
    with SingleTickerProviderStateMixin {
  TabController? tabcontroller;
  @override
  void initState() {
    tabcontroller = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    final delegate = S.of(context);
    return Scaffold(
        backgroundColor: kbackgroundColor,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: kbackgroundColor,
            bottom: TabBar(
              controller: tabcontroller,
              tabs: [
                Tab(
                  child: Text(
                    delegate.reportsGrowthreport,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    delegate.reportsCustomerwisereport,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: const [
            Responsive(
              desktop: GrowthReportsDesktopView(),
              mobile: Text('Nothing to Display'),
              tablet: GrowthReportsTabView(),
            ),
            Responsive(
              desktop: CustomerwiseReportsDesktopView(),
              mobile: Text('Nothing to Display'),
              tablet: CustomerwiseReportsTabView(),
            ),
          ],
          controller: tabcontroller,
        ));
  }
}
