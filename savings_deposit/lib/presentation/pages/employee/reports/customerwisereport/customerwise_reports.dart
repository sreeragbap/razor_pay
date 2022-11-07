import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/customerwisereport/customerwise_report_desktop.dart';
import 'package:savings_deposit/presentation/pages/employee/reports/customerwisereport/customerwise_report_tab.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

import '../../../../../application/language/language_bloc.dart';

class CustomerwiseReportsPage extends StatelessWidget {
  const CustomerwiseReportsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ismalayalam = context.read<LanguageBloc>().state.isMalayalam;
    return const Responsive(
      desktop: CustomerwiseReportsDesktopView(),
      mobile: Text('Nothing to Display'),
      tablet: CustomerwiseReportsTabView(),
    );
  }
}
