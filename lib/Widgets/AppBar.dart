import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Pages/SignIn.dart';
import 'package:foodie/Services/DataStructure.dart';
import 'package:foodie/Services/Streams.dart';
import 'package:foodie/Styles/Style.dart';

Widget appBar(context) {
  double h = MediaQuery.of(context).size.height;
  double w = MediaQuery.of(context).size.width;
  return AppBar(
    title: Row(
      children: <Widget>[
        Text('Foodie.lk'),
        SizedBox(
          width: 8,
        ),
        w>h ? Row(
          children: <Widget>[
            FlatButton(
                hoverColor: Colors.blue[700],
                onPressed: () {},
                child: Text(
                  'Home',
                  style: whiteText(16),
                )),
            FlatButton(
                hoverColor: Colors.blue[700],
                onPressed: () {},
                child: Text(
                  'Foods',
                  style: whiteText(16),
                )),
            FlatButton(
                hoverColor: Colors.blue[700],
                onPressed: () {},
                child: Text(
                  'Shops',
                  style: whiteText(16),
                )),
          ],
        ): Container(),
      ],
    ),
    actions: <Widget>[
      Container(
        padding: EdgeInsets.all(8),
        child: RaisedButton(
            color: Colors.white,
            child: Text('Sign In'),
            shape: rounder(64.0),
            onPressed: () {
              setView(SignIn());
            }),
      ),
    ],
  );
}
