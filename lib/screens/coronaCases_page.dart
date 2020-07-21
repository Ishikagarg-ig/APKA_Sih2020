import 'dart:convert';

import 'package:apka/component/text_input.dart';
import 'package:apka/screens/trip_details.dart';
import 'package:apka/widgets/dialogBox.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:progress_dialog/progress_dialog.dart';

class CoronaCases extends StatefulWidget {

  CoronaCases({this.state,this.district});
  final state;
  final district;
  @override
  _CoronaCasesState createState() => _CoronaCasesState();
}

class _CoronaCasesState extends State<CoronaCases> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  DialogBox dialogBox = new DialogBox();
  var jsonResults;

  Map data;
  List userData;

  Future getData() async {
    http.Response response = await http.get(
        'https://api.covid19india.org/v4/data.json');
    data = json.decode(response.body);
    //print(data);
    setState(() {
      jsonResults = data[widget.state]["districts"][widget.district];
    });

    print("${data[widget.state]["districts"][widget.district]["meta"]["population"]}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
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
            jsonResults==null ? Container(child: CircularProgressIndicator()) : Column(
              children: [
                Container(
                height: 130.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("State: ${widget.state}",style: TextStyle(fontSize: 22.0),),
                      Text("District: ${widget.district}",style: TextStyle(fontSize: 22.0),),
                      Text("Population: ${jsonResults["meta"]["population"]}",style: TextStyle(fontSize: 25.0,color: Hexcolor('050F32')),),
                    ],
                  ),
                ),
              ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 140.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                color: Hexcolor('#E5E5E5'),
                                borderRadius: BorderRadius.circular(15.0),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("Confirmed Corona Cases In ${widget.district}:",style: TextStyle(fontSize: 20.0, color: Hexcolor('#050F32')),),
                                    //Text("Corona Cases In Anantapur:",style: TextStyle(fontSize: 20.0),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("${jsonResults["total"]["confirmed"]}",style: TextStyle(fontSize: 23.0,color: Hexcolor('#050F32')),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 140.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                color: Hexcolor('#E5E5E5'),
                                borderRadius: BorderRadius.circular(15.0),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("Deceased Corona Cases In ${widget.district}:",style: TextStyle(fontSize: 20.0, color: Hexcolor('#050F32')),),
                                    //Text("Corona Cases In Anantapur:",style: TextStyle(fontSize: 20.0),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("${jsonResults["total"]["deceased"]}",style: TextStyle(fontSize: 23.0,color: Hexcolor('#050F32')),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 140.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                color: Hexcolor('#E5E5E5'),
                                borderRadius: BorderRadius.circular(15.0),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("Recovered Corona Cases In ${widget.district}:",style: TextStyle(fontSize: 20.0, color: Hexcolor('#050F32')),),
                                    //Text("Corona Cases In Anantapur:",style: TextStyle(fontSize: 20.0),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("${jsonResults["total"]["recovered"]}",style: TextStyle(fontSize: 23.0,color: Hexcolor('#050F32')),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 140.0,
                              width: 150.0,
                              decoration: BoxDecoration(
                                color: Hexcolor('#E5E5E5'),
                                borderRadius: BorderRadius.circular(15.0),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Text("Tested Corona Cases In ${widget.district}:",style: TextStyle(fontSize: 20.0, color: Hexcolor('#050F32')),),
                                    //Text("Corona Cases In Anantapur:",style: TextStyle(fontSize: 20.0),),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("${jsonResults["total"]["tested"]}",style: TextStyle(fontSize: 23.0,color: Hexcolor('#050F32')),),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),],
            ),
          ],
        ),
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
              onPressed: (){
                dialogBox.Corona(context, "Select your convient option");
              },
            ),
          ]
      ),
    );
  }
}
