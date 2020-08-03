import 'package:apka/models/tripDetails.dart';
import 'package:apka/screens/carBestPlanInfo.dart';
import 'package:apka/widgets/dialogBox.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'busBestPlanInfo_screen.dart';
import 'google_signIn.dart';

class SelectVehicle{
  TripDetails tripdetails;
  DialogBox dialogBox= new DialogBox();

  getVehicleDetails(BuildContext context, String value) async {
    DocumentSnapshot documentSnapshot = await tripReference.document(gSignIn.currentUser.id).get();
    tripdetails = TripDetails.fromDocument(documentSnapshot);
    if(tripdetails.vehicle=="Bus"){
      BusBestPlanInfo(from: tripdetails.location,time: tripdetails.time,);
    }
    print("Name${tripdetails.vehicle}");

    if(tripdetails.vehicle=="Bus"){
      if(value=="show"){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> BusBestPlanInfo(from: tripdetails.location,time: tripdetails.time,)));
      }
      else if(value=="cancel"){
        dialogBox.BookBus(context);
      }
    }
    else if(tripdetails.vehicle=="Taxi"){
      if(value=="show"){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> CarBestPlanInfo(time: tripdetails.time)));
      }
    }
  }

}