import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_deposit/core/constants.dart';

// ignore: must_be_immutable
class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    Key? key,
    required this.press,
    required this.title,
    required this.tickIcon,
  }) : super(key: key);
  VoidCallback press;
  String title;
  Widget tickIcon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Row(
        children: [
          SizedBox(
            height: 21,
            width: 31,
            child: Neumorphic(
              style: const NeumorphicStyle(shape: NeumorphicShape.concave),
              child: tickIcon,
            ),
          ),
          kWidth5,
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: const Color(0xff363636),
            ),
          ),
        ],
      ),
    );
  }
}
