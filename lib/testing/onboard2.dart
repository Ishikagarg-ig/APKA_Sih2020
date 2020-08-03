import 'dart:async';
import 'package:apka/screens/google_signIn.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:provider/provider.dart';
import 'package:qrscan/qrscan.dart' as scanner;

import 'FoodNotifier.dart';
import 'boadinggetvalue.dart';

bool val=true;
class ScanScreen2 extends StatefulWidget {
  @override
  _ScanState createState() => new _ScanState();
}

class _ScanState extends State<ScanScreen2> {
  String barcode = "";

  @override
  initState() {
    FoodNotifier foodNotifier = Provider.of<FoodNotifier>(context, listen: false);
    getFoods(foodNotifier);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text('QR Code Scanner'),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    splashColor: Colors.blueGrey,
                    onPressed:(){
                      scan();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return Boargindpassgenrated();
                          },
                        ),
                      );
                    } ,
                    child: const Text('START CAMERA SCAN')
                ),
              )
              ,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(barcode, textAlign: TextAlign.center,),
              )
              ,
            ],
          ),
        ));
  }
  void sendBoardingpassRequest(result) async{
    var qr_split=new List(3);
    print(result);
    print('yes its working');
    qr_split=result.split(",");
    // user is writing info in of his arrival in database
    Firestore.instance
        .collection('airportCounter').document(qr_split[0]).collection(qr_split[1]).document(qr_split[2]).collection(qr_split[3]).document('userCurrent').updateData(<String, dynamic>{
      'userId': '111138901758560322395',
    });

 // todo : Later Fix it
//    Firestore.instance
//        .collection('usersBoardingPass').document('111138901758560322395')
//        .get()
//        .then((value) {
//      if(value.data[0]['boardingInfo']==null)
//      {
//        Firestore.instance.collection('usersBoardingPass').document(
//            '111138901758560322395').setData(<String, dynamic>{
//          'boardingInfo': 'null',
//        });
//      }
//      // print(as);
//    }
//
//
//    );

//
//    Firestore.instance
//        .collection('airportCounter').document('delhi').collection(
//        'checkinCounter').document('counter1').setData(<String, dynamic>{
//          "id"
//    });
//    if(!documentSnapshot.exists){
//      usersReference.document(gCurrentUser.id).setData({
//        "id":gCurrentUser.id,
//        "name":gCurrentUser.displayName,
//        "url":gCurrentUser.photoUrl,
//        "email":gCurrentUser.email,
//      });
//    }


    // Future<DocumentSnapshot> fr= Firestore.instance.collection('usersBoardingPass').document('111138901758560322395').get();
//    if(fr.==null) {
//      Firestore.instance.collection('usersBoardingPass').document(
//          '111138901758560322395').setData(<String, dynamic>{
//        'boardingInfo': 'null',
//      });
//    }
//    snapshot.updateData(<String, dynamic>{
//      name: this.name
//    });
  }

  Future scan() async {
    try {

      String qrcode = await scanner.scan();
      sendBoardingpassRequest(qrcode);

      setState(() => this.barcode = qrcode);

      print(qrcode);
    } on PlatformException catch (e) {

    } on FormatException{
      setState(() => this.barcode = 'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }
}

class Boargindpassgenrated extends StatefulWidget {
  @override
  _BoargindpassgenratedState createState() => _BoargindpassgenratedState();
}

class _BoargindpassgenratedState extends State<Boargindpassgenrated> {
  @override
  Widget _buildsome(BuildContext context, AsyncSnapshot<QuerySnapshot> values) {
    //var val=values.data.documents[0]['boardingInfo'];
    bool visible1=true;
//    if(!has=null)
//      {
//        visible1=true;
//      }
    // var valuyt=data1.data[0];
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,

      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:70.0),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        Image.asset('assets/tickicon.png',height: 100,width: 100,),

                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          "Verified",
                          style: TextStyle(
                            fontSize: 28.0,
                            color: Hexcolor('#152971'),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){

                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
                            child: Container(
                                width: MediaQuery.of(context).size.width*0.85,
                                height: MediaQuery.of(context).size.height*0.06,
                                decoration: BoxDecoration(
                                  color: Hexcolor('#E5E5E5'),
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                      offset: Offset(-5,5),
                                    ),
                                  ],
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[

                                      Row(

                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[ Text("Ms. Sujeet Yadav you has been Verified",
                                            style: TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              color: Hexcolor('#152971'),
                                            ),),
                                          ]
                                      ),


                                    ]
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Police Verification",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),),

                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Hexcolor('#736666'),
                            width: 3.0,
                          ),
                        ),
                      ),
                      height: 5,
                      width: 200,
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){

                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 50, 20, 0),
                            child: Container(
                                width: MediaQuery.of(context).size.width*0.8,
                                height: MediaQuery.of(context).size.height*0.3,
                                decoration: BoxDecoration(
                                  color: Hexcolor('#E5E5E5'),
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                      blurRadius: 4,
                                      spreadRadius: 3,
                                      offset: Offset(-5,5),
                                    ),
                                  ],
                                ),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[

                                      Row(

                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text("Police ID",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Hexcolor('#736666'),
                                                  ),),
                                                SizedBox(width: 8,),
                                              ],
                                            ),
                                            SizedBox(width: 20,),
                                            Column(
                                              children: <Widget>[
                                                Text("183345970",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Hexcolor('#152971'),
                                                  ),),
                                              ],
                                            ),
                                          ]
                                      ),
                                      Row(

                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text("Police Name ",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Hexcolor('#736666'),
                                                  ),),
                                              ],
                                            ),
                                            SizedBox(width: 20,),
                                            Column(
                                              children: <Widget>[
                                                Text("Mr. Rakesh Mishra",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Hexcolor('#152971'),
                                                  ),),
                                              ],
                                            ),
                                          ]
                                      ),
                                      Row(

                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                              children: <Widget>[
                                                Text("Mark",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Hexcolor('#736666'),
                                                  ),),
                                              ],
                                            ),
                                            SizedBox(width: 140,)

                                          ]
                                      ),


                                    ]
                                )
                            ),
                          ),
                        ),
                      ],
                    ),



                  ],
                ),
              ),
            ],

          ),
          Row(

          ),
        ],
      ),
    );
  }
  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      //picking the status code
      stream: Firestore.instance.collection('usersBoardingPass').snapshots(),
//      Firestore.instance.collection('airportCounter').document('delhi')
//          .collection('verificationCounter').document('counters').collection('counter1').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.data.documents[0]['satusofVerification']=='null')
        {return Padding(
          padding:  EdgeInsets.only(top: (MediaQuery.of(context).size.height*0.40),left:(MediaQuery.of(context).size.width*0.40) ),
          child: Container(
            width: 120,
            height: 100,

            child: Dialog(

              child: new CircularProgressIndicator(),
            ),
          ),
        );}
        else{
          // var new32=snapshot.data.documents[0]['boardingInfo'];
          return
            // Text('$new32');
            _buildsome(context, snapshot);
        }

      },

    );
  }

  Widget build(BuildContext context) {
    FoodNotifier foodNotifier = Provider.of<FoodNotifier>(context, listen: false);

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('CounterVerification')),
        body: _buildBody(context)

    );
  }
}






//import 'dart:async';
//
//import 'package:apka/screens/login_screen1.dart';
//import 'package:flutter/material.dart';
//import 'package:barcode_scan/barcode_scan.dart';
//import 'package:flutter/services.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//class HomePage23 extends StatefulWidget {
//  @override
//  HomePage23State createState() {
//    return new HomePage23State();
//  }
//}
//
//class HomePage23State extends State<HomePage23> {
//
//  String result = "Hey there !";
//  Future _scanQR() async {
//    try {
//       var qrResult = await BarcodeScanner.scan();
//       print(qrResult);
//      //sendBoardingpassRequest(qrResult);
//      setState(() {
//        //result = qrResult;
//      });
//
//
//    } on PlatformException catch (ex) {
//      if (ex.code == BarcodeScanner.cameraAccessDenied) {
//        setState(() {
//          result = "Camera permission was denied";
//        });
//      } else {
//        setState(() {
//          result = "Unknown Error $ex";
//        });
//      }
//    } on FormatException {
//      setState(() {
//        result = "You pressed the back button before scanning anything";
//      });
//    } catch (ex) {
//      setState(() {
//        result = "Unknown Error $ex";
//      });
//    }
//  }
//  void sendBoardingpassRequest(result) async{
//    var qr_split=new List(3);
//    print(result);
//    print('yes its working');
//    qr_split=result.split(",");
//   Firestore.instance
//        .collection('courses').document(qr_split[0]).collection(qr_split[1]).document(qr_split[2]).updateData(<String, dynamic>{
//      'userUid': gSignIn.currentUser.id,
//    });
////    snapshot.updateData(<String, dynamic>{
////      name: this.name
////    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text("QR Scanner"),
//      ),
//      body: Center(
//        child: Text(
//          result,
//          style: new TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
//        ),
//      ),
//      floatingActionButton: FloatingActionButton.extended(
//        icon: Icon(Icons.camera_alt),
//        label: Text("Scan"),
//        onPressed: _scanQR,
//      ),
//      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//    );
//  }
//}