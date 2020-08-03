import 'package:apka/Database/planningTimeData.dart';
import 'package:apka/Database/planningVehicleData.dart';
import 'package:apka/screens/BusInfo.dart';
import 'package:apka/screens/VehicleSelection.dart';
import 'package:apka/screens/Weather_screen.dart';
import 'package:apka/screens/autobooking_screen.dart';
import 'package:apka/screens/coronaCases_page.dart';
import 'package:apka/screens/google_signIn.dart';
import 'package:apka/screens/selectVehicle.dart';
import 'package:apka/screens/trip_details.dart';
import 'package:apka/screens/weatherdetails_page.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DialogBox {
  booking(BuildContext context, String title) {
    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title,
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 20.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.only(top: 9, bottom: 9),
                    color: Hexcolor('#152971').withOpacity(0.90),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => AutoBookingScreen()));
                    },
                    child: Text("Auto Booking",
                      style: TextStyle(color: Colors.white, fontSize: 20.0,),),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(top: 9, bottom: 9),
                    color: Hexcolor('#152971').withOpacity(0.90),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: () {},
                    child: Text("Manual Booking",
                      style: TextStyle(color: Colors.white, fontSize: 20.0,),),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  congratulationsBox(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Congratulations!!",
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 25.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("You got 10% discount", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Hexcolor('#050F32')),),
                  Text("Current Price - Rs250", style: TextStyle(
                      fontSize: 20.0, color: Hexcolor('#152971')),),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          padding: EdgeInsets.only(top: 9, bottom: 9),
                          color: Hexcolor('#152971').withOpacity(0.90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => TripDetails()));
                          },
                          child: Text("Done", style: TextStyle(
                            color: Colors.white, fontSize: 20.0,),),
                        ),
                        RaisedButton(
                          padding: EdgeInsets.only(top: 9, bottom: 9),
                          color: Hexcolor('#C4C4C4').withOpacity(0.90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => AutoBookingScreen()));
                          },
                          child: Text("Cancel", style: TextStyle(
                            color: Colors.black, fontSize: 20.0,),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Corona(BuildContext context, String title) {
    TextEditingController stateTextEditingController = TextEditingController();
    TextEditingController districtTextEditingController = TextEditingController();
    stateTextEditingController.text="CH";
    districtTextEditingController.text="Chandigarh";
    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Covid19",
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 25.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  TextField(
                    controller: stateTextEditingController,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    decoration: InputDecoration(
                      hintText: "State Code",
                      alignLabelWithHint: true,
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Hexcolor('#050F32')),
                      ),
                    ),
                  ),
                  TextField(
                    controller: districtTextEditingController,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    decoration: InputDecoration(
                      hintText: "District",
                      alignLabelWithHint: true,
                      hintStyle: TextStyle(
                        fontSize: 16.0,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Hexcolor('#050F32')),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(9),
                      color: Hexcolor('#152971').withOpacity(0.90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) =>
                            CoronaCases(state: stateTextEditingController.text,
                                district: districtTextEditingController.text)));
                      },
                      child: Text("Done", style: TextStyle(
                        color: Colors.white, fontSize: 20.0,),),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Weather(BuildContext context) {
    TextEditingController weatherTextEditingController = new TextEditingController();
    weatherTextEditingController.text = "Chandigarh";
    TextEditingController dateTextEditingController = new TextEditingController();
    dateTextEditingController.text = "2020-08-04";
    return showDialog(
        context: (context),
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Weather Details", textAlign: TextAlign.center,
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 28.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 2,
                              spreadRadius: 4,
                              offset: Offset(0, -2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.trip_origin, color: Hexcolor('#C4C4C4'),
                              size: 28,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Location", style: TextStyle(
                                    color: Hexcolor('#736666'), fontSize: 16),),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: TextFormField(
                                    controller: weatherTextEditingController,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Hexcolor('#050F32'),
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Hexcolor('#050F32')),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 2,
                              spreadRadius: 4,
                              offset: Offset(0, -2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.date_range, color: Hexcolor('#C4C4C4'),
                              size: 28,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Date", style: TextStyle(
                                    color: Hexcolor('#736666'), fontSize: 16),),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: TextFormField(
                                    controller: dateTextEditingController,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Hexcolor('#050F32'),
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Hexcolor('#050F32')),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, left: 20, right: 20),
                        child: RaisedButton(
                          padding: EdgeInsets.all(9),
                          color: Hexcolor('#152971').withOpacity(0.90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (BuildContext context) =>
//                                    WeatherScreen(
//                                      cityName: weatherTextEditingController
//                                          .text,)));
                                   WeatherDetailsPage(cityName: weatherTextEditingController.text,date:dateTextEditingController.text)
                            ));
                          },
                          child: Text("Search", style: TextStyle(
                            color: Colors.white, fontSize: 20.0,),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Services(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Services",
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 25.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Row(
                    children: [
                      Tooltip(
                        message: "Navigation",
                        child: IconButton(
                          icon: Icon(Icons.navigation, color: Hexcolor(
                              '#050F32'), size: 30,),
                        ),
                      ),
                      Tooltip(
                        message: "Restaurant",
                        child: IconButton(
                          icon: Icon(Icons.restaurant, color: Hexcolor(
                              '#050F32'), size: 30,),
                        ),
                      ),
                      Tooltip(
                        message: "Hotel",
                        child: IconButton(
                          icon: Icon(Icons.hotel, color: Hexcolor('#050F32'),
                            size: 30,),
                        ),
                      ),
                      Tooltip(
                        message: "Parking",
                        child: IconButton(
                          icon: Icon(Icons.local_parking, color: Hexcolor(
                              '#050F32'), size: 30,),
                        ),
                      ),
                      Tooltip(
                        message: "Weather",
                        child: IconButton(
                          icon: Icon(Icons.theaters, color: Hexcolor('#050F32'),
                            size: 30,),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  BookBus(BuildContext context) {
    TextEditingController fromTextEditingController = TextEditingController();
    TextEditingController toTextEditingController = TextEditingController();
    TextEditingController dateTextEditingController = TextEditingController();
    fromTextEditingController.text = "Hyderabad";
    toTextEditingController.text = "Bangalore";
    dateTextEditingController.text = "2020-08-04";
    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Book Your Bus", textAlign: TextAlign.center,
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 28.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Flexible(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 2,
                                spreadRadius: 4,
                                offset: Offset(0, -2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.trip_origin, color: Hexcolor('#C4C4C4'),
                                size: 28,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("From", style: TextStyle(
                                      color: Hexcolor('#736666'), fontSize: 16),),
                                  Container(
                                    height: 40,
                                    width: 150,
                                    child: TextFormField(
                                      controller: fromTextEditingController,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Hexcolor('#050F32'),
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Hexcolor('#050F32')),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Hexcolor('#F4F1F1'),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 2,
                                spreadRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.location_on, color: Hexcolor('#C4C4C4'),
                                size: 28,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("To", style: TextStyle(
                                      color: Hexcolor('#736666'), fontSize: 16),),
                                  Container(
                                    height: 40,
                                    width: 150,
                                    child: TextFormField(
                                      controller: toTextEditingController,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Hexcolor('#050F32'),
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Hexcolor('#050F32')),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 70,
                          decoration: BoxDecoration(
                            color: Hexcolor('#F4F1F1'),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                blurRadius: 2,
                                spreadRadius: 4,
                                offset: Offset(3, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.date_range, color: Hexcolor('#050F32'),
                                size: 28,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Date", style: TextStyle(
                                      color: Hexcolor('#736666'), fontSize: 16),),
                                  Container(
                                    height: 40,
                                    width: 150,
                                    child: TextFormField(
                                      controller: dateTextEditingController,
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        color: Hexcolor('#050F32'),
                                      ),
                                      decoration: InputDecoration(
                                        hintText: "yyyy-mm-dd",
                                        hintStyle: TextStyle(fontSize: 20),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.black),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Hexcolor('#050F32')),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 12.0, left: 20, right: 20),
                          child: RaisedButton(
                            padding: EdgeInsets.all(9),
                            color: Hexcolor('#152971').withOpacity(0.90),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) =>
                                  BusInfo(from: fromTextEditingController.text,
                                      to: toTextEditingController.text,
                                      date: dateTextEditingController.text)));
                            },
                            child: Text("Search", style: TextStyle(
                              color: Colors.white, fontSize: 20.0,),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Planning(BuildContext context) {
    TextEditingController locationTextEditingController = new TextEditingController();
    locationTextEditingController.text = "Chandigarh";
    TextEditingController passengerTextEditingController = new TextEditingController();
    passengerTextEditingController.text = "1";
    TextEditingController flighttimeTextEditingController = new TextEditingController();
    flighttimeTextEditingController.text="11:45 am";

    return showDialog(
        context: (context),
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Planning", textAlign: TextAlign.center,
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 28.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 2,
                              spreadRadius: 4,
                              offset: Offset(0, -2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.trip_origin, color: Hexcolor('#C4C4C4'),
                              size: 28,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Location", style: TextStyle(
                                    color: Hexcolor('#736666'), fontSize: 16),),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: TextFormField(
                                    controller: locationTextEditingController,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Hexcolor('#050F32'),
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Hexcolor('#050F32')),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 2,
                              spreadRadius: 4,
                              offset: Offset(0, -2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.timer, color: Hexcolor('#C4C4C4'),
                              size: 28,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Flight Time", style: TextStyle(
                                    color: Hexcolor('#736666'), fontSize: 16),),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: TextFormField(
                                    controller: flighttimeTextEditingController,
                                    style: TextStyle(
                                      fontSize: 25.0,
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
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Hexcolor('#F4F1F1'),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 2,
                              spreadRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.people, color: Hexcolor('#C4C4C4'),
                              size: 28,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("No. of Passengers", style: TextStyle(
                                    color: Hexcolor('#736666'), fontSize: 16),),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: TextFormField(
                                    controller: passengerTextEditingController,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Hexcolor('#050F32'),
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Hexcolor('#050F32')),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 12.0, left: 20, right: 20),
                        child: RaisedButton(
                          padding: EdgeInsets.all(9),
                          color: Hexcolor('#152971').withOpacity(0.90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          onPressed: () {
                            PlanningVehicle(
                                context, locationTextEditingController.text,
                                passengerTextEditingController.text,flighttimeTextEditingController.text);
                          },
                          child: Text("Search", style: TextStyle(
                            color: Colors.white, fontSize: 20.0,),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  PlanningVehicle(BuildContext context, String location, String passenger,String flighttime) {
    return showDialog(
        context: (context),
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Preferable Vehicle", textAlign: TextAlign.center,
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 28.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 2,
                              spreadRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(child: PlanningVehicleData(
                            location: location, passenger: passenger,flighttime: flighttime,)),
                      ),
                      SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: RaisedButton(
                              padding: EdgeInsets.all(9),
                              color: Hexcolor('#152971').withOpacity(0.90),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              onPressed: () {
                                PlanningTime(context, location, passenger);
                              },
                              child: Text("Yes", style: TextStyle(
                                color: Colors.white, fontSize: 20.0,),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: RaisedButton(
                              padding: EdgeInsets.all(9),
                              color: Hexcolor('#152971').withOpacity(0.90),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              onPressed: () {
                                Vehicles(context, location, passenger);
                              },
                              child: Text("No", style: TextStyle(
                                color: Colors.white, fontSize: 20.0,),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Vehicles(BuildContext context, String location, String passenger) {
    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Select Your Vehicle",
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 25.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Tooltip(
                        message: "Taxi",
                        child: IconButton(
                          icon: Icon(Icons.local_taxi, color: Hexcolor(
                              '#050F32'), size: 30,),
                          onPressed: () {
                            tripReference.document(gSignIn.currentUser.id).updateData({
                              "Vehicle":"Taxi",
                            });
                            PlanningTime(context, location, passenger);
                          },
                        ),
                      ),
                      Tooltip(
                        message: "Bus",
                        child: IconButton(
                          icon: Icon(Icons.directions_bus, color: Hexcolor(
                              '#050F32'), size: 30,),
                          onPressed: () {
                            tripReference.document(gSignIn.currentUser.id).updateData({
                              "Vehicle":"Bus",
                            });
                            PlanningTime(context, location, passenger);
                          },
                        ),
                      ),
                      Tooltip(
                        message: "Train",
                        child: IconButton(
                          icon: Icon(Icons.train, color: Hexcolor('#050F32'),
                            size: 30,),
                          onPressed: () {
                            tripReference.document(gSignIn.currentUser.id).updateData({
                              "Vehicle":"Train",
                            });
                            PlanningTime(context, location, passenger);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }


  PlanningTime(BuildContext context, String location, String passenger) {
    return showDialog(
        context: (context),
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Preferable Time", textAlign: TextAlign.center,
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 28.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height*0.1,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 2,
                              spreadRadius: 4,
                              offset: Offset(0, -2),
                            ),
                          ],
                        ),
                        child: Container(
                          height: 40,
                          width: 150,
                          child: PlanningTimeData(
                            location: location, passenger: passenger),
                        ),
                      ),
                      SizedBox(height: 12,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: RaisedButton(
                              padding: EdgeInsets.all(9),
                              color: Hexcolor('#F4F1F1'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              onPressed: () {
                                ChangePlanningTime(context, location, passenger);
                              },
                              child: Text("Change", style: TextStyle(
                                color: Colors.black, fontSize: 20.0,),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: RaisedButton(
                              padding: EdgeInsets.all(9),
                              color: Hexcolor('#152971').withOpacity(0.90),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              onPressed: () {
                                BestPlan(context);
                              },
                              child: Text("Next", style: TextStyle(
                                color: Colors.white, fontSize: 20.0,),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  ChangePlanningTime(BuildContext context, String location, String passenger) {

    TextEditingController timeTextEditingController= new TextEditingController();
    return showDialog(
        context: (context),
        barrierDismissible: true,

        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Change Time", textAlign: TextAlign.center,
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 28.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 70,
                        decoration: BoxDecoration(
                          color: Hexcolor('#F4F1F1'),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 2,
                              spreadRadius: 4,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.timer, color: Hexcolor('#C4C4C4'),
                              size: 28,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Time", style: TextStyle(
                                    color: Hexcolor('#736666'), fontSize: 16),),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: TextFormField(
                                    controller: timeTextEditingController,
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      color: Hexcolor('#050F32'),
                                    ),
                                    decoration: InputDecoration(
                                      hintText: "hh:mm am/pm",
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Hexcolor('#050F32')),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12,),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: RaisedButton(
                          padding: EdgeInsets.all(9),
                          color: Hexcolor('#152971').withOpacity(0.90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          onPressed: () {
                            tripReference.document(gSignIn.currentUser.id).updateData({
                              "Time":timeTextEditingController.text,
                            });
                            BestPlan(context);
                          },
                          child: Text("Next", style: TextStyle(
                            color: Colors.white, fontSize: 20.0,),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  BestPlan(BuildContext context) {
    SelectVehicle selectVehicle = new SelectVehicle();
    return showDialog(
        context: (context),
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Best Plan for you", textAlign: TextAlign.center,
              style: TextStyle(color: Hexcolor('#050F32'), fontSize: 28.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: RaisedButton(
                              padding: EdgeInsets.all(9),
                              color: Hexcolor('#F4F1F1').withOpacity(0.90),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              onPressed: () {
                                selectVehicle.getVehicleDetails(context,"cancel");
                              },
                              child: Text("Cancel", style: TextStyle(
                                color: Colors.black, fontSize: 20.0,),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: RaisedButton(
                              padding: EdgeInsets.all(9),
                              color: Hexcolor('#152971').withOpacity(0.90),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                              ),

                              onPressed: () {
//                                Navigator.push(context, MaterialPageRoute(
//                                    builder: (context) => VehicleSelection()));
                                   selectVehicle.getVehicleDetails(context,"show");
                              },
                              child: Text("Show", style: TextStyle(
                                color: Colors.white, fontSize: 20.0,),),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  SuccessfullyBooked(BuildContext context){
    return showDialog(
        context: (context),
      barrierDismissible: true,
      builder: (BuildContext context){
          return AlertDialog(
            title: Image(image: AssetImage('assets/icons/checkmark.png'),height: 80,width: 80,),
            content: Container(
              height: 60,
              child: Column(
                children: [
                  Text("Booked",style: TextStyle(fontSize: 23,color: Hexcolor('#152971')),),
                  Text("Successfully",style: TextStyle(fontSize: 23,color: Hexcolor('#152971')),),
                ],
              ),
            ),
          );
      }
    );
  }
}