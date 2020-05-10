import 'package:flutter/material.dart';
import 'package:foodie/Pages/Catalogs.dart';
import 'package:foodie/Pages/SignUp.dart';
import 'package:foodie/Services/Streams.dart';

Widget currentView = Catalog();
void setView(Widget view){
  currentView = view;
  mainStream.sink.add('ViewChange');
}

String text = 'Test';
bool valer = true;

bool isLoggedIn = true;
void setisLoggedIn(bool data){
  isLoggedIn = data;
}