import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Styles/Style.dart';

Widget drawer(){
  return Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          color: Colors.blue,
          child: Text('Foodie.lk',style: whiteText(24)),
        )
      ],
    ),
  );
}