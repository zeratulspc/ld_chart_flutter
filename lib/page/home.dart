import 'package:flutter/material.dart';

import 'package:fl_chart/fl_chart.dart';
import 'package:ld_chart_flutter/page/card/bottom.dart';
import 'package:ld_chart_flutter/page/card/cardForm.dart';


class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("LD CHART"),
      ),
      body: ListView(
        children: [
          CardFrom().mainCard(
            title: "TEST", context: context,
            v1: 1,v2: 2,v3: 3,v4: 4,v5: 5,
            s1: "100,000",s2: "300,000",s3: "500,000",s4: "700,000",s5: "1,000,000",
          ),
        ],
      ),
    );
  }

}

/*

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

 */