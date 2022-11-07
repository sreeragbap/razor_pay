import 'package:flutter_neumorphic/flutter_neumorphic.dart';

// ignore: must_be_immutable
class SdCard extends StatelessWidget {
  Widget content;
  Color color;
  SdCard({Key? key, required this.content, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, bottom: 9, right: 20),
      child: Neumorphic(
        drawSurfaceAboveChild: false,
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(
              const BorderRadius.all(Radius.circular(20))),
          color: color,
        ),
        child: Container(
          padding: const EdgeInsets.only(left: 10, top: 10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/SdCardImage.png"),
                  fit: BoxFit.cover)),
          width: double.infinity,
          child: content,
        ),
      ),
    );
  }
}
