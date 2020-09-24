import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:ld_chart_flutter/page/card/bottom.dart';


class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  List<int> membersList = [1,3,5,7,10];
  List<int> dayList = [100000, 300000, 500000, 700000, 1000000];
  List<int> weekList = [700000, 2100000, 3500000, 4900000, 7000000];
  List<int> monthList = [3000000, 9000000, 15000000, 21000000, 30000000];

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  bool showAvg = false;

  int members = 0;
  int day = 0;
  int week = 0;
  int month = 0;

  Widget topCard(Size screenSize) {
    return Container(
      child: Card(
        child: Column(
          children: [
            Container( // 타이틀
              child: Text(
                  "매출 선택",
                  style: TextStyle(fontSize: 18)
              ),
            ),
            Container( // 선택창
                margin: EdgeInsets.symmetric(vertical: 5),
                width: screenSize.width,
                //color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        "종업원 수",
                        style: TextStyle(fontSize: 18)
                    ),
                    Container(
                      height: 20,
                      width: screenSize.width/1.1,
                      margin : EdgeInsets.only(bottom: 5),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Radio(
                              value: 1,
                              groupValue: members,
                              onChanged: (int v) {
                                setState(() {
                                  members = v;
                                });
                              }),
                          Text("1명"),
                          Radio(
                              value: 3,
                              groupValue: members,
                              onChanged: (int v) {
                                setState(() {
                                  members = v;
                                });
                              }),
                          Text("3명"),
                          Radio(
                              value: 5,
                              groupValue: members,
                              onChanged: (int v) {
                                setState(() {
                                  members = v;
                                });
                              }),
                          Text("5명"),
                          Radio(
                              value: 7,
                              groupValue: members,
                              onChanged: (int v) {
                                setState(() {
                                  members = v;
                                });
                              }),
                          Text("7명"),
                          Radio(
                              value: 10,
                              groupValue: members,
                              onChanged: (int v) {
                                setState(() {
                                  members = v;
                                });
                              }),
                          Text("10명"),
                        ],
                      ),
                    ),
                    Text(
                        "일일매출",
                        style: TextStyle(fontSize: 18)
                    ),
                    Container(
                      height: 20,
                      width: screenSize.width/1.1,
                      margin : EdgeInsets.only(bottom: 5),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Radio(
                              value: 100000,
                              groupValue: day,
                              onChanged: (int v) {
                                setState(() {
                                  day = v;
                                });
                              }),
                          Text("십만"),
                          Radio(
                              value: 300000,
                              groupValue: day,
                              onChanged: (int v) {
                                setState(() {
                                  day = v;
                                });
                              }),
                          Text("삼십만"),
                          Radio(
                              value: 500000,
                              groupValue: day,
                              onChanged: (int v) {
                                setState(() {
                                  day = v;
                                });
                              }),
                          Text("오십만"),
                          Radio(
                              value: 700000,
                              groupValue: day,
                              onChanged: (int v) {
                                setState(() {
                                  day = v;
                                });
                              }),
                          Text("칠십만"),
                          Radio(
                              value: 1000000,
                              groupValue: day,
                              onChanged: (int v) {
                                setState(() {
                                  day= v;
                                });
                              }),
                          Text("백만"),
                        ],
                      ),
                    ),
                    Text(
                        "주간매출",
                        style: TextStyle(fontSize: 18)
                    ),
                    Container(
                      height: 20,
                      width: screenSize.width/1.1,
                      margin : EdgeInsets.only(bottom: 5),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Radio(
                              value: 700000,
                              groupValue: week,
                              onChanged: (int v) {
                                setState(() {
                                  week = v;
                                });
                              }),
                          Text("칠십만"),
                          Radio(
                              value: 2100000,
                              groupValue: week,
                              onChanged: (int v) {
                                setState(() {
                                  week = v;
                                });
                              }),
                          Text("이백십만"),
                          Radio(
                              value: 3500000,
                              groupValue: week,
                              onChanged: (int v) {
                                setState(() {
                                  week = v;
                                });
                              }),
                          Text("삼백오십만"),
                          Radio(
                              value: 4900000,
                              groupValue: week,
                              onChanged: (int v) {
                                setState(() {
                                  week = v;
                                });
                              }),
                          Text("사백구십만"),
                          Radio(
                              value: 7000000,
                              groupValue: week,
                              onChanged: (int v) {
                                setState(() {
                                  week = v;
                                });
                              }),
                          Text("칠백만"),
                        ],
                      ),
                    ),
                    Text(
                        "월간매출",
                        style: TextStyle(fontSize: 18)
                    ),
                    Container(
                      height: 20,
                      width: screenSize.width/1.1,
                      margin : EdgeInsets.only(bottom: 5),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Radio(
                              value: 3000000,
                              groupValue: month,
                              onChanged: (int v) {
                                setState(() {
                                  month = v;
                                });
                              }),
                          Text("삼백만"),
                          Radio(
                              value: 9000000,
                              groupValue: month,
                              onChanged: (int v) {
                                setState(() {
                                  month = v;
                                });
                              }),
                          Text("구백만"),
                          Radio(
                              value: 15000000,
                              groupValue: month,
                              onChanged: (int v) {
                                setState(() {
                                  month = v;
                                });
                              }),
                          Text("천오백만"),
                          Radio(
                              value: 21000000,
                              groupValue: month,
                              onChanged: (int v) {
                                setState(() {
                                  month = v;
                                });
                              }),
                          Text("이천백만"),
                          Radio(
                              value: 30000000,
                              groupValue: month,
                              onChanged: (int v) {
                                setState(() {
                                  month = v;
                                });
                              }),
                          Text("삼천만"),
                        ],
                      ),
                    ),
                    RaisedButton(
                      child: Text("결과확인"),
                      onPressed: members == 0 || day == 0 || week == 0 || month == 0 ? null : (){
                        setState(() {
                          showAvg = !showAvg;
                          print(showAvg);
                        });
                      },
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }

  Widget bottomCard() {
    return Container(
      child: Card(
        child: Container(
          child: LineChart(
            showAvg ? sampleData1() : sampleData2(),
            swapAnimationDuration: const Duration(milliseconds: 250),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    InputDecoration fieldDeco = InputDecoration(
      filled: true,
      fillColor: Colors.grey[200],
      hintText: '값을 입력해주세요',
      contentPadding: EdgeInsets.only(left: 14.0, bottom: 4.0, top: 4.0),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).accentColor),
        borderRadius: BorderRadius.circular(30),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(25.7),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(25.7),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
        borderRadius: BorderRadius.circular(25.7),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("LD CHART"),
      ),
      body: ListView(
        children: [
          topCard(screenSize),
          bottomCard(),
        ],
      ),
    );
  }


  LineChartData sampleData1() {
    return LineChartData(
      lineTouchData: LineTouchData(
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
        touchCallback: (LineTouchResponse touchResponse) {},
        handleBuiltInTouches: true,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle: const TextStyle(
            color: Color(0xff72719b),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'SEPT';
              case 7:
                return 'OCT';
              case 12:
                return 'DEC';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Color(0xff75729e),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1m';
              case 2:
                return '2m';
              case 3:
                return '3m';
              case 4:
                return '5m';
            }
            return '';
          },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff4e4965),
            width: 4,
          ),
          left: BorderSide(
            color: Colors.transparent,
          ),
          right: BorderSide(
            color: Colors.transparent,
          ),
          top: BorderSide(
            color: Colors.transparent,
          ),
        ),
      ),
      minX: 0,
      maxX: 14,
      maxY: 4,
      minY: 0,
      lineBarsData: linesBarData1(),
    );
  }

  List<LineChartBarData> linesBarData1() {
    final LineChartBarData lineChartBarData1 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 1.5),
        FlSpot(5, 1.4),
        FlSpot(7, 3.4),
        FlSpot(10, 2),
        FlSpot(12, 2.2),
        FlSpot(13, 1.8),
      ],
      isCurved: true,
      colors: [
        const Color(0xff4af699),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    final LineChartBarData lineChartBarData2 = LineChartBarData(
      spots: [
        FlSpot(1, 1),
        FlSpot(3, 2.8),
        FlSpot(7, 1.2),
        FlSpot(10, 2.8),
        FlSpot(12, 2.6),
        FlSpot(13, 3.9),
      ],
      isCurved: true,
      colors: [
        const Color(0xffaa4cfc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(show: false, colors: [
        const Color(0x00aa4cfc),
      ]),
    );
    final LineChartBarData lineChartBarData3 = LineChartBarData(
      spots: [
        FlSpot(1, 2.8),
        FlSpot(3, 1.9),
        FlSpot(6, 3),
        FlSpot(10, 1.3),
        FlSpot(13, 2.5),
      ],
      isCurved: true,
      colors: const [
        Color(0xff27b6fc),
      ],
      barWidth: 8,
      isStrokeCapRound: true,
      dotData: FlDotData(
        show: false,
      ),
      belowBarData: BarAreaData(
        show: false,
      ),
    );
    return [
      lineChartBarData1,
      lineChartBarData2,
      lineChartBarData3,
    ];
  }

  LineChartData sampleData2() {
    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: false,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          textStyle: const TextStyle(
            color: Color(0xff72719b),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          margin: 10,
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'SEPT';
              case 7:
                return 'OCT';
              case 12:
                return 'DEC';
            }
            return '';
          },
        ),
        leftTitles: SideTitles(
          showTitles: true,
          textStyle: const TextStyle(
            color: Color(0xff75729e),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return '1m';
              case 2:
                return '2m';
              case 3:
                return '3m';
              case 4:
                return '5m';
              case 5:
                return '6m';
            }
            return '';
          },
          margin: 8,
          reservedSize: 30,
        ),
      ),
      borderData: FlBorderData(
          show: true,
          border: const Border(
            bottom: BorderSide(
              color: Color(0xff4e4965),
              width: 4,
            ),
            left: BorderSide(
              color: Colors.transparent,
            ),
            right: BorderSide(
              color: Colors.transparent,
            ),
            top: BorderSide(
              color: Colors.transparent,
            ),
          )),
      minX: 0,
      maxX: 14,
      maxY: 6,
      minY: 0,
      lineBarsData: linesBarData2(),
    );
  }

  List<LineChartBarData> linesBarData2() {
    return [
      LineChartBarData(
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 4),
          FlSpot(5, 1.8),
          FlSpot(7, 5),
          FlSpot(10, 2),
          FlSpot(12, 2.2),
          FlSpot(13, 1.8),
        ],
        isCurved: true,
        curveSmoothness: 0,
        colors: const [
          Color(0x444af699),
        ],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(
          show: false,
        ),
      ),
      LineChartBarData(
        spots: [
          FlSpot(1, 1),
          FlSpot(3, 2.8),
          FlSpot(7, 1.2),
          FlSpot(10, 2.8),
          FlSpot(12, 2.6),
          FlSpot(13, 3.9),
        ],
        isCurved: true,
        colors: const [
          Color(0x99aa4cfc),
        ],
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(
          show: false,
        ),
        belowBarData: BarAreaData(show: true, colors: [
          const Color(0x33aa4cfc),
        ]),
      ),
      LineChartBarData(
        spots: [
          FlSpot(1, 3.8),
          FlSpot(3, 1.9),
          FlSpot(6, 5),
          FlSpot(10, 3.3),
          FlSpot(13, 4.5),
        ],
        isCurved: true,
        curveSmoothness: 0,
        colors: const [
          Color(0x4427b6fc),
        ],
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(
          show: false,
        ),
      ),
    ];
  }
}