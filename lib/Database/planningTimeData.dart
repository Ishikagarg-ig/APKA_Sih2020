import 'package:apka/Database/planningVehicleData.dart';
import 'package:apka/screens/google_signIn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PlanningTimeData extends StatefulWidget {

  PlanningTimeData({this.location,this.passenger});
  final location;
  final passenger;

  @override
  _PlanningTimeDataState createState() => _PlanningTimeDataState();
}

class _PlanningTimeDataState extends State<PlanningTimeData> {
  String time="";
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('Planning').snapshots(),
      builder: (context,snapshots){
        if(snapshots.hasData){
          for(int i=0;i<snapshots.data.documents.length;i++){
            var value = snapshots.data.documents[i].documentID;
            if(value==widget.location){
              if(int.parse(widget.passenger)%2==0)
                time = snapshots.data.documents[i].data['Time2'];
            }
            else{
              time = snapshots.data.documents[i].data['Time'];
            }
            print(value);
          }
          saveTimeToDatabase();
          return Text("You should prefer ${time} deparature time from home!!",
            style: TextStyle(fontSize: 22.0, color: Hexcolor('#050F32')),);
        }
        return Text("");
      },
    );
  }

  void saveTimeToDatabase() {
    tripReference.document(gSignIn.currentUser.id).updateData({
      "Time":time,
    });
  }
}
