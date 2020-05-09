import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Services/DataStructure.dart';
import 'package:foodie/Services/Streams.dart';
import 'package:foodie/Widgets/AppBar.dart';
import 'package:foodie/Widgets/Drawer.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {


  void setStater() {
    setState(() {
      var x;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    setContext(context);
    return Scaffold(
        appBar: appBar(context),
        drawer: drawer(context),
        //drawer: kIsWeb ? Container():drawer(),
        body: StreamBuilder(
            stream: mainStream.stream.asBroadcastStream(),
            builder: (context, dataflow) {
              print(dataflow.data.toString());
              return currentView;
            }));
  }
}
