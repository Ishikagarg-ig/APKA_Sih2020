import 'dart:convert' as convert;

import 'package:apka/widgets/dialogBox.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BusBestPlanInfo extends StatefulWidget {
  BusBestPlanInfo({this.from,this.time});
  final from,time;
  @override
  _BusBestPlanInfoState createState() => _BusBestPlanInfoState();
}

class _BusBestPlanInfoState extends State<BusBestPlanInfo> {
  DialogBox dialogBox =new DialogBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Best Plans For You",),
        backgroundColor: Hexcolor('#152971'),
        ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.36,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Hexcolor('#152971'),
                    Hexcolor('#050F32'),
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(0.0, 1.0),
                  stops: [0.0, 0.7],
                  tileMode: TileMode.clamp,
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(70.0),
                  bottomLeft: Radius.circular(70.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:38.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text("${widget.from}",style: TextStyle(fontSize: 25,color: Colors.white),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/icons/aeroplane.png'),),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text("${widget.from}\n Airport",style: TextStyle(fontSize: 25,color: Colors.white),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                margin: EdgeInsets.only(top:131),
                height: MediaQuery.of(context).size.height*0.1955,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 2,
                      spreadRadius: 4,
                      offset: Offset(5,5),
                    ),
                  ],
                ),
                child: Align(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Column(
                          children: [
                            Icon(Icons.directions_bus,size: 40,color: Hexcolor('#050F32'),),
                            Text("SmartBus",style: TextStyle(color: Hexcolor('#152971'),fontSize: 17,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("${widget.time}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("${widget.from}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                            Padding(
                              padding: const EdgeInsets.only(top:22.0),
                              child: Text("Bus No.: 1202",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 15),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Column(
                          children: [
                            Text("",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32')),),
                            Row(
                              children: [
                                Container(
                                  width:29.0,
                                  height: 3.0,
                                  color: Colors.black,
                                ),
                                Image(image: AssetImage('assets/images/rectangle.png'),height: 20.0,width: 20.0,),
                                Container(
                                  width:29.0,
                                  height: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            Text("AC Luxury",style: TextStyle(color: Hexcolor('#237354'),fontSize: 13,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("09:45 am",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("${widget.from}\nAirport",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top:232,right: 30),
              child: RaisedButton(
                padding: EdgeInsets.only(left: 15,right: 15,top: 12,bottom: 12),
                color: Hexcolor('#152971'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                onPressed: (){
                  dialogBox.SuccessfullyBooked(context);
                },
                child: Text("Book Now",style: TextStyle(color: Colors.white,fontSize: 18.0,),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                margin: EdgeInsets.only(top:286),
                height: MediaQuery.of(context).size.height*0.1955,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      blurRadius: 2,
                      spreadRadius: 4,
                      offset: Offset(5,5),
                    ),
                  ],
                ),
                child: Align(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Column(
                          children: [
                            Icon(Icons.directions_bus,size: 40,color: Hexcolor('#050F32'),),
                            Text("Kaveri Bus",style: TextStyle(color: Hexcolor('#152971'),fontSize: 17,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("${widget.time}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("${widget.from}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                            Padding(
                              padding: const EdgeInsets.only(top:22.0),
                              child: Text("Bus No.: 1003",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 15),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Column(
                          children: [
                            Text("",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32')),),
                            Row(
                              children: [
                                Container(
                                  width:29.0,
                                  height: 3.0,
                                  color: Colors.black,
                                ),
                                Image(image: AssetImage('assets/images/rectangle.png'),height: 20.0,width: 20.0,),
                                Container(
                                  width:29.0,
                                  height: 3.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            Text("Non AC",style: TextStyle(color: Hexcolor('#237354'),fontSize: 13,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("09:45 am",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("${widget.from}\nAirport",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top:387,right: 30),
              child: RaisedButton(
                padding: EdgeInsets.only(left: 15,right: 15,top: 12,bottom: 12),
                color: Hexcolor('#152971'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                onPressed: (){
                  dialogBox.SuccessfullyBooked(context);
                },
                child: Text("Book Now",style: TextStyle(color: Colors.white,fontSize: 18.0,),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
