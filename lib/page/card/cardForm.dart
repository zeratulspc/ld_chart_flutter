import 'package:flutter/material.dart';

class CardFrom {

  Widget mainCard({String title, BuildContext context,
    int v1, int v2, int v3, int v4, int v5,
    String s1, String s2,String s3,String s4,String s5}) {
    TextStyle titleStyle = Theme.of(context).textTheme.headline5;
    TextStyle bodyStyle = Theme.of(context).textTheme.subtitle1;
    return Card(
      child: Column(
        children: [
          Text(title, style: titleStyle,),
          Container(
            child: Row(
              children: [
                Text(s1, style: bodyStyle,),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(s2, style: bodyStyle,),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(s3, style: bodyStyle,),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(s4, style: bodyStyle,),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Text(s5, style: bodyStyle,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}