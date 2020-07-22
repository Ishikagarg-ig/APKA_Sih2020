import 'package:apka/component/button.dart';
import 'package:apka/component/text_input.dart';
import 'package:apka/models/users.dart';
import 'package:apka/screens/loading_poster.dart';
import 'package:apka/screens/welcome_page.dart';
import 'package:apka/service/database.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'hompage.dart';



class AccountPage extends StatefulWidget {
  @override
  final FirebaseUser user;
  AccountPage({this.user});
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  var verificationId;
  var smsCode;
  var phoneNo;
  @override
  var username;
  DatabaseServices dbs= new DatabaseServices();



  Future<void> verifyPhone() async{
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verid){
      this.verificationId = verid;
    };
    final PhoneCodeSent smsCodeSent = (String verid, [int forceCodeResesnd]){
      this.verificationId = verid;
      smsCodeDialog(context).then((value) {
        print('Signed in');
      });
    };
    final PhoneVerificationCompleted verifiedSuccess = (AuthCredential user){
      print('Phone Verification Completed');
    };
    final PhoneVerificationFailed verifiedfailed = (AuthException exception){
      print('${exception.message}');
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: this.phoneNo,
      timeout: const Duration(seconds: 5),
      verificationCompleted: verifiedSuccess,
      verificationFailed: verifiedfailed,
      codeSent: smsCodeSent,
      codeAutoRetrievalTimeout: autoRetrieve,
    );
  }


  @override
  String dropdownValue = 'Choose an Option';
  String dropdownValue2 = 'Choose an Option';
  Map<String ,String> userAttributes= {
    'gameTime':"null",
    'meditationRegularity':"null",
  };
//
//
  final db = Firestore.instance;
  _updateData(Map<String ,String> userAttributes) async {
    final storage = new FlutterSecureStorage();
    await storage.write(key: "check", value: "done");
  }


  Widget build(BuildContext context) {
    return SafeArea(
        minimum: EdgeInsets.only(top: 8, bottom: 8),
        child: new WillPopScope(
          onWillPop: () async {
            SystemNavigator.pop();
            return false;
          },
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              children: <Widget>[
                new Container(
                  child: new Column(
                    children: <Widget>[
                      Container(
                          height: MediaQuery.of(context).size.height * 0.2600,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/Background2.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_back),
                                    iconSize: 40,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.01),
                              Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Create Account",
                                    style: GoogleFonts.sen(
                                        fontSize: 32,
                                        color: Color(0xff3E3E3E),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 22.0, right: 10),
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Track Progress And personalize your experience",
                                    style: GoogleFonts.sen(
                                      fontSize: 16,
                                      color: Color(0xff3E3E3E),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.68,
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding:
                          const EdgeInsets.only(left: 22.0, right: 22.0),
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: <Widget>[
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.06,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Name",
                                  style: GoogleFonts.sen(
                                    fontSize: 16,
                                    color: Color(0xff3E3E3E),
                                  ),
                                ),
                              ),
                              TextInput1(
                                inputchild: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(
                                    widget.user.displayName,
                                    style: GoogleFonts.lato(
                                        fontSize: 20,
                                        color: Color(0xff3E3E3E),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                height:
                                MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.88,
                                radius: 10,
                              ),
                              Container(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "Not you? View other sign-in option",
                                  style: GoogleFonts.sen(
                                    fontSize: 14,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height:
                                MediaQuery.of(context).size.height * 0.06,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Email",
                                  style: GoogleFonts.sen(
                                    fontSize: 16,
                                    color: Color(0xff3E3E3E),
                                  ),
                                ),
                              ),
                              TextInput1(
                                inputchild: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: Text(
                                    widget.user.email,
                                    style: GoogleFonts.lato(
                                        fontSize: 20,
                                        color: Color(0xff3E3E3E),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                height:
                                MediaQuery.of(context).size.height * 0.07,
                                width: MediaQuery.of(context).size.width * 0.88,
                                radius: 10,
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.09),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Phone Number",
                                  style: GoogleFonts.sen(
                                    fontSize: 16,
                                    color: Color(0xff3E3E3E),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color(0xffEAEAEA),
//                                  boxShadow: [
//                                    BoxShadow(
//                                      color: Colors.grey,
//                                      offset: Offset(0.0, 1.0), //(x,y)
//                                      blurRadius: 3.0,
//                                    ),
//                                  ],
                                ),
                                child: Container(
                                  color: Colors.white70,
                                  child: TextInput1(
                                    inputchild: Row(
                                      children: <Widget>[
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width* 0.08,
                                          // width: MediaQuery.of(context).size.width * 0.3,
                                        ),
                                        Icon(Icons.phone_android,color: Colors.blueAccent,),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width* 0.04,
                                          // width: MediaQuery.of(context).size.width * 0.3,
                                        ),
                                        Container(

                                          width: MediaQuery.of(context).size.width * 0.50,
                                          height: MediaQuery.of(context).size.height * 0.075,
                                          child: Padding(
                                            padding: const EdgeInsets.only(top:3.0),
                                            child: TextField(
                                              keyboardType: TextInputType.number,
                                              textAlign: TextAlign.start,
                                              decoration: InputDecoration(
                                                  border: InputBorder.none,
                                                  hintText: '+91'),
                                              onChanged: (value) {
                                                this.phoneNo = "+91"+value;
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: MediaQuery.of(context).size.height * 0.07,
                                    width: MediaQuery.of(context).size.width * 0.88,
                                    radius: 30,
                                  ),
                                ),
                              ),
                              SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.09),

                              ButtonOutput(
                                inputchild: Text(
                                  "Continue Verification",
                                  style: GoogleFonts.sen(
                                    fontSize: 16,
                                    color: Color(0xff3E3E3E),
                                    //MediaQuery.of(context).size.width/15,
                                  ),
                                ),
                                height:
                                MediaQuery.of(context).size.height * 0.08,
                                width: MediaQuery.of(context).size.width * 0.80,
                                radius: 50,
                                onpress: () async {
                                  //userAttributes["gameTime"]=gameTime;
                                  //  userAttributes["meditationRegularity"]=meditationRegularity;
                                  print(userAttributes);
                                  //dbs.historyWithMeditation(userAttributes);
                                  //await _updateData(userAttributes);
                                  verifyPhone();
//                                  Navigator.of(context).push(
//                                    MaterialPageRoute(
//                                      builder: (context) {
//                                        return LoadingPoster();
//                                      },
//                                    ),
//                                  );
                                },
                              ),
                              Text(
                                'We Value your privacy',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.sen(
                                  fontSize:
                                  MediaQuery.of(context).size.width / 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }



  Future<bool> smsCodeDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text('Enter sms Code'),
            content: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                this.smsCode = value;
              },
            ),
            contentPadding: EdgeInsets.all(10.0),
            actions: <Widget>[
              new FlatButton(
                child: Text('Submit'),
                onPressed: () {
                  FirebaseAuth.instance.currentUser().then((user) {
                    if (user != null) {
                      final storage = new FlutterSecureStorage();
                      storage.write(key: "varify", value: 'done');
                      Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return WelcomePage();
                          },
                        ),
                      );
                    } else {
                      Navigator.of(context).pop();
                      AccountPage();
                    }
                  });
                },
              )
            ],
          );
        });
  }
}
