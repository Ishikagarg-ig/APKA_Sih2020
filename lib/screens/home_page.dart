import 'package:apka/component/scrolable_container.dart';
import 'package:apka/flight_details.dart';
import 'package:apka/screens/FlightInfo_screen.dart';
import 'package:apka/screens/bookFlight_screen.dart';
import 'package:apka/screens/flight_details.dart';
import 'package:apka/screens/google_signIn.dart';
import 'package:apka/screens/premimum_account.dart';
import 'package:apka/screens/profilePage.dart';
import 'package:apka/widgets/dialogBox.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Checklist_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DialogBox dialogBox=new DialogBox();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<ScrollableContainer> imgList = [
    ScrollableContainer(
      image: "assets/images/bboking.png",
      smallText: "Book ->",
      largeText: "Book your Flight Ticket",
    ),
    ScrollableContainer(
      image: "assets/images/booking.png",
      smallText: "see details ->",
      largeText: "Take benefits of Vip Services",
    ),
  ];
  var _current = 0;
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
              width: MediaQuery.of(context).size.width,
              //height: MediaQuery.of(context).size.height*0.25,
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
                    padding: const EdgeInsets.only(top:40.0),
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
                    padding: EdgeInsets.only(top:14.0),
                    child: IconButton(
                      icon: Icon(Icons.notifications,color: Hexcolor('#050F32'),),
                      iconSize: 45.0,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                _current==0?Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>BookFlight())):Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>PremimumAccount()));
              },
              child: CarouselSlider(
                options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.42,
                    viewportFraction: 0.9,
                    // enlargeCenterPage: true,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    }),
                items: imgList
                    .map(
                      (item) => item,
                )
                    .toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>FlightDetail()));
                    },
                    child: Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width*0.444,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
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
                        children: [
                          Image(image:AssetImage('assets/images/aircraft.png'),height:90,width:MediaQuery.of(context).size.width*0.444,),
                          Text("Flight Details",style: TextStyle(fontSize: 23,color: Hexcolor('#050F32')),)
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      dialogBox.Planning(context);
                    },
                    child: Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width*0.444,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
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
                        children: [
                          Image(image:AssetImage('assets/images/homeairport.png'),height:110,width:MediaQuery.of(context).size.width*0.444,),
                          Text("Home-Airport",style: TextStyle(fontSize: 23,color: Hexcolor('#050F32')),)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:13.0,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap:(){
                    },
                    child: Container(
                      height: 165,
                      width: MediaQuery.of(context).size.width*0.444,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
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
                        children: [
                          Image(image:AssetImage('assets/images/boarding_pass.png'),height:110,width:MediaQuery.of(context).size.width*0.444,),
                          Text("Boarding Pass",style: TextStyle(fontSize: 23,color: Hexcolor('#050F32')),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    width: MediaQuery.of(context).size.width*0.444,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.0),
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
                      children: [
                        Image(image:AssetImage('assets/images/arservices.png'),height:90,width:MediaQuery.of(context).size.width*0.444,),
                        Text("AR Services",style: TextStyle(fontSize: 23,color: Hexcolor('#050F32')),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/cyclin3.png'),
                  fit: BoxFit.cover,
                )),

            accountName: Text("Ishika garg"
              //((_user.fullName != null) ? _user.fullName : "...")
            ),

            // accountEmail: Text('908-391-8588'),
            currentAccountPicture: new GestureDetector(
                onTap: () async {
                  // showProfileDialog(context, _user);
                },
                child: new CircleAvatar(
                  backgroundImage: new AssetImage('assets/images/profile.png'),
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
              'CheckList',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>emplyee()));
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              'Rate Us',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(

            title: Text(
              'Terms and Conditions',
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
              ' Sign out',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () async {
              SystemNavigator.pop();
              //await this.signOut();
            },
          ),
        ]),
      ),
    );
  }
}
