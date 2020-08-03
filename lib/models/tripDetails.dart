import 'package:cloud_firestore/cloud_firestore.dart';

class TripDetails{
  final String name;
  final String location;
  final String vehicle;
  final String time;
  final String passenger;

  TripDetails({
    this.name,
    this.location,
    this.vehicle,
    this.time,
    this.passenger,
  });

  factory TripDetails.fromDocument(DocumentSnapshot doc){
    return TripDetails(
      name: doc['Name'],
      location: doc['location'],
      vehicle: doc['Vehicle'],
      time: doc['Time'],
      passenger: doc['passengers'],
    );
  }
}