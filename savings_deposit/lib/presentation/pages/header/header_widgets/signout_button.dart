import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/application/customer/customer_bloc.dart';
import 'package:savings_deposit/application/employee/employee_bloc.dart';

import 'package:savings_deposit/application/login/login_bloc.dart';
import 'package:savings_deposit/presentation/pages/employee/customer_search/customer_search_widgets/customer_search_bar.dart';
import 'package:savings_deposit/presentation/router/app_router.gr.dart';
// import 'package:savings_deposit/generated/l10n.dart';

class SignOutButton extends StatelessWidget {
  const SignOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final delegate = S.of(context);

    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LoginEvent) {}

        return NeumorphicButton(
          onPressed: () {
            context.router.replaceAll([const InitialRoute()]);
            context.read<CustomerBloc>().add(const CustomerEvent.started());
            context.read<EmployeeBloc>().add(const EmployeeEvent.started());
            searchController.clear();
          },
          child: const Text(
            " SignOut",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff363636),
              fontWeight: FontWeight.w500,
            ),
          ),
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(13),
            ),
          ),
        );
      },
    );
  }
}
