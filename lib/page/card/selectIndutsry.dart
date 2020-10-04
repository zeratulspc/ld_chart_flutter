import 'package:flutter/material.dart';

class SelectIndustry extends StatefulWidget {
  @override
  SelectIndustryState createState() => SelectIndustryState();
}

class SelectIndustryState extends State<SelectIndustry> {

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
          Container(
            width: screenSize.width/1.1,
            height: screenSize.height/1.4,
            //color: Colors.green,
            margin: EdgeInsets.only(left: 15,bottom: 15),
          ),
        ],
      ),
    );
  }
}