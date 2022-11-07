// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ColoredButton extends StatelessWidget {
  const ColoredButton(
      {Key? key,
      required this.press,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.buttonTitle,
      required this.borderRadius,
      this.fontSize})
      : super(key: key);
  final double buttonHeight;
  final double buttonWidth;
  final double borderRadius;
  final String? buttonTitle;
  final VoidCallback press;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // stops: const [0.0, 1.0],
            colors: [
              Color(0xFFD119A6),
              Color(0xFF3545BD),
            ],
          ),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(15),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: press,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                buttonTitle!,
                style: GoogleFonts.poppins(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w600,
                ),
              ),
              buttonTitle == "Login"
                  ? const Icon(
                      Icons.east,
                      size: 15.0,
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
