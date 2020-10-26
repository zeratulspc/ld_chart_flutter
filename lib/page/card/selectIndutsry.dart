import 'package:flutter/material.dart';

typedef void Selected(int value);

enum Industry {
  restaurant, //음식점 0
  interior, //인테리어 1
  health, //헬스 2
  academy, //학원 3
  hospital, //병원 4
  subDivision, //분양 5
  culture, //문화 6
  service, //서비스 7
  etc, //기타 8
}

class SelectIndustry extends StatefulWidget {
  final int vi;
  final Selected nextPage;

  SelectIndustry({this.nextPage, this.vi});

  @override
  SelectIndustryState createState() => SelectIndustryState(nextPage, vi);
}

class SelectIndustryState extends State<SelectIndustry> {
  final int vi;
  final Selected nextPage; // 선택 완료 후 Callback

  int v = 0;

  @override
  void initState() {
    super.initState();
    if(vi != 0) {
      setState(() {
        v = vi;
      });
    }
  }

  SelectIndustryState(this.nextPage, this.vi);

  void onChanged(int c) {
      setState(() {
        v = c;
      });
      nextPage(c);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    TextStyle titleStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 26);
    TextStyle listStyle = TextStyle(color: Colors.white70);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.deepPurpleAccent, Colors.deepOrangeAccent]
              ),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0,3)
                )
              ]
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 30,top: 30, bottom: 0),
                child: Text("업종선택", style: titleStyle,),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,top: 0, bottom: 10),
                child: Text("업종을 선택해주세요", style: listStyle,),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Divider(color: Colors.white, indent: 20, endIndent: 20,),
                ),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 1,
                title: Text("음식점", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 2,
                title: Text("인테리어", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 3,
                title: Text("헬스", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 4,
                title: Text("학원", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 5,
                title: Text("병원", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 6,
                title: Text("분양", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 7,
                title: Text("문화", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 8,
                title: Text("서비스", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              RadioListTile(
                activeColor: Colors.white,
                groupValue: v,
                value: 9,
                title: Text("기타", style: listStyle,),
                onChanged: (int v) => onChanged(v),
              ),
              SizedBox(height: 15,),
            ],
          ),
        )
      ],
    );
  }
}