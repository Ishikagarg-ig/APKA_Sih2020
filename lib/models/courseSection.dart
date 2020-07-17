import 'package:flutter/material.dart';
class CourseSection{
    String id;
    num rank;
    Map tasks;

     CourseSection({
      this.id,
      this.rank,
       this.tasks,
       });
     CourseSection.fromJson(Map<String,dynamic> json){
        id=json['id'];
        rank=json['rank'];
        tasks=json['tasks'];
     }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['id']=this.id;
      data['rank']=this.rank;
      data['tasks']=this.tasks;
    }


}