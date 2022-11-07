import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/core/colors.dart';

PreferredSizeWidget customizedAppBar(BuildContext context) {
  return AppBar(
    leadingWidth: 70,
    backgroundColor: kbackgroundColor,
    elevation: 0,
    leading: Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 70,
        height: 80,
        child: Neumorphic(
          style: const NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.circle(),
          ),
          child: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff363636),
              size: 18,
            ),
          ),
        ),
      ),
    ),
  );
}
