class Users {
  String uid;
  String name;
  String email;
  String photoUrl;
  String updatedAtMs;
  String createdAtMs;
  String utcOffset;
  Map<String,String> userAttributes ;

  Users({
    this.uid,
    this.name,
    this.email,
    this.photoUrl,
    this.updatedAtMs,
    this.createdAtMs,
    this.utcOffset,
    this.userAttributes ,
  });

  Users.fromJson(Map<String, dynamic> json) {
    uid= json['uid'];
    name = json['name'];
    email = json['email'];
    photoUrl = json['photoUrl'];
    updatedAtMs = json['updatedAtMs'];
    createdAtMs = json['createdAtMs'];
    utcOffset = json['utcOffset'];
   userAttributes = json['userAttributes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    // data['uuid'] = this.uuid;
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['email'] = this.email;
    data['photoUrl'] = this.photoUrl;
    data['updatedAtMs'] = this.updatedAtMs;
    data['createdAtMs'] = this.createdAtMs;
    data['utcOffset'] = this.utcOffset;
    data['userAttributes']=this.userAttributes;
    return data;
  }
}
