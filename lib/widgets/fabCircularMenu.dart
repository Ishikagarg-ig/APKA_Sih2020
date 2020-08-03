import 'package:apka/flight_details.dart';
import 'package:apka/screens/home_page.dart';
import 'package:apka/screens/trip_details.dart';
import 'package:apka/widgets/Navbar.dart';
import 'package:apka/widgets/dialogBox.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/gestures.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class FabCircularMnu{
  DialogBox dialogBox = new DialogBox();
  showFabMenu(BuildContext context){
    return FabCircularMenu(
        ringColor: Hexcolor('050F32').withOpacity(0.7),
        fabOpenColor: Hexcolor('050F32'),
        fabCloseColor: Hexcolor('050F32'),
        fabOpenIcon: Icon(Icons.format_list_bulleted,color: Colors.white,),
        fabCloseIcon: Icon(Icons.close,color: Colors.white,),
        children: <Widget>[
          IconButton(icon: Icon(Icons.home), color: Colors.white,
              tooltip: 'Home',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Navbar()));
              }),
          IconButton(icon: Icon(Icons.add_circle,color: Colors.white,),
              tooltip: 'Add Planning',
              onPressed: () {
            dialogBox.booking(context, "Select your convient option");
          }),
          GestureDetector(
            onTap: (){
              dialogBox.Weather(context);
            },
            child: Tooltip(
              message: "Services",
              child: Image(
                image: AssetImage("assets/icons/services.png"),
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              //dialogBox.Corona(context, "Select your convient option");
              dialogBox.BookBus(context);
            },
            child: Tooltip(
              message: "COVID19",
              child: Image(
                image: AssetImage("assets/icons/coronavirus.png"),
                color: Colors.white,
              ),
            ),
          ),
          IconButton(
              tooltip: 'Add new trip',
              icon: Icon(Icons.trip_origin,color: Colors.white,),
              onPressed: () {
                dialogBox.Planning(context);
              }
          ),
        ]
    );
  }
}