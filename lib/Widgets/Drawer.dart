import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Pages/Catalogs.dart';
import 'package:foodie/Services/DataStructure.dart';
import 'package:foodie/Styles/Style.dart';

Widget drawer(context) {
  return Drawer(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                  height: 64,
                  color: Colors.blue,
                  child:
                      Center(child: Text('Foodie.lk', style: whiteText(24)))),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            InkWell(

              onTap: (){
                setView(Catalog());
                Navigator.pop(context);
              },
                          child: ListTile(
                title: Text('Home'),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
                          child: ListTile(
                title: Text('Foods'),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.pop(context);
              },
                          child: ListTile(
                title: Text('Shops'),
              ),
            )
          ],
        )
      ],
    ),
  );
}
