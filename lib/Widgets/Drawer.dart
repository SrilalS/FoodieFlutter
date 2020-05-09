import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Styles/Style.dart';

Widget drawer() {
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
              onTap: (){},
                          child: ListTile(
                title: Text('Home'),
              ),
            ),
            InkWell(
              onTap: (){},
                          child: ListTile(
                title: Text('Foods'),
              ),
            ),
            InkWell(
              onTap: (){},
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
