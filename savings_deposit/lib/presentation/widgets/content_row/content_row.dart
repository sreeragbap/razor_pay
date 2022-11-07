import 'package:flutter/material.dart';
import 'package:savings_deposit/core/constants.dart';

// ignore: must_be_immutable
class ContentRow extends StatelessWidget {
  Widget? label;
  Widget? value;
  MainAxisAlignment? mainAxisAlignment;

  ContentRow({Key? key, this.label, this.value, this.mainAxisAlignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        label == null ? const SizedBox() : label!,
        kWidth5,
        value == null
            ? const SizedBox()
            : Flexible(child: value!

                //  Text(
                //   value!,
                //   overflow: TextOverflow.ellipsis,
                // ),
                )
      ],
    );
  }
}

class LeftAlignContentRow extends StatelessWidget {
  Widget? label;
  Widget? value;
  LeftAlignContentRow({Key? key, this.label, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [label == null ? const SizedBox() : label!]),
        kHeight5,
        Row(
          children: [kWidth15, value == null ? const SizedBox() : value!],
        )
      ],
    );
  }
}
