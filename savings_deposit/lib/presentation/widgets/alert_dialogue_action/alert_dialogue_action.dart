// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AlertDialogueAction extends StatelessWidget {
  String leftButtonLabel;
  String rightButtonLabel;
  void Function() leftButtononPressed;
  void Function() rightButtononPressed;

  //------------Button Verify  & Bounce--------------------//

  Widget actionButton(
      // ignore: non_constant_identifier_names
      {required String buttonLabel,
      required Color colorButton,
      required FontWeight fontWeightButton,
      required double buttonHeight,
      required double borderSideWidth,
      required Color borderColor,
      required void Function() onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        buttonLabel,
        style: TextStyle(
            color: colorButton,
            fontWeight: fontWeightButton,
            height: buttonHeight),
      ),
      style: ButtonStyle(
        side: MaterialStateProperty.all(
          BorderSide(width: borderSideWidth, color: borderColor),
        ),
      ),
    );
  }

//-------------------------------------------------------------------------------
  AlertDialogueAction(
      {Key? key,
      required this.leftButtonLabel,
      required this.rightButtonLabel,
      required this.leftButtononPressed,
      required this.rightButtononPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              actionButton(
                onPressed: leftButtononPressed,
                buttonLabel: leftButtonLabel,
                colorButton: const Color.fromRGBO(209, 24, 165, 1),
                fontWeightButton: FontWeight.normal,
                buttonHeight: 1,
                borderSideWidth: 1,
                borderColor: const Color.fromRGBO(209, 24, 165, 1),
              ),
              actionButton(
                onPressed: rightButtononPressed,
                buttonLabel: rightButtonLabel,
                colorButton: const Color.fromRGBO(3, 3, 3, 1),
                fontWeightButton: FontWeight.normal,
                buttonHeight: 1,
                borderSideWidth: 0,
                borderColor: const Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
