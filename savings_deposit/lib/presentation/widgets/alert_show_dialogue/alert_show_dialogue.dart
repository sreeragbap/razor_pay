import 'package:flutter/material.dart';

Future sdShowDailogue({
  required BuildContext context,
  required Widget dailogue,
}) {
  return showDialog(
      useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return dailogue;
      });
}
