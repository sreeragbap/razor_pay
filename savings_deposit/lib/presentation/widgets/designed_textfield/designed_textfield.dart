import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

// ignore: must_be_immutable
class DesignedTextField extends StatelessWidget {
  DesignedTextField({
    Key? key,
    required this.labelTitle,
    required this.boxWidth,
    required this.boxHeight,
  }) : super(key: key);
  String? labelTitle;
  double boxWidth;
  double boxHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isMobile(context) ? 325 : boxWidth,
          height: boxHeight,
      child: Neumorphic(
        // drawSurfaceAboveChild: true,
        style: const NeumorphicStyle(
          color: Color(0xFFD8D6D8),
          depth: 5,
          intensity: 0.75,
        ),
        child: SizedBox(
          width: Responsive.isMobile(context) ? 325 : boxWidth,
          height: boxHeight-20,
          child: TextFormField(
            decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              hintText: labelTitle,
              // labelText: labelTitle,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFFD8D6D8),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Color(0xFFD8D6D8),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
