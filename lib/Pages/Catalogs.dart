import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Services/Streams.dart';

class Catalog extends StatefulWidget {
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Center(
    child: StreamBuilder(
      stream: Firestore.instance.collection('FOODS').snapshots(),
      builder: (context, data){
        return Expanded(
          flex: 1,
          child: GridView.count(
            crossAxisCount: 4,
            children: List.generate(data.data.documents.length, (index) {
              return Container(
                height: MediaQuery.of(currentBuildContext).size.height,
                child: Card(
                    margin: EdgeInsets.all(8),
                    elevation: 4,
                    child: Column(
                      children: <Widget>[
                        Text('Item $index'),
                      ],
                    )),
              );
            }),
          ),
        );
    })
  );
  }
}
