import 'package:flutter/material.dart';

import 'calendar_widget.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return size < 800
        ? Padding(
            padding: const EdgeInsets.all(50.0),
            child: Center(
              child: ListView(
                children: const [
                  Calendar(),
                ],
              ),
            ),
          )
        : ListView(
            scrollDirection: Axis.vertical,
            children: const [
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Calendar(),
              ),
            ],
          );
  }
}
