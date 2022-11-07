import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

// ignore: must_be_immutable
class SdPieChart extends StatelessWidget {
  final Map<String, double> dataMap;
  final List<Color> itemColors;
  const SdPieChart({
    Key? key,
    required this.dataMap,
    required this.itemColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "SUMMARY",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        Flexible(
          child: PieChart(
            dataMap: dataMap,
            animationDuration: const Duration(milliseconds: 1000),
            chartLegendSpacing: 5,
            chartRadius: MediaQuery.of(context).size.width / 2,
            colorList: itemColors,
            initialAngleInDegree: 0,
            chartType: ChartType.disc,
            ringStrokeWidth: 32,
            legendOptions: const LegendOptions(
              showLegendsInRow: false,
              legendPosition: LegendPosition.bottom,
              showLegends: true,
              legendShape: BoxShape.rectangle,
              legendTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            chartValuesOptions: const ChartValuesOptions(
              showChartValues: true,
              showChartValuesOutside: false,
              chartValueBackgroundColor: Colors.transparent,
              chartValueStyle: TextStyle(),
              decimalPlaces: 1,
            ),
          ),
        ),
      ],
    );
  }
}
