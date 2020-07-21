import 'package:apka/authentication/sign_in.dart';
import 'package:apka/widgets/dialogBox.dart';
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
        ],
      ),
        floatingActionButton: FabCircularMenu(
          ringColor: Hexcolor('050F32').withOpacity(0.7),
            fabOpenColor: Hexcolor('050F32'),
            fabCloseColor: Hexcolor('050F32'),
            fabOpenIcon: Icon(Icons.format_list_bulleted,color: Colors.white,),
            fabCloseIcon: Icon(Icons.close,color: Colors.white,),
            children: <Widget>[
              IconButton(icon: Icon(Icons.home), color: Colors.white,
                  tooltip: 'Home',
                  onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => TripDetails()));
              }),
              IconButton(icon: Icon(Icons.add_circle,color: Colors.white,), onPressed: () {
                dialogBox.booking(context, "Select your convient option");
              }),
              IconButton(
                icon: Icon(Icons.navigation,color: Colors.white,),
              ),
              IconButton(
                icon: Icon(Icons.trip_origin,color: Colors.white,),
              onPressed: () {
                dialogBox.Corona(context, "Select your convient option");
              }
              ),
            ]
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
