import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

class InitialScreenButtons extends StatelessWidget {
  const InitialScreenButtons({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String? title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 38,
          width: Responsive.isDesktop(context) ? 433 : 290,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            color: const Color(0xffE2EDF3),
            border: Border.all(
              color: const Color(0xffE2EDF3),
              width: 1.5,
            ),
          ),
        ),
        Container(
          height: 38,
          width: Responsive.isDesktop(context) ? 433 : 290,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            //  color: const Color(0xffE2EDF3),
            border: Border.all(
              color: const Color(0xff914686),
              width: 2,
            ),
          ),
          child: MaterialButton(
            onPressed: press,
            focusColor: const Color(0xff914686),
            child: Text(
              title!,
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xffAFB0B0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
