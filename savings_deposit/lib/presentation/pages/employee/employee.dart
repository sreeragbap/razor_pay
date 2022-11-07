// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/presentation/pages/employee/widgets/employee_mob.dart';
import 'package:savings_deposit/presentation/pages/employee/widgets/employee_tab_mob.dart';
import 'package:savings_deposit/presentation/pages/employee/widgets/employee_windows.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: EmployeePageMobile(),
        tablet: EmployeePageTab(),
        desktop: EmployeePageDeskTop());
  }
}
