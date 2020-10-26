import 'package:flutter/material.dart';

typedef void Selected(int value);

class CardForm extends StatefulWidget {
  final int v1, v2, v3, v4, v5, vi;
  final String title, s1, s2, s3, s4, s5,bio;
  final Selected nextPage;

  CardForm({this.v1, this.v2, this.v3, this.v4, this.v5, this.nextPage, this.vi,
    this.title, this.s1, this.s2, this.s3, this.s4, this.s5,this.bio
  });

  @override
  CardFormState createState() => CardFormState(v1,v2,v3,v4,v5,nextPage,vi,title,s1,s2,s3,s4,s5,bio);
}


class CardFormState extends State<CardForm> {
  final int v1, v2, v3, v4, v5, vi; // vi : 초기화용
  final String title,s1,s2,s3,s4,s5,bio;
  final Selected nextPage;

  CardFormState(this.v1, this.v2, this.v3, this.v4, this.v5, this.nextPage, this.vi,
    this.title, this.s1, this.s2, this.s3, this.s4, this.s5,this.bio);

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
              colors: [Colors.deepPurpleAccent, Colors.deepPurple]
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
                child: Text(title, style: titleStyle,),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,top: 0, bottom: 10),
                child: Text(bio, style: listStyle,),
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
                activeColor: Colors.white,
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
                activeColor: Colors.white,
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
                activeColor: Colors.white,
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
                activeColor: Colors.white,
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