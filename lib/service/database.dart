
import 'package:apka/models/userReminder.dart';
import 'package:apka/models/users.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var uiddd;
class DatabaseServices{
  //refrences
  final CollectionReference user_reference = Firestore.instance
      .collection("users");
  Future<bool> checkRegistered(var user) async{
    uiddd=user.uid;
    try{
      DocumentReference documentReference;
      //final QuerySnapshot us=user_reference.where("uid", isEqualTo:user.uid).limit(1).snapshots().getD;
      final QuerySnapshot us = await Firestore.instance
          .collection('users')
          .where('uid', isEqualTo: user.uid)
          .limit(1)
          .getDocuments();
      final List<DocumentSnapshot> documents = us.documents;
      print(us);
//      final snapShot = await Firestore.instance
//          .collection('posts')
//          .document(docId)
//          .get()
      print(documents.length);
      if(documents.length==0)
      {
       Users usersEntry= Users(
            name:user.displayName,
              email: user.email,
              createdAtMs:DateTime.now().timeZoneOffset.toString(),
              //photoUrl:user.photo,
              uid:user.uid,
              updatedAtMs:DateTime.now().timeZoneOffset.toString(),

            );
      user_reference.add(usersEntry.toJson());
        print('UserCreated');
        return true;
      }
      else
      {
        print("user already exist");
        Users usersEntry= Users(
          name:user.displayName,
          email: user.email,
          createdAtMs:DateTime.now().timeZoneOffset.toString(),
          //photoUrl:user.photo,
          uid:user.uid,
          updatedAtMs:DateTime.now().timeZoneOffset.toString(),

        );
        user_reference.document(user.uid).setData(usersEntry.toJson());
        print('Userupdated');
        return true;
      }

    }
    catch(e){
       print(e);
       print("problem is here");
    }

  }

  Future historyWithMeditation(Map<String,String> userattribute){
        try
        {

         Users usersAtt= Users(
          userAttributes: userattribute,
           updatedAtMs: DateTime.now().millisecond.toString(),
         );
         print(usersAtt.userAttributes);
         print("It is here $uiddd");
         user_reference.document(uiddd).setData({
           'userAttributes': userattribute,
           'updatedAtMs': DateTime.now().millisecond.toString(),
         });

        }catch(e){
          print(e);
        }
  }

  Future setUserReminder(String anchorHabit,String location) async{
    UserReminder userReminder=UserReminder(
        anchorHabit: anchorHabit,
        location: location,
        habitName: 'Meditaion',
        uid: uiddd,
    );
    Firestore.instance.collection('userReminders').add(userReminder.toJson());
  }

}
