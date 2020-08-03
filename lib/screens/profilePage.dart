import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Stack(
            children: [
              //Image(image: AssetImage('assets/images/map.png'),),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/profile.png'),height: 90,width: 90,),
                          Text("Sujeet Yadav",style: TextStyle(fontSize: 23,color: Hexcolor('#050F32')),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(0.0),
                      child: new LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width*0.48,
                        animation: true,
                        lineHeight: 20.0,
                        animationDuration: 2500,
                        percent: 0.9,
                        center: Text("10% - silver badge",style: TextStyle(color: Colors.white),),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Colors.green[800],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:0),
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/images/broze.png'),height: 55,width: 43,),
                          Text("200 points"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:190.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:15.0,right:15),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 4,
                              spreadRadius: 3,
                              offset: Offset(4,4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/icons/aeroplane.png'),height: 30,width: 24,color: Hexcolor('#050F32'),),
                                Text("Flights: ",style: TextStyle(color: Hexcolor('#736666'),fontSize: 28),),
                                Text("23",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text("Domestic",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("8",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("International",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("15",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20,left:15.0,right:15),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 4,
                              spreadRadius: 3,
                              offset: Offset(4,4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/images/miles.png'),height: 30,width: 24,color: Hexcolor('#050F32'),),
                                Text("Miles: ",style: TextStyle(color: Hexcolor('#736666'),fontSize: 28),),
                                Text("27,360",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text("km",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("44,060",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20,left:15.0,right:15),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 4,
                              spreadRadius: 3,
                              offset: Offset(4,4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(image: AssetImage('assets/images/time.png'),height: 30,width: 24,color: Hexcolor('#050F32'),),
                                Text("Time: ",style: TextStyle(color: Hexcolor('#736666'),fontSize: 28),),
                                Text("40hr 50min",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text("Days",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("130",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Months",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("4",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20,left:15.0,right:15),
                      child: Container(
                        height: 150,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 4,
                              spreadRadius: 3,
                              offset: Offset(4,4),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    Image(image: AssetImage('assets/icons/seat.png'),height: 30,width: 24,color: Hexcolor('#050F32'),),
                                  Text("Class",style: TextStyle(color: Hexcolor('#736666'),fontSize: 30),),
                                  ],
                                ),
                                 Column(
                                  children: [
                                    Text("Economy",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("2",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Economy+",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("7",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text("Business",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("10",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("First",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("3",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Private",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22),),
                                    Text("1",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),)
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0,bottom:20,left:15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height:100,
                            decoration: BoxDecoration(
                              color: Hexcolor('#FE6761'),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  blurRadius: 4,
                                  spreadRadius: 3,
                                  offset: Offset(4,4),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Flight per year",style: TextStyle(fontSize: 20,color: Colors.white),),
                                  Text("23",style: TextStyle(fontSize: 20,color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height:100,
                            decoration: BoxDecoration(
                              color: Hexcolor('#3BB184'),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  blurRadius: 4,
                                  spreadRadius: 3,
                                  offset: Offset(4,4),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Flight per month",style: TextStyle(fontSize: 20,color: Colors.white),),
                                  Text("5",style: TextStyle(fontSize: 20,color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height:100,
                            decoration: BoxDecoration(
                              color: Hexcolor('#2844AA'),
                              borderRadius: BorderRadius.circular(15.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  blurRadius: 4,
                                  spreadRadius: 3,
                                  offset: Offset(4,4),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left:5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Flight per weekday",style: TextStyle(fontSize: 20,color: Colors.white),),
                                  Text("1",style: TextStyle(fontSize: 20,color: Colors.white),)
                                ],
                              ),
                            ),
                          ),
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
    );
  }
}
