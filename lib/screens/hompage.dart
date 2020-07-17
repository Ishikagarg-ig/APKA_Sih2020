import 'package:apka/authentication/sign_in.dart';
import 'package:apka/component/calender.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  DateTime now;
  DateTime start;
  var end;
  var runningdate;
  String startDate;
  String endDate;
  var runningdate1;
  String now1;

  void initState() {
    // TODO: implement initState
    //addItemToList();
    super.initState();
    //additem();
    //getCalender();

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
        body: Column(
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
              padding: EdgeInsets.only(top:50.0),
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
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 23),
                      child: Image.asset('assets/images/already_book.png',height:94,width: 189,),
                    ),
                    Text("Already Booked ticket",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Hexcolor('#050F32'),
                      ),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50.0),
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
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:23.0,bottom: 23),
                      child: Image.asset('assets/images/plan_book.png',width: 350,),
                    ),
                    Text("Plan to book a ticket",
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Hexcolor('#050F32'),
                      ),),
                  ],
                ),
              ),
            ),
          ],
        ),
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
                signOutGoogle();
                SystemNavigator.pop();
                //await this.signOut();
              },
            ),
          ]),
        ),
      );
  }

}
