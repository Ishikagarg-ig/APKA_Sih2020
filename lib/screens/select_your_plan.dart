import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
class selectyourPlan extends StatefulWidget {
  @override
  _selectyourPlanState createState() => _selectyourPlanState();
}

class _selectyourPlanState extends State<selectyourPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height*0.14,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 3.0,
                  ),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SafeArea(
                        child: IconButton(
                          icon: Icon(Icons.keyboard_backspace,color: Hexcolor('#050F32') ,size: 40,),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                      )
                      )
                    ],

                  ),
                  SizedBox(width: 45),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SafeArea(
                          child: Text('Select Your Plan',style: TextStyle(fontSize: 30.0,color: Hexcolor('#050F32'),fontWeight: FontWeight.w600))
                      )
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){

              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.25,
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
                        Text("Sector 9 - Airport(tml 3)",
                          style: TextStyle(
                          fontSize: 20.0,
                          color: Hexcolor('#050F32'),
                          ),),
                        Text("Taxi Time  - 6:15 am",
                          style: TextStyle(
                          fontSize: 20.0,
                          color: Hexcolor('#050F32'),
                          ),),
                        Text("Date - 16 July",
                          style: TextStyle(
                          fontSize: 20.0,
                          color: Hexcolor('#050F32'),
                          ),),
                        Text("Distance  - 16 KM",
                          style: TextStyle(
                          fontSize: 20.0,
                          color: Hexcolor('#050F32'),
                          ),)
                    ]
                        )
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.25,
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
                          Text("Sector 9 - Airport(tml 3)",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Taxi Time  - 6:15 am",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Date - 16 July",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Distance  - 16 KM",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),)
                        ]
                    )
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.25,
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
                          Text("Sector 9 - Airport(tml 3)",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Taxi Time  - 6:15 am",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Date - 16 July",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Distance  - 16 KM",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),)
                        ]
                    )
                ),
              ),
            ),
            GestureDetector(
              onTap: (){

              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: Container(
                    width: MediaQuery.of(context).size.width*0.9,
                    height: MediaQuery.of(context).size.height*0.25,
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
                          Text("Sector 9 - Airport(tml 3)",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Taxi Time  - 6:15 am",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Date - 16 July",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),),
                          Text("Distance  - 16 KM",
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Hexcolor('#050F32'),
                            ),)
                        ]
                    )
                ),
              ),
            ),
          ],
        ),
      )

    );
  }
}
