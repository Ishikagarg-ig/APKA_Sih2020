import 'dart:convert' as convert;

import 'package:apka/widgets/dialogBox.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'package:http_auth/http_auth.dart' as http_auth;

class BusInfo extends StatefulWidget {
  BusInfo({this.from,this.to,this.date});
  final from,to,date;
  @override
  _BusInfoState createState() => _BusInfoState();
}

class _BusInfoState extends State<BusInfo> {
  DialogBox dialogBox=new DialogBox();
  List userData;
  Map data;

  Future getData() async{
    print(widget.date);
    var client = http_auth.DigestAuthClient('Apka', 'Apka2020');
    final response = client.get('http://test.etravelsmart.com/etsAPI/api/getAvailableBuses?sourceCity=${widget.from}&destinationCity=${widget.to}&doj=${widget.date}');
    data = await response.then((value) => convert.jsonDecode(value.body));
    setState(() {
      userData = data['apiAvailableBuses'];
    });
    print(userData[0]['serviceId']);
    return userData;
  }
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("${widget.from}"),
          Icon(Icons.directions_bus),
          Text("${widget.to}"),
        ],
      ),
        backgroundColor: Hexcolor('#050F32'),
      ),
      body:ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: userData==null ? 0 : userData.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(left:10.0,right: 10.0),
            child: Container(
              margin: EdgeInsets.only(top:10,bottom: 10),
              height: MediaQuery.of(context).size.height*0.1955,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    blurRadius: 2,
                    spreadRadius: 4,
                    offset: Offset(5,5),
                  ),
                ],
              ),
              child: Align(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: Column(
                        children: [
                          //Image(image: AssetImage('assets/images/airasia.jpg'),height: 46,width: 48,),
                          Icon(Icons.directions_bus, color: Hexcolor('#050F32'),size: 46,),
                          userData[index]['operatorName'].length>15 ?Text("${userData[index]['operatorName']}",style: TextStyle(color: Hexcolor('#152971'),fontSize: 7,fontWeight: FontWeight.bold),) : Text("${userData[index]['operatorName']}",style: TextStyle(color: Hexcolor('#152971'),fontSize: 15,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Column(
                        children: [
                          Text("${userData[index]['departureTime']}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                          Text("${widget.from}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                          Padding(
                            padding: const EdgeInsets.only(top:25.0),
                            child: Text("${userData[index]['availableSeats']} seats",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:10),
                      child: Column(
                        children: [
                          Text("${userData[index]['durationInMins']} min.",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32')),),
                          Row(
                            children: [
                              Container(
                                width:29.0,
                                height: 3.0,
                                color: Colors.black,
                              ),
                              Image(image: AssetImage('assets/images/rectangle.png'),height: 20.0,width: 20.0,),
                              Container(
                                width:29.0,
                                height: 3.0,
                                color: Colors.black,
                              ),
                            ],
                          ),
                          userData[index]['busType'].length>15 ? Text("",style: TextStyle(color: Hexcolor('#237354'),fontSize: 5,fontWeight: FontWeight.bold),) : Text("${userData[index]['busType']}",style: TextStyle(color: Hexcolor('#237354'),fontSize: 13,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:20.0),
                      child: Column(
                        children: [
                          Text("${userData[index]['arrivalTime']}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                          Text("${widget.to}",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 16),),
                          Padding(
                            padding: const EdgeInsets.only(top:18.0),
                            child: Text("Show More ->",style: TextStyle(fontSize: 16),),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
