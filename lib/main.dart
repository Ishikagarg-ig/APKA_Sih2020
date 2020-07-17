import 'package:apka/screens/hompage.dart';
import 'package:flutter/material.dart';
import 'package:apka/screens/splash_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'authentication/sign_in.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    //googleSignIn.signOut();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:
      AppStart(),
    );
  }
}
