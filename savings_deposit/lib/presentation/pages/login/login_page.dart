import 'package:flutter/material.dart';
import 'package:savings_deposit/presentation/pages/login/widgets/login_desktop_view.dart';
import 'package:savings_deposit/presentation/pages/login/widgets/login_mobile_view.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';
import 'package:savings_deposit/presentation/widgets/customised_appbar/customised_appbar.dart';

import '../../../core/colors.dart';
import 'widgets/login_tab_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customizedAppBar(context),
      backgroundColor: kbackgroundColor,
      body: Responsive(
          mobile: LoginMobileView(),
          tablet: LoginTabView(),
          desktop: LoginDesktopView()),
    );
  }
}
