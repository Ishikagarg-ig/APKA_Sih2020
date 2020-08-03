import 'package:apka/screens/trip_details.dart';
import 'package:apka/widgets/dialogBox.dart';
import 'package:apka/widgets/fabCircularMenu.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class FlightDetails extends StatefulWidget {
  @override
  _FlightDetailsState createState() => _FlightDetailsState();
}

class _FlightDetailsState extends State<FlightDetails> {
  bool _visible=true;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController pnrTextEditingController=TextEditingController();
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
                    offset: Offset(10,10),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top:38.0,left: 16.0,right: 16.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: pnrTextEditingController,
                  style: TextStyle(
                    fontSize: 27.0,
                  ),
                  decoration: InputDecoration(
                    hintText: "PNR no.",
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      color: Hexcolor('#050F32'),
                      onPressed: (){
                        setState(() {
                          _visible = false;
                        });
                      },
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Hexcolor('#050F32')),
                    ),
                  ),
                ),
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: _visible ? 0.0 : 1.0,
            duration: Duration(milliseconds: 500),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
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
          ),
          AnimatedOpacity(
            opacity: _visible ? 0.0 : 1.0,
            duration: Duration(milliseconds: 500),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: RaisedButton(
                padding: EdgeInsets.only(left: 38,right: 38,top: 18,bottom: 18),
                color: Hexcolor('#152971'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TripDetails()));
                },
                child: Text("Confirm",style: TextStyle(color: Colors.white,fontSize: 24.0,),),
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

            accountName: Text("Ishika garg",
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
