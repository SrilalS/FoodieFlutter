import 'dart:async';

import 'package:flutter/cupertino.dart';

final StreamController mainStream = StreamController();

BuildContext currentBuildContext;

void setContext(BuildContext context){
  currentBuildContext = context;
}