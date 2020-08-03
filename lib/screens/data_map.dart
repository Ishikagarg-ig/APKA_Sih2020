import 'package:flutter/material.dart';

class DataMap extends StatefulWidget {
  static String id='datamap';
  @override
  _DataMapState createState() => _DataMapState();
}

class _DataMapState extends State<DataMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
         title: new Text('Data Map'),
     ),
     body: new  Center(
      child: Image(image:AssetImage('images/map.png'),
     )
    ),
    );
  }
}
