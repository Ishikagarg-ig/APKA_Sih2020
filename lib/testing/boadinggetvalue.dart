//import 'package:atom/models/courseSection.dart';
import 'package:apka/testing/FoodNotifier.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

getFoods(FoodNotifier foodNotifier) async {
  List<String> _foodList = [];
  Firestore.instance
      .collection('usersBoardingPass').document('111138901758560322395')
      .get()
      .then((value) {

       var as= value.data;
       _foodList.add(as.toString());
      // print(as);
  }
      );

//
//      print('!!!it is here!!!!!!!!!!!!!!');
//      print(snapshot.data[0]['boardingInfo']);
//
//     var food = print(snapshot.data[0]['boardingInfo']);
   //


  foodNotifier.foodList = _foodList;
}