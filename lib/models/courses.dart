import 'package:apka/models/courseSection.dart';

class Courses{
  CourseSection courseSection;
  String description;
  num duration;
  String imageId;
  String interval;
  String sessionDuration;
  String title;
  String version;
  Courses({
    this.courseSection,
    this.description,
    this.duration,
    this.imageId,
    this.interval,
    this.sessionDuration,
    this.title,
    this.version,

  });
  Courses.fromJson(Map<String,dynamic> json){
    courseSection=json['courseSection'];
    description=json['description'];
    duration=json['duration'];
    imageId=json['imageId'];
    interval=json['interval'];
    sessionDuration=json['sessionDuration'];
    title=json['title'];
    version=json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['courseSection']=this.courseSection;
    data['descrition']=this.description;
    data['duration']=this.duration;
    data['imageId']=this.imageId;
    data['interval']=this.interval;
    data['sessionDuration']=this.sessionDuration;
    data['titele']=this.title;
    data['version']=this.version;
  }
}