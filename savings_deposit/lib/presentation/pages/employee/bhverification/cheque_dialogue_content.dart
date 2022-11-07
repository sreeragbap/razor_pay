// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Chequedailoguecontent extends StatelessWidget {
  Widget? label;
  Widget? value;
  Chequedailoguecontent({Key? key, this.label, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        label == null ? const SizedBox() : label!,
        value == null ? const SizedBox() : value!
      ],
    );
  }
}
