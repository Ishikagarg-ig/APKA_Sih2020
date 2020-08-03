import 'tic_tac_toe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class game_page extends StatefulWidget {
  @override
  _game_pageState createState() => _game_pageState();
}

class _game_pageState extends State<game_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child:Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Hexcolor('#152971'),
                  Hexcolor('#050F32'),

                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 2.3),
                stops: [0.0, 0.7],
                tileMode: TileMode.clamp,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(90.0),
                bottomLeft: Radius.circular(90.0),
              ),
            ),
            child: Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Lets play Games",
                      style: TextStyle(
                        fontSize: 29.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Image.asset('assets/game_img.png'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Text('Offline game',style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25,fontWeight: FontWeight.bold),),
              )

            ],
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>tic_tac_toe()));

                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(60, 15, 10, 10),
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
                        Image(image: AssetImage('assets/tic_tac.jpg'),height: 110,width: 140,),
                        //Text("Tic Tac Toe",style: TextStyle(fontSize: 15,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 5, 10),
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
                        Image(image: AssetImage('assets/mind_game.jfif'),height: 110,width: 140,),
                        //Text("Mind Game",style: TextStyle(fontSize: 15,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),


            ],

          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Text('Play with others',style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25,fontWeight: FontWeight.bold),),
              )

            ],
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () async{
                  final url = 'https://play.google.com/store/apps/details?id=com.zagmoid.carrom3d';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(60, 15, 10, 10),
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
                        Image(image: AssetImage('assets/carrom.jpg'),height: 110,width: 140,),
                        //Text("Tic Tac Toe",style: TextStyle(fontSize: 15,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async{
                  final url = 'https://play.google.com/store/apps/details?id=innovationlabs.chess.com';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 5, 10),
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
                        Image(image: AssetImage('assets/chess.png'),height: 110,width: 170,),
                        //Text("Mind Game",style: TextStyle(fontSize: 15,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),



            ],

          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () async{
                  final url = 'https://play.google.com/store/apps/details?id=com.zagmoid.carrom3d';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(60, 15, 10, 10),
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
                        Image(image: AssetImage('assets/tennis.png'),height: 110,width: 140,),
                        //Text("Tic Tac Toe",style: TextStyle(fontSize: 15,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async{
                  final url = 'https://play.google.com/store/apps/details?id=com.zagmoid.carrom3d';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 5, 10),
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
                        Image(image: AssetImage('assets/cara_race.png'),height: 110,width: 140,),
                        //Text("Mind Game",style: TextStyle(fontSize: 15,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),



            ],

          ),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: () async{
                  final url = 'https://play.google.com/store/apps/details?id=com.zagmoid.carrom3d';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(60, 15, 10, 10),
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
                        Image(image: AssetImage('assets/crazynite.jpg'),height: 110,width: 140,),
                        //Text("Tic Tac Toe",style: TextStyle(fontSize: 15,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async{
                  final url = 'https://play.google.com/store/apps/details?id=com.zagmoid.carrom3d';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceSafariVC: false,
                    );
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 15, 5, 10),
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
                        Image(image: AssetImage('assets/battle.png'),height: 110,width: 140,),
                        //Text("Mind Game",style: TextStyle(fontSize: 15,color: Hexcolor('#152971')),),
                      ],
                    ),
                  ),
                ),
              ),



            ],

          ),
        ],
      ),
    ),);
  }
}
