import 'package:flutter/material.dart';
import 'package:ld_chart_flutter/page/chart/chartCard.dart';

import 'package:ld_chart_flutter/page/chart/chartpage.dart';

class ChartPage extends StatefulWidget {
  final int v1,v2,v3,v4,v5;

  ChartPage({this.v1, this.v2, this.v3, this.v4, this.v5});

  @override
  ChartPageState createState() => ChartPageState(v1,v2,v3,v4,v5);
}

class ChartPageState extends State<ChartPage> {
  final int v1,v2,v3,v4,v5;

  ChartPageState(this.v1, this.v2, this.v3, this.v4, this.v5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("계산결과"),
      ),
      body: ChartCard.withSampleData(),
    );
  }

}
