import 'package:flutter/material.dart';
class UserReminder{
  String anchorHabit;
  String habitName;
  String hour;
  String id;
  Map lastReminded;
  String location;
  num min;
  num minuteOffSetUTC;
  String uName;
  String uid;
  String userCourseId;

  UserReminder({
    this.anchorHabit,
    this.habitName,
    this.hour,
    this.id,
    this.lastReminded,
    this.location,
    this.min,
    this.minuteOffSetUTC,
    this.uName,
    this.uid,
    this.userCourseId
  });

  UserReminder.fromJson(Map<String, dynamic> json) {
    uid= json['uid'];
    anchorHabit = json['anchorHabit'];
    habitName = json['habitName'];
    hour = json['hour'];
    id = json['id'];
    lastReminded = json['lastReminded'];
    location = json['location'];
    min = json['min'];
    minuteOffSetUTC= json['minuteOffSetUTC'];
    uName = json['uName'];
    userCourseId= json['userCourseId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['uuid'] = this.uuid;
    data['uid'] = this.uid;
    data['anchorHabit'] = this.anchorHabit;
    data['habitName'] = this.habitName;
    data['hour'] = this.hour;
    data['id'] = this.id;
    data['lastReminded'] = this.lastReminded;
    data['location'] = this.location;
    data['min']=this.min;
    data['minuteOffSetUTC']=this.minuteOffSetUTC;
    data['uName']=this.uName;
    data['userCourseId']=this.userCourseId;
    return data;
  }




}