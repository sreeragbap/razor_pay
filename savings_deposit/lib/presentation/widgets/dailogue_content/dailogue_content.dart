import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DailogueContent extends StatelessWidget {
  String title;
  TextStyle? titleTextStyle;
  ShapeBorder? shape;
  Widget content;
  List<Widget>? actions;
  DailogueContent(
      {Key? key,
      required this.title,
      this.titleTextStyle,
      this.shape,
      required this.content,
      this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
          child: Text(
        title,
      )),
      titleTextStyle: titleTextStyle == null
          ? const TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)
          : titleTextStyle!,

      shape: shape,
      // RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: content,
      actions: actions,
      // [AlertDialogueAction()],
    );
  }
}
