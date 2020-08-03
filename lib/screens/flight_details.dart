import 'package:apka/screens/HomeAirport2_screen.dart';
import 'package:apka/screens/home_page.dart';
import 'package:apka/screens/weatherdetails_page.dart';
import 'package:apka/testing/counters.dart';
import 'package:apka/testing/scan123.dart';
import 'package:apka/widgets/Navbar.dart';
import 'package:apka/widgets/dialogBox.dart';
import 'package:apka/widgets/fabCircularMenu.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

import 'HomeAirport1_screen.dart';
import 'coronaCases_page.dart';

class FlightDetail extends StatefulWidget {
  @override
  _FlightDetailState createState() => _FlightDetailState();
}

class _FlightDetailState extends State<FlightDetail> {
  DialogBox dialogBox=new DialogBox();
  FabCircularMnu fabCircularMnu = new FabCircularMnu();
  @override
  Widget build(BuildContext context) {
    return  new WillPopScope(
    onWillPop: () async {
      Navigator.of(context).push(
        //Navigator.pop(context);
        MaterialPageRoute(
          builder: (context) {
            return Navbar();
          },
        ),
      );
    return false;
    },
      child:Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.586,
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
                  child: Align(
                    child: Padding(
                      padding: const EdgeInsets.only(top:25.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:300.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>Navbar()));
                              },
                              child: Text("SKIP",textAlign:TextAlign.end,style: TextStyle(color: Colors.redAccent,fontSize: 20),),
                            ),
                          ),
                          Center(
                            child: Text(
                              "FLIGHT DETAILS",
                              style: TextStyle(
                                fontSize: 29.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Text("IXC",style: TextStyle(fontSize: 28,color: Colors.white),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text("Chandigarh",style: TextStyle(fontSize: 16,color: Colors.white)),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (
                                              context) =>
                                              CoronaCases(state: "CH",
                                                  district: "Chandigarh")));
                                        },
                                          child: Image(image: AssetImage('assets/icons/coronavirus.png'),height: 30,width:30,color:Colors.white)),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage('assets/icons/aeroplane.png'),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text("2hr 40min.",style: TextStyle(fontSize: 16,color: Colors.white)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text("BLR",style: TextStyle(fontSize: 28,color: Colors.white),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:8.0),
                                        child: Text("Bangaluru",style: TextStyle(fontSize: 16,color: Colors.white)),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (
                                              context) =>
                                              CoronaCases(state: "KA",
                                                  district: "Bengaluru Urban")));
                                        },
                                          child: Image(image: AssetImage('assets/icons/coronavirus.png'),height: 30,width:30,color:Colors.white)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
            ),
            Container(
              margin: EdgeInsets.only(top:230,left: 20, right: 20),
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height*0.58,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 2,
                    spreadRadius: 4,
                    offset: Offset(5,5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("PASSENGER",style: TextStyle(color: Hexcolor('#736666'),fontSize: 20.0),),
                      Text("-",style: TextStyle(fontSize: 30),),
                      Text("Ms. Ishika Garg",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 20.0),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("PNR No.",style: TextStyle(color: Hexcolor('#736666'),fontSize: 20.0),),
                      Text("-",style: TextStyle(fontSize: 30),),
                      Text("MZXTIF",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 20.0),),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Flight Name",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("Indigo",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 22.0),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Flight No.",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("6E 592",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 22.0),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Departure Time",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("11:10 am",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 22.0),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Arrival Time",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("12:00 pm",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 22.0),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("Departure Date",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("26Jun20",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 22.0),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Arrival Date",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("26Jun20",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 22.0),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text("From/Terminal",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("T2",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 22.0),),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("To/Terminal",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("T1",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 22.0),),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:700.0,bottom: 20),
              child: Column(
                children: [
                  RaisedButton(
                    padding: EdgeInsets.only(left: 40,right: 40,top: 12,bottom: 12),
                    color: Hexcolor('#152971'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ChooseScreen2();
                          },
                        ),
                      );
                    },
                    child: Text("Generate Boarding Pass",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                  ),
                  SizedBox(height:20),
                  Container(
                    //margin: EdgeInsets.only(top:10.0),
                    decoration: BoxDecoration(
                      color: Hexcolor('#E5E5E5'),
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                          spreadRadius: 3,
                          offset: Offset(8,8),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          RaisedButton(
                            padding: EdgeInsets.only(left: 40,right: 40,top: 12,bottom: 12),
                            color: Hexcolor('#152971'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Screen1()));
                            },
                            child: Text("Auto Planning",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                          ),
                  SizedBox(height:15),
                  RaisedButton(
                      padding: EdgeInsets.only(left: 40,right: 40,top: 12,bottom: 12),
                      color: Hexcolor('#152971'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeAirport2()));
                      },
                      child: Text("Mannual Planning",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                  ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height:20),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("News Feed",textAlign:TextAlign.start,style: TextStyle(color: Hexcolor('#736666'),fontSize: 24),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(width: 5,),
                              GestureDetector(
                                onTap: (){
                                  dialogBox.Corona(context, "fbj");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom:10.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color.fromRGBO(0, 0, 0, 0.25),
                                            blurRadius: 4,
                                            spreadRadius: 3,
                                            offset: Offset(5,5),
                                          ),
                                        ],
                                      ),
                                      child: Image(image: AssetImage('assets/images/Screenshot (19).png'),height:80,width: 230,)),
                                ),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                  dialogBox.Weather(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom:10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          blurRadius: 4,
                                          spreadRadius: 3,
                                          offset: Offset(5,5),
                                        ),
                                      ],
                                    ),
                                    child: Image(image: AssetImage('assets/images/Screenshot (20).png'),height:80,width: 230,),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: () async{
                                  // dialogBox.Weather(context);
                                  final url = 'https://www.mygov.in/aarogya-setu-app/';
                                  if (await canLaunch(url)) {
                                    await launch(
                                      url,
                                      forceSafariVC: false,
                                    );
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom:10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          blurRadius: 4,
                                          spreadRadius: 3,
                                          offset: Offset(5,5),
                                        ),
                                      ],
                                    ),
                                    child: Image(image: AssetImage('assets/images/Screenshot (23).png'),height:80,width: 230,),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              GestureDetector(
                                onTap: (){
                                 // dialogBox.Weather(context);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(bottom:10.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15.0),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          blurRadius: 4,
                                          spreadRadius: 3,
                                          offset: Offset(5,5),
                                        ),
                                      ],
                                    ),
                                    child: Image(image: AssetImage('assets/images/Screenshot (24).png'),height:80,width: 230,),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height:10),
                ],
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}
