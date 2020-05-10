import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/Services/Streams.dart';

class Catalog extends StatefulWidget {
  @override
  _CatalogState createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  Stream catStream = Firestore.instance.collection('FOODS').snapshots();

  bool testTogle = false;
  List<bool> shopCheckBoxes = [];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: StreamBuilder(
            stream: catStream,
            builder: (context, data) {
              if (data.connectionState == ConnectionState.waiting) {
                return Column(
                  children: <Widget>[
                    LinearProgressIndicator(),
                  ],
                );
              }

              return Row(
                children: <Widget>[
                  Expanded(flex: 1, child: catControl()),
                  Expanded(
                    flex: 4,
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: GridView.count(
                            crossAxisCount: 4,
                            children: List.generate(data.data.documents.length,
                                (index) {
                              return Container(
                                height: MediaQuery.of(currentBuildContext)
                                    .size
                                    .height,
                                child: Card(
                                    margin: EdgeInsets.all(8),
                                    elevation: 4,
                                    child: Column(
                                      children: <Widget>[
                                        Text('Item $index'),
                                        Text(data.data.documents[0]['N']),
                                      ],
                                    )),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }));
  }

  Widget catControl() {
    return Column(
        children: <Widget>[
    Card(
        elevation: 2,
        child: Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.only(left: 4, right: 4),
                  child: TextField(
                    
          decoration: InputDecoration(
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent
              )
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent
              )
            ),
            labelText: 'Search',
            icon: Icon(Icons.search),
          ),
        ),
      )
    ],
        ),
      ),
    Text('Filter by Shop'),
    CheckboxListTile(
      title: Text('Shop 1'),
        value: testTogle,
        onChanged: (value) {
          setState(() {
            testTogle = value;
          });
        }),
      CheckboxListTile(
      title: Text('Shop 1'),
        value: testTogle,
        onChanged: (value) {
          setState(() {
            testTogle = value;
          });
        }),
        ],
      );
  }

  Widget checkboxes(String shopName, int statusindex){
    return CheckboxListTile(
          title: Text(shopName),
            value: shopCheckBoxes[statusindex],
            onChanged: (value) {
              setState(() {
                shopCheckBoxes[statusindex] = value;
              });
            });
  }
}
