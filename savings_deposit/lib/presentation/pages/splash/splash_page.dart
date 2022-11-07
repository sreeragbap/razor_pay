import 'package:flutter/material.dart';
import 'package:savings_deposit/presentation/pages/splash/splash_desktop_page.dart';
import 'package:savings_deposit/presentation/pages/splash/splash_mobile_page.dart';
import 'package:savings_deposit/presentation/pages/splash/splash_tab_page.dart';

import 'package:savings_deposit/presentation/responsive/responsive.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: SplashMobilePage(),
      tablet: SplashTabPage(),
      desktop: SplashDesktopPage(),
    );
  }
}
