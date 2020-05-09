

import 'package:flutter/material.dart';

Widget homePage(){
  return Center(
    child :Column(children: <Widget>[
      Expanded(child: PageView(children: <Widget>[
        Icon(Icons.add),
        Icon(Icons.dashboard),
        Icon(Icons.hd),
        
      ],))
    ],)
  );
}