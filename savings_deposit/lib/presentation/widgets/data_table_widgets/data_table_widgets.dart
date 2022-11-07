import 'package:flutter/material.dart';

DataCell buildDataCell(Widget widget) {
  return DataCell(
    widget,
    placeholder: true,
  );
}

DataColumn buildDataColumn(Widget widget) {
  return DataColumn(label: widget);
}

TextStyle tableTextStyle = const TextStyle(
  color: Colors.white,
);
