import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:ld_chart_flutter/page/card/cardForm.dart';
import 'package:ld_chart_flutter/page/card/selectIndutsry.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  PageController pageController = PageController();
  int v1,v2,v3,v4,v5 = 0;
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("LD CHART"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: screenSize.width,
            child: PageView(
              controller: pageController,
              children: <Widget>[
                CardForm(
                  title: "종업원 수",
                  v1: 1,v2: 3,v3: 5,v4: 7,v5: 10, vi: v1,
                  s1: "1명",s2: "3명",s3: "5명",s4: "7명",s5: "10명",
                  nextPage: (int v){
                    pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
                    setState(() {
                      v1 = v;
                    });
                  },
                ),
                CardForm(
                  title: "일일 매출",
                  v1: 100000,v2: 300000,v3: 500000,v4: 700000,v5: 1000000,vi: v2,
                  s1: "100,000",s2: "300,000",s3: "500,000",s4: "700,000",s5: "1,000,000",
                  nextPage: (int v){
                    pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
                    setState(() {
                      v2 = v;
                    });
                  },
                ),
                CardForm(
                  title: "주간 매출",
                  v1: 700000,v2: 2100000,v3: 3500000,v4: 4900000,v5: 7000000,vi: v3,
                  s1: "700,000",s2: "2,100,000",s3: "3,500,000",s4: "4,900,000",s5: "7,000,000",
                  nextPage: (int v){
                    pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
                    setState(() {
                      v3 = v;
                    });
                  },
                ),
                CardForm(
                  title: "월간 매출",vi: v4,
                  v1: 3000000,v2: 9000000,v3: 15000000,v4: 21000000,v5: 30000000,
                  s1: "3,000,000",s2: "9,000,000",s3: "15,000,000",s4: "21,000,000",s5: "30,000,000",
                  nextPage: (int v){
                    pageController.nextPage(duration: Duration(milliseconds: 250), curve: Curves.fastOutSlowIn);
                    setState(() {
                      v4 = v;
                    });
                  },
                ),
                SelectIndustry(),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15),
            alignment: Alignment.bottomCenter,
            child: SmoothPageIndicator(
              controller: pageController,
              count: 5,
            )
          ),
        ],
      ),
    );
  }
}
