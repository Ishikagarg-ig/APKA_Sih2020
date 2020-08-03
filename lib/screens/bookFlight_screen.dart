import 'package:apka/screens/FlightInfo_screen.dart';
import 'package:apka/widgets/fabCircularMenu.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

class BookFlight extends StatefulWidget {
  @override
  _BookFlightState createState() => _BookFlightState();
}

class _BookFlightState extends State<BookFlight> {

  TextEditingController fromFlightTextEditingController = new TextEditingController();
  TextEditingController toFlightTextEditingController = new TextEditingController();
  TextEditingController adultFlightTextEditingController = new TextEditingController();
  TextEditingController childrenFlightTextEditingController = new TextEditingController();
  FabCircularMnu fabCircularMnu = new FabCircularMnu();
  final format = DateFormat("yyyy-MM-dd");
  int _value=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.586,
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
                bottomRight: Radius.circular(70.0),
                bottomLeft: Radius.circular(70.0),
              ),
            ),
            child: Align(
              child: Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Column(
                  children: [
                    Text(
                      "Book Your Flight",
                      style: TextStyle(
                        fontSize: 29.0,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:40.0),
                      child: Container(
                        child: Image(
                          height:172,
                          width: 268,
                          image: AssetImage('assets/images/bookticket.png',),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:280,left: 35, right: 35),
            alignment: Alignment.topCenter,
            height: MediaQuery.of(context).size.height*0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 2,
                  spreadRadius: 4,
                  offset: Offset(0,4),
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.trip_origin,size: 28,color: Hexcolor('#C4C4C4'),),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("From",style: TextStyle(fontSize: 18,color: Hexcolor('#736666')),),
                           Padding(
                             padding: const EdgeInsets.only(top:5.0),
                             child: Container(
                               width: 250,
                               height: 25.0,
                               child: TextFormField(
                                 controller: fromFlightTextEditingController,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Hexcolor('#050F32'),
                                ),
                                decoration: InputDecoration(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on,size: 28,color: Hexcolor('#C4C4C4'),),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("To",style: TextStyle(fontSize: 18,color: Hexcolor('#736666')),),
                              Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Container(
                                  width: 250,
                                  height: 25.0,
                                  child: TextFormField(
                                    controller: toFlightTextEditingController,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Hexcolor('#050F32'),
                                    ),
                                    decoration: InputDecoration(
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
          child:Container(
            margin: EdgeInsets.only(top: 440,left: 35,right: 35),
            height: MediaQuery.of(context).size.height*0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 2,
                  spreadRadius: 4,
                  offset: Offset(0,4),
                ),
              ],
            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:22.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Departure",style: TextStyle(color: Hexcolor('#736666'),fontSize: 21.0),),
                          Container(
                            width: 100,
                            height: 25.0,
                            child: DateTimeField(
                              format: format,
                              onShowPicker: (context,currentValue){
                                return showDatePicker(
                                  context: (context),
                                  firstDate: DateTime(1900),
                                  initialDate: currentValue ?? DateTime.now(),
                                  lastDate: DateTime(2100),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Class",style: TextStyle(color: Hexcolor('#736666'),fontSize: 21.0),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Container(
                              width: 100,
                              height: 25.0,
                              child: DropdownButton(
                                value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text("Economy",style: TextStyle(fontSize: 18.0,color: Hexcolor('#050F32')),),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Business",style: TextStyle(fontSize: 18.0,color: Hexcolor('#050F32')),),
                                      value: 2,
                                    ),
                                  ],
                                  onChanged: (value){
                                  setState(() {
                                    _value=value;
                                  });
                                  },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:25.0),
                  child: Column(
                    children: [
                      Text("Passengers",style: TextStyle(color: Hexcolor('#736666'),fontSize: 21.0),),
                      Padding(
                        padding: const EdgeInsets.only(top:12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text("Adult - ",style: TextStyle(fontSize: 20,color: Hexcolor('#050F32')),),
                                Container(
                                  height:25,
                                  width: 50,
                                  child: TextFormField(
                                    controller: adultFlightTextEditingController,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Hexcolor('#050F32'),
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Hexcolor('#050F32')),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Children - ",style: TextStyle(fontSize: 20,color: Hexcolor('#050F32')),),
                                Container(
                                  height:25,
                                  width: 50,
                                  child: TextFormField(
                                    controller: childrenFlightTextEditingController,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Hexcolor('#050F32'),
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Hexcolor('#050F32')),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
              ),
          Flexible(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top:620),
              child: RaisedButton(
                padding: EdgeInsets.only(left: 40,right: 40,top: 12,bottom: 12),
                color: Hexcolor('#152971'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FlightInfo()));
                },
                child: Text("Search",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
