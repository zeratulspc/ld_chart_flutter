import 'package:flutter/material.dart';

class CardForm extends StatefulWidget {
  final int v1, v2, v3, v4, v5;
  final String title, s1, s2, s3, s4, s5;
  final VoidCallback nextPage;

  CardForm({this.v1, this.v2, this.v3, this.v4, this.v5, this.nextPage,
    this.title, this.s1, this.s2, this.s3, this.s4, this.s5,
  });

  @override
  CardFormState createState() => CardFormState(v1,v2,v3,v4,v5,nextPage,title,s1,s2,s3,s4,s5);
}


class CardFormState extends State<CardForm> {
  final int v1, v2, v3, v4, v5;
  final String title,s1,s2,s3,s4,s5;
  final VoidCallback nextPage;

  CardFormState(this.v1, this.v2, this.v3, this.v4, this.v5, this.nextPage,
    this.title, this.s1, this.s2, this.s3, this.s4, this.s5);

  int v = 0;

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
            child: Text(title, style: titleStyle,),
          ),
          RadioListTile(
            groupValue: v,
            value: v1,
            title: Text(s1, style: listStyle,),
            onChanged: (int c) {
              setState(() {
                v = c;
              });
              nextPage();
            },
          ),
          RadioListTile(
            groupValue: v,
            value: v2,
            title: Text(s2, style: listStyle,),
            onChanged: (int c) {
              setState(() {
                v = c;
              });
              nextPage();
            },
          ),
          RadioListTile(
            groupValue: v,
            value: v3,
            title: Text(s3, style: listStyle,),
            onChanged: (int c) {
              setState(() {
                v = c;
              });
              nextPage();
            },
          ),
          RadioListTile(
            groupValue: v,
            value: v4,
            title: Text(s4, style: listStyle,),
            onChanged: (int c) {
              setState(() {
                v = c;
              });
              nextPage();
            },
          ),
          RadioListTile(
            groupValue: v,
            value: v5,
            title: Text(s5, style: listStyle,),
            onChanged: (int c) {
              setState(() {
                v = c;
              });
              nextPage();
            },
          ),
        ],
      ),
    );
  }
}