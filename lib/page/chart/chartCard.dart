import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart';

class ChartCard extends StatelessWidget {

  final List<charts.Series> seriesList;
  final bool animate;

  ChartCard(this.seriesList, {this.animate});

  factory ChartCard.createData(int v1,v2,v3,v4,v5) {
    return ChartCard(
      _computeData(v1,v2,v3,v4,v5),
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

  static List<charts.Series<OrdinalSales, String>> _computeData(int v1,v2,v3,v4,v5) {

    //1 종업원 수
    //2 일일매출
    //3 주간매출
    //4 월간매출
    //5 업종(1~9)
    double after = v4+(v4*0.5);
    final data = [
      OrdinalSales('현재', v4),
      OrdinalSales('6개월 후', after.round()),
      OrdinalSales('12개월 후', (after+after).round()),
    ];

    return [
      charts.Series<OrdinalSales, String>(
          colorFn: (_, __) => charts.MaterialPalette.indigo.shadeDefault,
          id: 'Sales',
          domainFn: (OrdinalSales sales, _) => sales.year,
          measureFn: (OrdinalSales sales, _) => sales.sales,
          data: data,
          labelAccessorFn: (OrdinalSales sales, _) =>
          '${sales.year} : ${NumberFormat("###,###,###,###,###,###").format(sales.sales).replaceAll('', '')}원')
    ];
  }

}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}