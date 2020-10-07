import 'package:flutter/material.dart';

typedef void Selected(int value);

class CardForm extends StatefulWidget {
  final int v1, v2, v3, v4, v5, vi;
  final String title, s1, s2, s3, s4, s5;
  final Selected nextPage;

  CardForm({this.v1, this.v2, this.v3, this.v4, this.v5, this.nextPage, this.vi,
    this.title, this.s1, this.s2, this.s3, this.s4, this.s5,
  });

  @override
  CardFormState createState() => CardFormState(v1,v2,v3,v4,v5,nextPage,vi,title,s1,s2,s3,s4,s5,);
}


class CardFormState extends State<CardForm> {
  final int v1, v2, v3, v4, v5, vi; // vi : 초기화용
  final String title,s1,s2,s3,s4,s5;
  final Selected nextPage;

  CardFormState(this.v1, this.v2, this.v3, this.v4, this.v5, this.nextPage, this.vi,
    this.title, this.s1, this.s2, this.s3, this.s4, this.s5);

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

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    TextStyle titleStyle = Theme.of(context).textTheme.headline6;
    TextStyle listStyle = TextStyle(color: Colors.black87);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15,top: 15, bottom: 5),
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
                  nextPage(c);
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
                  nextPage(c);
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
                  nextPage(c);
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
                  nextPage(c);
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
                  nextPage(c);
                },
              ),
              SizedBox(height: 15,),
            ],
          ),
        )
      ],
    );
  }
}