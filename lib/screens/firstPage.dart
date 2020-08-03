import 'package:apka/screens/bookFlight_screen.dart';
import 'package:apka/screens/data_table.dart';
import 'package:apka/screens/google_signIn.dart';
import 'package:apka/screens/rate_app.dart';
import 'package:apka/widgets/dialogBox.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Checklist_screen.dart';
import 'premimum_account.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  GoogleSignIn xy=new GoogleSignIn();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  DialogBox dialogBox = new DialogBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.2,
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
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu,color: Colors.white,),
                        onPressed: () => _scaffoldKey.currentState.openDrawer(),
                        iconSize: 45.0,
                      ),
                      SizedBox(
                        width: 42.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0),
                        child: Text(
                          "APKA",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Fondamento',
                            fontSize: 48.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 42.0,
                      ),
                      IconButton(
                        icon: Icon(Icons.notifications,color: Colors.white,),
                        iconSize: 45.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:120.0),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BookFlight()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4,
                          spreadRadius: 3,
                          offset: Offset(3,3),
                        ),
                      ],
                    ),
                    height: 100,
                    width: 210,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.add,size: 30,color: Hexcolor('#152971'),),
                        Text("Book Flight",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:250.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                                child: Image(image: AssetImage('assets/images/Screenshot (24).png'),height:80,width: 230,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:10.0),
                          child: Text("Travel Guide",textAlign:TextAlign.start,style: TextStyle(color: Hexcolor('#736666'),fontSize: 24),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:15.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10.0),
                                  child: GestureDetector(
                                        onTap: () async{
                                          final url = 'https://m.uber.com/looking?drop=%7B%22id%22%3A%22ChIJAVsJf2QdDTkRGJz9NdmhbnQ%22%2C%22addressLine1%22%3A%22Delhi%20Airport%22%2C%22addressLine2%22%3A%22New%20Delhi%2C%20Delhi%22%2C%22provider%22%3A%22google_places%22%2C%22locale%22%3A%22en-GB%22%2C%22latitude%22%3A28.5638921%2C%22longitude%22%3A77.11980129999999%7D&pickup=%7B%22id%22%3A%22ChIJ72ppYKZpEDkRaxAVduWJxzs%22%2C%22addressLine1%22%3A%22Chandigarh%22%2C%22addressLine2%22%3A%22Punjab%22%2C%22provider%22%3A%22google_places%22%2C%22locale%22%3A%22en-GB%22%2C%22latitude%22%3A30.5389944%2C%22longitude%22%3A75.95503289999999%7D&vehicle=123355a7-bb7b-4ecf-b70d-7d3060ab1bd0';
                                          if (await canLaunch(url)) {
                                            await launch(
                                              url,
                                              forceSafariVC: false,
                                            );
                                          }
                                        },
                                    child: Container(
                                      height: 120,
                                      width: 125,
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
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.local_taxi,size: 48,color:Hexcolor('#152971'),),
                                          Text("TAXI",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                GestureDetector(
                                  onTap: (){
                                    dialogBox.BookBus(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom:10.0),
                                    child: Container(
                                      height: 120,
                                      width: 125,
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
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(Icons.directions_bus,size: 48,color:Hexcolor('#152971'),),
                                          Text("BUS",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10.0),
                                  child: Container(
                                    height: 120,
                                    width: 125,
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
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(Icons.train,size: 48,color:Hexcolor('#152971'),),
                                        Text("TRAIN",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                                      ],
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0,bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:23.0),
                          child: Text("Services",style: TextStyle(color: Hexcolor('#736666'),fontSize: 24),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(width: 10,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10.0),
                                  child: Container(
                                    height: 120,
                                    width: 125,
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
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image(image:AssetImage('assets/icons/arservice.png'),height: 48,width: 48,color:Hexcolor('#152971'),),
                                        Text("AR",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                GestureDetector(
                                  onTap: (){
                                    dialogBox.BookBus(context);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom:10.0),
                                    child: Container(
                                      height: 120,
                                      width: 125,
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
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image(image:AssetImage('assets/icons/games.png'),height: 48,width: 48,color:Hexcolor('#152971'),),
                                          Text("GAMES",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:10.0),
                                  child: GestureDetector(
                                    onTap:(){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PremimumAccount()));
                                    },
                                    child: Container(
                                      height: 120,
                                      width: 125,
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
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image(image:AssetImage('assets/icons/vip.png'),height: 48,width: 48,color:Hexcolor('#152971'),),
                                          Text("VIP",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                                        ],
                                      ),
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
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>rate_app()));

            },
          ),
          ListTile(
            title: Text(
              'Users Rating',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Datatable()));
            },
          ),
          ListTile(
            title: Text(
              'Premimum Account',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
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
              //SystemNavigator.pop();
              //await this.signOut();
              gSignIn.signOut();
            },
          ),
        ]),
      ),
    );
  }
}
