import 'package:apka/testing/onboard2.dart';
import 'package:apka/testing/scanning%20screen.dart';
import 'package:apka/testing/verificatonCounter.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'onborad.dart';
class ChooseScreen2 extends StatefulWidget {
  @override
  _ChooseScreen2State createState() => _ChooseScreen2State();
}

class _ChooseScreen2State extends State<ChooseScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.09,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Hexcolor('#152971'),
                    Hexcolor('#050F32'),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 2.3),
                  stops: [0.0, 0.7],
                  tileMode: TileMode.clamp,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(90.0),
                  bottomLeft: Radius.circular(90.0),
                ),
              ),
              child: Align(
                child: Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Boarding pass",
                        style: TextStyle(
                          fontSize: 29.0,
                          color: Colors.white,
                        ),
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.90,
              child: ListView(
                scrollDirection: Axis.vertical,
                //child: Column(
                  children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ScanScreen();
                              },
                            ),
                          );
                        },
//
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 30, 10, 0),
                          child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: MediaQuery.of(context).size.height*0.35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                    offset: Offset(-5,5),
                                  ),
                                ],
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/boarding2.png',
                                      height: 170,
                                      width:380,
                                    ),
                                    Row(

                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[ Text("Generate Boarding pass by\n web check-in",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Hexcolor('#152971'),
                                          ),),
                                        ]
                                    ),


                                  ]
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ScanScreen();
                              },
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 60, 20, 20),
                          child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: MediaQuery.of(context).size.height*0.35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                    offset: Offset(-5,5),
                                  ),
                                ],
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/boarding1.png',
                                      height: 170,
                                      width:380,
                                    ),
                                    Row(

                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[ Text("Generate Boarding pass by\n counter check-in",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Hexcolor('#152971'),
                                          ),),
                                        ]
                                    ),


                                  ]
                              )
                          ),
                        ),
                      ),
                    ],

                  ),
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ScanScreen2();
                              },
                            ),
                          );
                        },
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(40, 40, 10, 20),
                          child: Container(
                              width: MediaQuery.of(context).size.width*0.8,
                              height: MediaQuery.of(context).size.height*0.35,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromRGBO(0, 0, 0, 0.25),
                                    blurRadius: 4,
                                    spreadRadius: 3,
                                    offset: Offset(-5,5),
                                  ),
                                ],
                              ),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Image.asset(
                                      'assets/c24.png',
                                      height: 170,
                                      width:380,
                                    ),
                                    Row(

                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: <Widget>[ Text("VerificationCounter",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold,
                                            color: Hexcolor('#152971'),
                                          ),),
                                        ]
                                    ),


                                  ]
                              )
                          ),
                        ),
                      ),
                    ],

                  ),

                ],),
              ),
          //  ),
          ]



      ),
    );

      //Scaffold(
//      appBar: AppBar(
//        title: Text('Choose Your Screen'),
//      ),
//      body: Column(
//        children: <Widget>[
//          Expanded(
//            child: FlatButton(
//              child: Container(
//                color: Colors.black12,
//                height: 200,
//                width: 100,
//                child: Text('RecepptionScan'),),
//              onPressed: (){
//                Navigator.of(context).push(
//                  MaterialPageRoute(
//                    builder: (context) {
//                      return ScanScreen();
//                    },
//                  ),
//                );
//              },
//            ),
//          ),
//          Expanded(
//            child: FlatButton(
//              child: Container(
//                color: Colors.black12,
//                height: 200,
//                width: 100,
//                child: Text('Verification Counter'),),
//              onPressed: (){
//                Navigator.of(context).push(
//                  MaterialPageRoute(
//                    builder: (context) {
//                      return ScanScreen2();
//                    },
//                  ),
//                );
//              },
//            ),
//          ),
//        ],
//      ),
//    ) ;

  }
}
