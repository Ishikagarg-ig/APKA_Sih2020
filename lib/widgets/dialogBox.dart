import 'package:apka/screens/autobooking_screen.dart';
import 'package:apka/screens/coronaCases_page.dart';
import 'package:apka/screens/trip_details.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DialogBox{
  booking(BuildContext context, String title){

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

  congratulationsBox(BuildContext context){

    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context){

          return AlertDialog(
            title: Text("Congratulations!!",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25.0),),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("You got 10% discount",style: TextStyle(fontWeight: FontWeight.bold, color: Hexcolor('#050F32')),),
                  Text("Current Price - Rs250",style: TextStyle(fontSize: 20.0,color: Hexcolor('#152971')),),
                  Padding(
                    padding: const EdgeInsets.only(top:20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RaisedButton(
                          padding: EdgeInsets.only(top: 9,bottom: 9),
                          color: Hexcolor('#152971').withOpacity(0.90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TripDetails()));
                          },
                          child: Text("Done",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                        ),
                        RaisedButton(
                          padding: EdgeInsets.only(top: 9,bottom: 9),
                          color: Hexcolor('#C4C4C4').withOpacity(0.90),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => AutoBookingScreen()));
                          },
                          child: Text("Cancel",style: TextStyle(color: Colors.black,fontSize: 20.0,),),
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

  Corona(BuildContext context, String title){
    TextEditingController stateTextEditingController = TextEditingController();
    TextEditingController districtTextEditingController = TextEditingController();
    return showDialog(
        context: context,
        barrierDismissible: true,

        builder: (BuildContext context){

          return AlertDialog(
            title: Text("Covid19",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 25.0),),
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
                    padding: const EdgeInsets.only(top:12.0),
                    child: RaisedButton(
                      padding: EdgeInsets.all(9),
                      color: Hexcolor('#152971').withOpacity(0.90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100.0),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CoronaCases(state: stateTextEditingController.text,district: districtTextEditingController.text)));
                      },
                      child: Text("Done",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}