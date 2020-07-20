import 'package:apka/screens/autobooking_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DialogBox{
  booking(BuildContext context, String title, String description){

    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context){

          return AlertDialog(
            title: Text(title,style: TextStyle(color: Hexcolor('#050F32'),fontSize: 20.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.only(top: 9,bottom: 9),
                    color: Hexcolor('#152971').withOpacity(0.90),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AutoBookingScreen()));
                    },
                    child: Text("Auto Booking",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                  ),
                  RaisedButton(
                    padding: EdgeInsets.only(top: 9,bottom: 9),
                    color: Hexcolor('#152971').withOpacity(0.90),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    onPressed: (){},
                    child: Text("Manual Booking",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}