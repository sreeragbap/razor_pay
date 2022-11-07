// ignore_for_file: must_be_immutable

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';
import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/generated/l10n.dart';
import 'package:savings_deposit/presentation/pages/employee/customer_search/customer_search_widgets/customer_search_bar.dart';
import '../../../core/constants.dart';
import 'header_widgets/company_branch_details.dart';
import 'header_widgets/current_employee.dart';
import 'header_widgets/signout_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/application/auth/auth_bloc.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

import '../../../../domain/login/models/login_model.dart';

class HeaderPage extends StatelessWidget {
  HeaderPage({
    Key? key,
    required this.loginDetails,
  }) : super(key: key);
  LoginDetails? loginDetails;
  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: headerMobile(context),
      tablet: headerDesktop(context),
      desktop: headerDesktop(context),
    );
  }

  BlocBuilder headerMobile(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        Widget? _showWidget = employeeHeader(
          context,
        );
        // if (loginDetails!.userType == " Employee") {
        //   _showWidget = employeeHeader(
        //     context,
        //   );
        // } else
        if (loginDetails!.userType == "Customer") {
          _showWidget = customerHeader(
            context,
          );
        }
        return _showWidget;
      },
    );
  }

  Widget customerHeader(BuildContext context) {
    final delegate = S.of(context);
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                delegate.MABEN_NIDHI_LIMITED,
                softWrap: true,
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff914686)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                state.loginDetails!.customerName!,
                style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: const Color.fromARGB(255, 121, 4, 96),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }

  FittedBox employeeHeader(BuildContext context) {
    return FittedBox(
      // alignment: Alignment.centerLeft,
      fit: BoxFit.scaleDown,
      child: Container(
        margin: kPadding15,
        child: Row(
          children: [
            kWidth80,
            const CurrentCompanyBranch(),
            kWidth360,
            GestureDetector(
              onTap: () {
                context.read<CustomerBloc>().add(
                      const CustomerEvent.coApplicantRights(
                        coApplicantSubType: 0,
                        coApplicantRights: 'none',
                        // statusid: 0,
                      ),
                    );
                searchController.clear();
                context.read<EmployeeBloc>().add(const EmployeeEvent.started());
                // context.read<AuthBloc>().add(
                //       const AuthEvent.employeePageEvent(),
                //     );

                context.read<CustomerBloc>().add(const CustomerEvent.started());
                ///////////fetching employee notifications///////////////
                final loginDetails =
                    context.read<LoginBloc>().state.loginDetails;
                context.read<EmployeeBloc>().add(
                      EmployeeEvent.getEmployeeNotifications(
                        employeeid: loginDetails!.empCode.toString(),
                      ),
                    );
              },
              child: const CurrentEmployee(),
            ),
            kWidth20,
            const SignOutButton()
          ],
        ),
      ),
    );
  }

  BlocBuilder headerDesktop(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        Widget? _showWidget = employeeHeader(
          context,
        );
        if (loginDetails!.userType == " Employee") {
          _showWidget = employeeHeader(
            context,
          );
        } else if (loginDetails!.userType == "Customer") {
          _showWidget = customerHeader(
            context,
          );
        }
        return _showWidget;
      },
    );
  }
}
