import 'package:apka/widgets/dialogBox.dart';
import 'package:apka/widgets/fabCircularMenu.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TripDetails extends StatefulWidget {
  @override
  _TripDetailsState createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  DialogBox dialogBox = new DialogBox();
  FabCircularMnu fabCircularMnu = new FabCircularMnu();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.25,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 3.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: IconButton(
                      icon: Icon(Icons.menu,color: Hexcolor('#050F32'),),
                      onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      iconSize: 45.0,
                    ),
                  ),
                  SizedBox(
                    width: 42.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:68.0),
                    child: Text(
                      "APKA",
                      style: TextStyle(
                        color: Hexcolor('#050F32'),
                        fontFamily: 'Fondamento',
                        fontSize: 48.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 42.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: IconButton(
                      icon: Icon(Icons.notifications,color: Hexcolor('#050F32'),),
                      iconSize: 45.0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: new LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2500,
                percent: 0.8,
                center: Text("80.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Hexcolor('#F9F9F9'),
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
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text('Chandigarh to Bengaluru',style: TextStyle(fontSize: 25.0,color: Hexcolor('#050F32'),fontWeight: FontWeight.bold),),
                      Text('Flight No.: 6E 592',style: TextStyle(fontSize: 25.0,color: Hexcolor('#050F32')),),
                      Text('Ishika garg',style: TextStyle(fontSize: 25.0,color: Hexcolor('#050F32')),),
                      Text('Departure Date: 16 July 2020',style: TextStyle(fontSize: 25.0,color: Hexcolor('#050F32')),),
                      Text('Departure Time: 10:30',style: TextStyle(fontSize: 25.0,color: Hexcolor('#050F32')),),
                      Text('Arrival Date: 17 July 2020',style: TextStyle(fontSize: 25.0,color: Hexcolor('#050F32')),),
                      Text('Arrival Time: 12:00',style: TextStyle(fontSize: 25.0,color: Hexcolor('#050F32')),),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Hexcolor('#F9F9F9'),
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
                  padding: const EdgeInsets.only(top:15.0,bottom:15,left: 7.0,right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(
                            height: 81,
                            width: 141,
                            image: AssetImage("assets/images/luggage.png"),
                          ),
                          Text('Luggage Status',style: TextStyle(fontSize: 30.0,color: Hexcolor('#050F32')),),
                        ],
                      ),
                       Padding(
                         padding: const EdgeInsets.only(top:15.0),
                         child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 50,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 2500,
                          percent: 0.8,
                          center: Text("80.0%",style: TextStyle(color: Colors.white),),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.blueGrey,
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Hexcolor('#F9F9F9'),
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
                  padding: const EdgeInsets.only(top:8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom:20.0,left: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on,size: 30,),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text("sector9 - airport",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 32.0),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:20.0,left: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.access_time,size: 30,),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text("Taxi Time - 6:30 am",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 32.0),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:20.0,left: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.date_range,size: 30,),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text("Date - 16July20",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 32.0),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:20.0,left: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.directions,size: 30,),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text("Distance - 14.5 km",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 32.0),),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:20.0,left: 21),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.traffic,size: 30,),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text("Traffic - Slow",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 32.0),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:15.0,left: 15.0,right: 15,bottom: 30),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Hexcolor('#F9F9F9'),
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
                  padding: const EdgeInsets.only(top:15.0,bottom:15,left: 7.0,right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(
                            height: 81,
                            width: 141,
                            image: AssetImage("assets/images/arservices.png"),
                          ),
                          Text('AR Services',style: TextStyle(fontSize: 30.0,color: Hexcolor('#050F32')),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
        floatingActionButton: fabCircularMnu.showFabMenu(context),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/cyclin3.png'),
                  fit: BoxFit.cover,
                )),

            accountName: Text("Hello, Anuj"
              //((_user.fullName != null) ? _user.fullName : "...")
            ),

            // accountEmail: Text('908-391-8588'),
            currentAccountPicture: new GestureDetector(
                onTap: () async {
                  // showProfileDialog(context, _user);
                },
                child: new CircleAvatar(
                  backgroundImage: new AssetImage('assets/cyclin3.png'),
                )),
          ),
          ListTile(
            title: Text(
              ' Home',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () async {
              //showProfileDialog(context, _user);
            },
          ),
          ListTile(
            title: Text(
              ' Shop by category',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {},
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              'Your Order',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Buy Again',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(

            title: Text(
              'Your Wishlist',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),

          ListTile(
            title: Text(
              'Sell On BidLocal',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              'language',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(
            title: Text(
              'Setting',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(
            title: Text(
              'Coustomer Service',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(
            title: Text(
              ' Sign out',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () async {
              //signOutGoogle();
              SystemNavigator.pop();
              //await this.signOut();
            },
          ),
        ]),
      ),
    );
  }
}
