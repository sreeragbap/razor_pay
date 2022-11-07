import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InitialFrameWidget extends StatelessWidget {
  Widget child;
  InitialFrameWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Center(
      child: Container(
        height: size.height / 1.2,
        width: size.width / 2,
        decoration: BoxDecoration(
          color: const Color(0xFFE2EDF3),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 4,
              blurRadius: 8,
              offset: const Offset(0, 8),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: child,
        ),
      ),
    );
  }
}
