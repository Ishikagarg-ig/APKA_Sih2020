import 'package:apka/widgets/dialogBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class FlightInfo extends StatefulWidget {
  @override
  _FlightInfoState createState() => _FlightInfoState();
}

class _FlightInfoState extends State<FlightInfo> {

  DialogBox dialogBox= new DialogBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          Text("IXC",style: TextStyle(fontSize: 28,color: Colors.white),),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text("Chandigarh",style: TextStyle(fontSize: 16,color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/icons/aeroplane.png'),),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text("40 min.",style: TextStyle(fontSize: 16,color: Colors.white)),
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
                            Image(image: AssetImage('assets/images/airasia.jpg'),height: 46,width: 48,),
                            Text("AirAsia",style: TextStyle(color: Hexcolor('#152971'),fontSize: 17,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("07:45",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("Chandigarh",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                            Padding(
                              padding: const EdgeInsets.only(top:25.0),
                              child: Text("Rs.4,638",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Column(
                          children: [
                            Text("2h 50m",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32')),),
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
                            Text("No Stop",style: TextStyle(color: Hexcolor('#237354'),fontSize: 13,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("10:35",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("Bangalore",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
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
                            Image(image: AssetImage('assets/images/indigo.png'),height: 48,width: 48,),
                            Text("Indigo",style: TextStyle(color: Hexcolor('#152971'),fontSize: 17,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("09:20",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("Chandigarh",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                            Padding(
                              padding: const EdgeInsets.only(top:25.0),
                              child: Text("Rs.7,173",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Column(
                          children: [
                            Text("9h 15m",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32')),),
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
                            Text("1 stop via Kolkata",style: TextStyle(color: Hexcolor('#237354'),fontSize: 13,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("18:35",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("Bangalore",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
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
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10.0),
              child: Container(
                margin: EdgeInsets.only(top:441),
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
                            Image(image: AssetImage('assets/images/indigo.png'),height: 46,width: 48,),
                            Text("Indigo",style: TextStyle(color: Hexcolor('#152971'),fontSize: 17,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("09:40",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("Chandigarh",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                            Padding(
                              padding: const EdgeInsets.only(top:25.0),
                              child: Text("Rs.7,173",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Column(
                          children: [
                            Text("9h 15m",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32')),),
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
                            Text("1 Stop via New Delhi",style: TextStyle(color: Hexcolor('#237354'),fontSize: 13,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("22:00",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("Bangalore",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
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
              margin: EdgeInsets.only(top:542,right: 30),
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
                margin: EdgeInsets.only(top:596),
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
                            Image(image: AssetImage('assets/images/air india.png'),height: 46,width: 48,),
                            Text("Air India",style: TextStyle(color: Hexcolor('#152971'),fontSize: 17,fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("14:10",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("Chandigarh",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                            Padding(
                              padding: const EdgeInsets.only(top:25.0),
                              child: Text("Rs.9,040",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Column(
                          children: [
                            Text("7h 50m",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32')),),
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
                            Text("1 Stop via New Delhi",style: TextStyle(color: Hexcolor('#237354'),fontSize: 13,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Column(
                          children: [
                            Text("22:00",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                            Text("Bangalore",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
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
              margin: EdgeInsets.only(top:697,right: 30),
              child: RaisedButton(
                padding: EdgeInsets.only(left: 15,right: 15,top: 12,bottom: 12),
                color: Hexcolor('#152971'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                onPressed: (){
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
