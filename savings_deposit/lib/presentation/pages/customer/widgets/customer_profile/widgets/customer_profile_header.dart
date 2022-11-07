// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomerDetailsHeader extends StatelessWidget {
  String headerLabel;
  CustomerDetailsHeader({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      headerLabel,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
