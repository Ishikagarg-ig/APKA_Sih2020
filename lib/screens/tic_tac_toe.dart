import 'package:apka/screens/tic_tac2.dart';
import 'tic_tac2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(tic_tac_toe());
}

class tic_tac_toe extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.black),
      home: new Tic_tac2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

