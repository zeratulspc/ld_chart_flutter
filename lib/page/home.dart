import 'dart:wasm';

import 'package:flutter/material.dart';
import 'package:ld_chart_flutter/page/card/cardForm.dart';
import 'package:ld_chart_flutter/page/card/selectIndutsry.dart';
import 'package:ld_chart_flutter/page/chart/chartpage.dart';
import 'package:page_transition/page_transition.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  ScrollController scrollController = ScrollController();
  int v1,v2,v3,v4,v5 = 0;
  bool isAllSelected = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: isAllSelected ? FloatingActionButton.extended(
        icon: Icon(Icons.keyboard_tab),
        label: Text("결과확인",),
        onPressed: (){
            Navigator.push(context, PageTransition(child: ChartPage(v1: v1,v2: v2,v3: v3,v4: v4,v5: v5,), type: PageTransitionType.rightToLeft));
        },
      ) : null,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("LD Survery" ,style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 26),)
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: screenSize.width,
            child: ListView(
              controller: scrollController,
              children: <Widget>[
                CardForm(
                  title: "종업원 수",
                  bio: "종업원 수를 선택해주세요",
                  v1: 1,v2: 3,v3: 5,v4: 7,v5: 10, vi: v1,
                  s1: "1명",s2: "3명",s3: "5명",s4: "7명",s5: "10명",
                  nextPage: (int v){
                    scrollController.animateTo(430, duration: Duration(milliseconds: 600), curve: Curves.ease);
                    setState(() {
                      v1 = v;
                    });
                    if(v1 != 0 && v2 != 0 && v3 != 0 && v4 != 0 && v5 != 0) {
                      setState(() {
                        isAllSelected = true;
                      });
                    }
                  },
                ),
                CardForm(
                  title: "일일 매출",
                  bio: "일일 매출을 선택해주세요",
                  v1: 100000,v2: 300000,v3: 500000,v4: 700000,v5: 1000000,vi: v2,
                  s1: "100,000",s2: "300,000",s3: "500,000",s4: "700,000",s5: "1,000,000",
                  nextPage: (int v){
                    scrollController.animateTo((430*2).roundToDouble(), duration: Duration(milliseconds: 600), curve: Curves.ease);
                    setState(() {
                      v2 = v;
                    });
                    if(v1 != 0 && v2 != 0 && v3 != 0 && v4 != 0 && v5 != 0) {
                      setState(() {
                        isAllSelected = true;
                      });
                    }
                  },
                ),
                CardForm(
                  title: "주간 매출",
                  bio: "주간 매출을 선택해주세요",
                  v1: 700000,v2: 2100000,v3: 3500000,v4: 4900000,v5: 7000000,vi: v3,
                  s1: "700,000",s2: "2,100,000",s3: "3,500,000",s4: "4,900,000",s5: "7,000,000",
                  nextPage: (int v){
                    scrollController.animateTo((430*3).roundToDouble(), duration: Duration(milliseconds: 600), curve: Curves.ease);
                    setState(() {
                      v3 = v;
                    });
                    if(v1 != 0 && v2 != 0 && v3 != 0 && v4 != 0 && v5 != 0) {
                      setState(() {
                        isAllSelected = true;
                      });
                    }
                  },
                ),
                CardForm(
                  title: "월간 매출",
                  bio: "월간 매출을 선택해주세요",
                  vi: v4, v1: 3000000,v2: 9000000,v3: 15000000,v4: 21000000,v5: 30000000,
                  s1: "3,000,000",s2: "9,000,000",s3: "15,000,000",s4: "21,000,000",s5: "30,000,000",
                  nextPage: (int v){
                    scrollController.animateTo((430*4).roundToDouble(), duration: Duration(milliseconds: 600), curve: Curves.ease);
                    setState(() {
                      v4 = v;
                    });
                    if(v1 != 0 && v2 != 0 && v3 != 0 && v4 != 0 && v5 != 0) {
                      setState(() {
                        isAllSelected = true;
                      });
                    }
                  },
                ),
                SelectIndustry(
                  vi: v5,
                  nextPage: (int v) {
                    setState(() {
                      v5 = v;
                    });
                    if(v1 != 0 && v2 != 0 && v3 != 0 && v4 != 0 && v5 != 0) {
                      setState(() {
                        isAllSelected = true;
                      });
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
