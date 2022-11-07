// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_account_info/state_decision.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile/customer_profile.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile_notifications/customer_profile_notification_widget.dart';
import 'package:savings_deposit/presentation/pages/customer/widgets/customer_profile_piechart/customer_profile_piechart.dart';
import 'package:savings_deposit/presentation/pages/employee/employee_notification/employee_notification.dart';
import 'package:savings_deposit/presentation/pages/header/header_section.dart';
import 'package:savings_deposit/presentation/widgets/calendar/calendar_widget.dart';

import '../../../application/auth/auth_bloc.dart';
import '../../../domain/login/models/login_model.dart';
import '../../widgets/common_frame/common_frame.dart';
import '../employee/employee.dart';

class MainPage extends StatelessWidget {
  MainPage({
    Key? key,
    required this.loginDetails,
  }) : super(key: key);
  LoginDetails? loginDetails;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        Widget? _showWidget;
        if (state is EmployeePageState) {
          _showWidget = CommonFrame(
            centerOfScreen: const EmployeePage(),
            headOfScreen: HeaderPage(
              loginDetails: loginDetails,
            ),
            leftsideOfScreen: const EmployeeNotificationWidget(),
            rightsideDownOfScreen: const SizedBox(
                child: Text("")), //LandingPage Rightside down of screen
            rightsideUpSecion1: const SizedBox(
                child: Text("")), //LandingPage Rightsideup1 of screen
            rightsideUpSection2: const SizedBox(child: Calendar()),
          );
        } else if (state is CustomerPageState) {
          _showWidget = CommonFrame(
            centerOfScreen: const StateDecision(),
            headOfScreen: HeaderPage(
              loginDetails: loginDetails,
            ),
            leftsideOfScreen: CustomerProfile(),
            rightsideDownOfScreen: const CustomerProfilePieChart(),
            rightsideUpSecion1: const SizedBox(
                child: Text("")), //CustomerPage Rightsideup1 of screen
            rightsideUpSection2: CustomerProfileNotification(),
          );
        }

        return Scaffold(
          backgroundColor: const Color(0xffE2EDF3),
          body: _showWidget!,
        );
      },
    );
  }
}
