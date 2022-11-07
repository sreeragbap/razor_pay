import 'package:flutter/material.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/growthreport/growth_report_desktop.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/growthreport/growth_report_tab.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

class BranchwiseReportsPage extends StatelessWidget {
  const BranchwiseReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      desktop: GrowthReportsDesktopView(),
      mobile: Text('Nothing to Display'),
      tablet: GrowthReportsTabView(),
    );
  }
}
