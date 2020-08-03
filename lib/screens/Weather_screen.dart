import 'dart:convert';
import 'package:apka/models/WeatherModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  WeatherScreen({this.cityName});
  final cityName;
  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  WeatherModel weather=WeatherModel();

  Map data;
  int temperature;
  double temp;
  String weatherIcon="Error";
  int pressure;
  int humidity;
  double windSpeed;
  String weatherMessage="Unable to get weather Data";



  Future getData(cityName) async {
    http.Response response = await http.get("https://api.openweathermap.org/data/2.5/weather?q=${widget.cityName}&appid=90f769b837ec03d3c79c4610dc694448&units=metric");
    data = json.decode(response.body);
    setState(() {
      temp = data["main"]["temp"];
      temperature=temp.round();
      weatherMessage=weather.getMessage(temperature);
      pressure=data['main']['pressure'];
      humidity=data['main']['humidity'];
      windSpeed=data['wind']['speed'];
      var condition=data['weather'][0]['id'];
      weatherIcon=weather.getWeatherIcon(condition);
      print(temp);
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
                    padding: EdgeInsets.all(14.0),
                    child: IconButton(
                      icon: Icon(Icons.notifications,color: Hexcolor('#050F32'),),
                      iconSize: 45.0,
                    ),
                  ),
                ],
              ),
            ),
            Image(image: AssetImage('assets/images/weather.png'),height: 220,width: 300,),
            temp==null || weatherIcon=="Error"? CircularProgressIndicator():Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(weatherIcon,
                  style: TextStyle(
                    fontSize: 150.0,
                  ),
                ),
                Text("$temp°C",
                  style: TextStyle(
                    fontSize: 60.0,
                    fontFamily: 'Spartan MB',
                    //fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),

          Text("$weatherMessage",
              style: TextStyle(
                fontFamily: 'Spartan MB',
                fontSize: 50.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text("Wind Speed",style: TextStyle(color: Hexcolor('#736666'),fontSize: 20.0),),
                      Text("${windSpeed}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Pressure",style: TextStyle(color: Hexcolor('#736666'),fontSize: 20.0),),
                      Text("${pressure}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Humidity",style: TextStyle(color: Hexcolor('#736666'),fontSize: 20.0),),
                      Text("${humidity}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25),),
                    ],
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
