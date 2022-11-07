import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LogoAndLabel extends StatelessWidget {
  String imageUrl;
  LogoAndLabel({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/icons/macom.png",
          height: 150,
          width: 80,
        ),
        const Text(
          "Deposit",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
