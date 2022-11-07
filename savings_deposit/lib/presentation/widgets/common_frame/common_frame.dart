import 'package:flutter/material.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

import 'desktop_frame.dart';
import 'mobile_frame.dart';
import 'tablet_frame.dart';

@immutable
class CommonFrame extends StatelessWidget {
  const CommonFrame({
    Key? key,
    required this.leftsideOfScreen,
    required this.rightsideUpSecion1,
    required this.rightsideUpSection2,
    required this.rightsideDownOfScreen,
    required this.headOfScreen,
    required this.centerOfScreen,
  }) : super(key: key);
  final Widget leftsideOfScreen;
  final Widget rightsideUpSecion1;
  final Widget rightsideUpSection2;
  final Widget rightsideDownOfScreen;
  final Widget headOfScreen;
  final Widget centerOfScreen;
  @override
  Widget build(BuildContext context) {
    return Responsive(
      desktop: DesktopFrame(
        centerOfScreen: centerOfScreen,
        headOfScreen: headOfScreen,
        leftsideOfScreen: leftsideOfScreen,
        rightsideUpSecion1: rightsideUpSecion1,
        rightsideDownOfScreen: rightsideDownOfScreen,
        rightsideUpSection2: rightsideUpSection2,
      ),
      tablet: TabletFrame(
        centerOfScreen: centerOfScreen,
        headOfScreen: headOfScreen,
        leftsideOfScreen: leftsideOfScreen,
        rightsideUpSecion1: rightsideUpSecion1,
        rightsideDownOfScreen: rightsideDownOfScreen,
        rightsideUpSection2: rightsideUpSection2,
      ),
      mobile: MobileFrame(
        centerOfScreen: centerOfScreen,
        headOfScreen: headOfScreen,
        leftsideOfScreen: leftsideOfScreen,
        rightsideUpSecion1: rightsideUpSecion1,
        rightsideDownOfScreen: rightsideDownOfScreen,
        rightsideUpSection2: rightsideUpSection2,
      ),
    );
  }
}
