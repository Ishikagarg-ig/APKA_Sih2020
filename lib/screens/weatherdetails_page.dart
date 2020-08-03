import 'dart:convert';
import 'package:apka/models/WeatherModel.dart';
import 'package:apka/widgets/fabCircularMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class WeatherDetailsPage extends StatefulWidget {
  WeatherDetailsPage({this.cityName,this.date});
  final cityName,date;
  @override
  _WeatherDetailsPageState createState() => _WeatherDetailsPageState();
}

class _WeatherDetailsPageState extends State<WeatherDetailsPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  FabCircularMnu fabCircularMnu = new FabCircularMnu();
  WeatherModel weather=WeatherModel();

  Map data;
  var desc,icon,weatherMessage,pressure,humidity,windspeed;
  String temp;
  int temp1;
  WeatherModel weatherModel=WeatherModel();

  Future getData(cityName) async {
    http.Response response = await http.get("http://api.worldweatheronline.com/premium/v1/weather.ashx?key=918764479e7f49529dd113046202507&q=${widget.cityName}&format=json&num_of_days=100&date=${widget.date}");
    data = json.decode(response.body);
    setState(() {
       desc=data["data"]["weather"][0]["hourly"][0]["weatherDesc"][0]["value"];
       icon=data["data"]["weather"][0]["hourly"][0]["weatherIconUrl"][0]["value"];
       temp=data["data"]["weather"][0]["hourly"][0]["tempC"];
       temp1=int.parse(temp);
       weatherMessage=weatherModel.getMessage(temp1);
       pressure=data["data"]["weather"][0]["hourly"][0]["pressure"];
       humidity=data["data"]["weather"][0]["hourly"][0]["humidity"];
       windspeed=data["data"]["weather"][0]["hourly"][0]["windspeedMiles"];
       print(desc);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData(widget.cityName);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Hexcolor('#736666'),
                Hexcolor('#050F32').withOpacity(0.8),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 0.7],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Text("${widget.date}",
               style: TextStyle(
                 fontSize: 23.0,
                 color: Colors.white
               ),
             ),
             Text("${widget.cityName}",
               style: TextStyle(
                 fontSize: 35.0,
                   color: Colors.white
                 //fontWeight: FontWeight.w700,
               ),
             ),

              Text("${desc}",
                style: TextStyle(
                  fontFamily: 'Spartan MB',
                  fontSize: 25.0,
                    color: Colors.white
                ),
              ),
              Image.network("${icon}",height:100,width: 100),
              Text("${temp}°C",
                style: TextStyle(
                  fontSize: 35.0,
                    color: Colors.white
                ),
              ),
              Text("${weatherMessage}",
                style: TextStyle(
                  fontSize: 35.0,
                    color: Colors.white
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Pressure",style: TextStyle(fontSize: 30,color:Colors.white),),
                      Row(
                        children: [
                          Image(image: AssetImage('assets/icons/pressure.png'),height: 30,width: 30,color: Colors.white,),
                          Text("${pressure}",style: TextStyle(fontSize: 35,color:Colors.white),)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Humidity",style: TextStyle(fontSize: 30,color:Colors.white),),
                      Row(
                        children: [
                          Image(image: AssetImage('assets/icons/humidity.png'),height: 30,width: 30,),
                          Text("${humidity}",style: TextStyle(fontSize: 35,color:Colors.white),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text("WindSpeed in miles",style: TextStyle(fontSize: 30,color:Colors.white),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('assets/icons/wind.png'),height: 30,width: 30,),
                      Text("${windspeed}",style: TextStyle(fontSize: 35,color:Colors.white),)
                    ],
                  ),
                ],
              ),
            ],
          ),
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
