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
    TextStyle titleStyle = Theme.of(context).textTheme.subtitle1;
    TextStyle listStyle = TextStyle(color: Colors.black87);
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 15,top: 15, bottom: 15),
            child: Text("업종 선택", style: titleStyle,),
          ),
          RadioListTile(
            groupValue: v,
            value: 1,
            title: Text("음식점", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
          RadioListTile(
            groupValue: v,
            value: 2,
            title: Text("인테리어", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
          RadioListTile(
            groupValue: v,
            value: 3,
            title: Text("헬스", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
          RadioListTile(
            groupValue: v,
            value: 4,
            title: Text("학원", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
          RadioListTile(
            groupValue: v,
            value: 5,
            title: Text("병원", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
          RadioListTile(
            groupValue: v,
            value: 6,
            title: Text("분양", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
          RadioListTile(
            groupValue: v,
            value: 7,
            title: Text("문화", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
          RadioListTile(
            groupValue: v,
            value: 8,
            title: Text("서비스", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
          RadioListTile(
            groupValue: v,
            value: 9,
            title: Text("기타", style: listStyle,),
            onChanged: (int v) => onChanged(v),
          ),
        ],
      ),
    );
  }
}