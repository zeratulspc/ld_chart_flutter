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
      OrdinalSales('현재', 300),
      OrdinalSales('6개월 후', 2100),
    ];

    return [
      charts.Series<OrdinalSales, String>(
          colorFn: (_, __) => charts.MaterialPalette.indigo.shadeDefault,
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          labelAccessorFn: (OrdinalSales sales, _) =>
          '${sales.year} : ${NumberFormat("###,###,###,###,###,###").format(sales.sales).replaceAll('', '')}만원')
    ];
  }

}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}