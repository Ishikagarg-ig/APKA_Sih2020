import 'package:apka/screens/google_signIn.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hexcolor/hexcolor.dart';

class PlanningVehicleData extends StatefulWidget {
    PlanningVehicleData({this.location,this.passenger,this.flighttime});
  final location;
  final flighttime;
  final passenger;

  @override
  _PlanningVehicleDataState createState() => _PlanningVehicleDataState();
}

class _PlanningVehicleDataState extends State<PlanningVehicleData> {
  String vehicle = "";

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('Planning').snapshots(),
      builder: (context, snapshots) {
        if (snapshots.hasData) {
          for (int i = 0; i < snapshots.data.documents.length; i++) {
            var value = snapshots.data.documents[i].documentID;
            if (value == widget.location) {
              if (int.parse(widget.passenger) % 2 == 0) {
                vehicle = snapshots.data.documents[i].data['Vehicle2'];
              }
              else {
                vehicle = snapshots.data.documents[i].data['Vehicle'];
              }
            }
          }
          saveVehicleToDatabase();
          return Text("You should prefer ${vehicle}!!",
            style: TextStyle(fontSize: 22.0, color: Hexcolor('#050F32')),);
        }
        return Text("");
      },
    );
  }

  void saveVehicleToDatabase() {
    tripReference.document(gSignIn.currentUser.id).setData({
      "Name":gSignIn.currentUser.displayName,
      "location":widget.location,
      "passengers":widget.passenger,
      "Vehicle":vehicle,
      "Time":"",
      "Flight time":widget.flighttime,
    });
  }

}

