import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';

class ChartCard extends StatelessWidget {

  final List<charts.Series> seriesList;
  final bool animate;

  ChartCard(this.seriesList, {this.animate});

  factory ChartCard.withSampleData() {
    return ChartCard(
      _createSampleData(),
      animate: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.only(left: 10, bottom: 10, right: 15, top: 10),
        child: charts.BarChart(
          seriesList,
          animate: animate,
          vertical: false,
          barRendererDecorator: charts.BarLabelDecorator<String>(),
          domainAxis: charts.OrdinalAxisSpec(renderSpec: charts.NoneRenderSpec()),
        ),
      )
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final data = [
      OrdinalSales('2020', 100000),
      OrdinalSales('2021', 300000),
      OrdinalSales('2022', 500000),
      OrdinalSales('2023', 700000),
      OrdinalSales('2024', 900000),
      OrdinalSales('2025', 1100000),
      OrdinalSales('2026', 1300000),
      OrdinalSales('2027', 1500000),
    ];

    return [
      charts.Series<OrdinalSales, String>(
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          labelAccessorFn: (OrdinalSales sales, _) =>
          '${sales.year}년: ${NumberFormat("###,###,###,###,###,###").format(sales.sales).replaceAll('', '')}원')
    ];
  }

}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}