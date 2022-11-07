import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:savings_deposit/core/constants.dart';
import 'package:savings_deposit/presentation/responsive/responsive.dart';

// ignore: must_be_immutable
class CustomerAccountTransactionButton extends StatelessWidget {
  String? label;
  String? icon;
  void Function()? onPress;
  CustomerAccountTransactionButton({
    Key? key,
    this.label,
    this.onPress,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress!,
      child: Neumorphic(
        style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
        ),
        child: SizedBox(
          width: Responsive.isMobile(context) ? 80 : 120,
          height: 64,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    icon!,
                    width: 50,
                    height: 24,
                  ),
                  kHeight5,
                  AutoSizeText(
                    label!,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
