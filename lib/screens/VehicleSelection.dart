import 'package:apka/models/tripDetails.dart';
import 'package:apka/screens/busBestPlanInfo_screen.dart';
import 'package:apka/screens/google_signIn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class VehicleSelection extends StatefulWidget {
  @override
  _VehicleSelectionState createState() => _VehicleSelectionState();
}

class _VehicleSelectionState extends State<VehicleSelection> {
  TripDetails tripdetails;

  getVehicleDetails() async {
    DocumentSnapshot documentSnapshot = await tripReference.document(gSignIn.currentUser.id).get();
    tripdetails = TripDetails.fromDocument(documentSnapshot);
    if(tripdetails.vehicle=="Bus"){
      BusBestPlanInfo(from: tripdetails.location,time: tripdetails.time,);
    }
    print("Name${tripdetails.vehicle}");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getVehicleDetails();
  }

  @override
  Widget build(BuildContext context) {
    if (tripdetails.vehicle == null) return Scaffold(body:CircularProgressIndicator());
    else if(tripdetails.vehicle=="Bus"){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> BusBestPlanInfo(from: tripdetails.location,time: tripdetails.time,)));
    }
    return Scaffold();
  }
}
