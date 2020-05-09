import 'package:flutter/material.dart';

RoundedRectangleBorder rounder(double size){
  return RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(size)
  );
}

TextStyle whiteText(double size){
  return TextStyle(
    fontSize: size,
    color: Colors.white
  );
}

TextStyle blackText(double size){
  return TextStyle(
    fontSize: size,
    color: Colors.black
  );
}