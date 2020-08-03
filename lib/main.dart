import 'package:apka/screens/firstPage.dart';
import 'package:apka/testing/FoodNotifier.dart';
import 'package:flutter/material.dart';
import 'package:apka/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
  providers: [

    ChangeNotifierProvider(
      create: (context) => FoodNotifier(),
    ),
  ],
  child: MyApp(),
));

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
      debugShowCheckedModeBanner: false,
      home:FirstPage(),

      //AppStart(),
    );
  }
}
