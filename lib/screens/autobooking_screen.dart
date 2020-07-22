import 'package:apka/authentication/sign_in.dart';
import 'package:apka/widgets/dialogBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hexcolor/hexcolor.dart';
import 'select_your_plan.dart';

class AutoBookingScreen extends StatefulWidget {
  @override
  _AutoBookingScreenState createState() => _AutoBookingScreenState();
}

class _AutoBookingScreenState extends State<AutoBookingScreen> {

  bool _visible = false;
  bool _visible1 = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController passengersTextEditingController = TextEditingController();
  DialogBox dialogBox = new DialogBox();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passengersTextEditingController.text="0";
  }

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
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Container(
                    height: 190.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              _visible=true;
                            });
                          },
                          child: Container(
                            height: 163,
                            width: 149,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:50.0, right: 50.0),
                                  child: Icon(Icons.local_taxi,size: 50.0,),
                                ),
                                Text("Taxi",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 38.0),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        GestureDetector(
                          onTap:(){
                            setState(() {
                              _visible=true;
                            });
                          },
                          child: Container(
                            height: 163,
                            width: 149,
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:50.0, right: 50.0),
                                  child: Icon(Icons.directions_bus,size: 50.0,),
                                ),
                                Text("Bus",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 38.0),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Container(
                      height: 45.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Total Passengers: ",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 30.0),),
                          Container(
                            width: 60.0,
                            foregroundDecoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0),
                              border: Border.all(
                                color: Colors.blueGrey,
                                width: 2.0,
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: TextFormField(
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(8.0),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5.0),
                                      ),
                                    ),
                                    controller: passengersTextEditingController,
                                    keyboardType: TextInputType.numberWithOptions(
                                      decimal: false,
                                      signed: true,
                                    ),
                                    inputFormatters: <TextInputFormatter>[
                                      WhitelistingTextInputFormatter.digitsOnly
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 38.0,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              width: 0.5,
                                            ),
                                          ),
                                        ),
                                        child: InkWell(
                                          child: Icon(
                                            Icons.arrow_drop_up,
                                            size: 18.0,
                                          ),
                                          onTap: () {
                                            int currentValue = int.parse(passengersTextEditingController.text);
                                            setState(() {
                                              currentValue++;
                                              passengersTextEditingController.text = (currentValue)
                                                  .toString(); // incrementing value
                                            });
                                          },
                                        ),
                                      ),
                                      InkWell(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          size: 18.0,
                                        ),
                                        onTap: () {
                                          int currentValue = int.parse(passengersTextEditingController.text);
                                          setState(() {
                                            print("Setting state");
                                            currentValue--;
                                            passengersTextEditingController.text =
                                                (currentValue > 0 ? currentValue : 0)
                                                    .toString(); // decrementing value
                                          });
                                        },
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
                ),
                AnimatedOpacity(
                  opacity: _visible ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: RaisedButton(
                      padding: EdgeInsets.only(left: 28,right: 28,top: 9,bottom: 9),
                      color: Hexcolor('#C4C4C4'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      onPressed: (){
                        setState(() {
                          _visible1=true;
                        });
                      },
                      child: Text("next",style: TextStyle(color: Colors.black,fontSize: 24.0,),),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  opacity: _visible1 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 500),
                  child: Padding(
                    padding: const EdgeInsets.only(top:35.0),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(bottom: 20.0),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Hexcolor('#736666'),
                                  width: 3.0,
                                ),
                              ),
                            ),
                              child: Text("Best Plan for you",style: TextStyle(fontSize: 35.0,color: Hexcolor('#152971'),),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:20.0),
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
                                      Text("sector9 - airport(tml3)",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 32.0),),
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
                          Padding(
                            padding: const EdgeInsets.only(bottom:20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RaisedButton(
                                  padding: EdgeInsets.only(left: 38,right: 38,top: 18,bottom: 18),
                                  color: Hexcolor('#152971'),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0)
                                  ),
                                  onPressed: (){
                                    dialogBox.congratulationsBox(context);
                                  },
                                  child: Text("Yes",style: TextStyle(color: Colors.white,fontSize: 24.0,),),
                                ),
                                RaisedButton(
                                  padding: EdgeInsets.only(left: 38,right: 38,top: 18,bottom: 18),
                                  color: Hexcolor('#152971'),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => selectyourPlan()));
                                  },
                                  child: Text("No",style: TextStyle(color: Colors.white,fontSize: 24.0,),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
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
