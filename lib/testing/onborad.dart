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
class ScanScreen extends StatefulWidget {
  @override
  _ScanState createState() => new _ScanState();
}

class _ScanState extends State<ScanScreen> {
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
   Firestore.instance
        .collection('airportCounter').document(qr_split[0]).collection(qr_split[1]).document(qr_split[2]).updateData(<String, dynamic>{
      'userId': '111138901758560322395',
    });


    Firestore.instance
        .collection('usersBoardingPass').document('111138901758560322395')
        .get()
        .then((value) {
          if(value.data[0]['boardingInfo']==null)
            {
              Firestore.instance.collection('usersBoardingPass').document(
          '111138901758560322395').setData(<String, dynamic>{
        'boardingInfo': 'null',
      });
            }
      // print(as);
    }


    );

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
//      if (e.code == scanner.cameraAccessDenied) {
//        setState(() {
//          this.barcode = 'The user did not grant the camera permission!';
//        });
//      } else {
//        setState(() => this.barcode = 'Unknown error: $e');
//      }
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
    var val=values.data.documents[0]['boardingInfo'];
    var a=val[0];
    var b=val[1];
    var c=val[2];
    var d=val[3];
    var e=val[4];
    var f=val[5];
    var g=val[6];
    var h=val[7];
    var i=val[8];
    var j=val[9];
    var k=val[10];
    var l=val[11];
    bool scg=false;
    if(l!='null')
      {
        scg=true;
      }

    //var L=val[11];


    bool visible1=true;
//    if(!has=null)
//      {
//        visible1=true;
//      }
   // var valuyt=data1.data[0];
    return Container(

      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.13,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Hexcolor('#152971'),
                  Hexcolor('#050F32'),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 2.3),
                stops: [0.0, 0.7],
                tileMode: TileMode.clamp,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(90.0),
                bottomLeft: Radius.circular(90.0),
              ),
            ),
            child: Align(
              child: Padding(
                padding: const EdgeInsets.only(top:25.0),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Boarding pass",
                      style: TextStyle(
                        fontSize: 29.0,
                        color: Colors.white,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
   //SizedBox(height: 20,),
          Visibility(
            visible: scg,
            child: Row(
              children: <Widget>[
                GestureDetector(
//              onTap: (){
//                Navigator.of(context).push(
//                  MaterialPageRoute(
//                    builder: (context) {
//                      return ScanScreen2();
//                    },
//                  ),
//                );
//              },
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(40, 40, 10, 0),
                    child: Container(
                        width: MediaQuery.of(context).size.width*0.8,
                        height: MediaQuery.of(context).size.height*0.35,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                              Image.asset(
                                'assets/c22.png',
                                height: 190,
                                width:410,
                              ),
                              Row(

                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[ Text("Luguage belt-time:$l",
                                    style: TextStyle(
                                      fontSize: 22.0,
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
          ),


          Container(
            height:MediaQuery.of(context).size.height*0.70,
            margin: EdgeInsets.only(top:20,left: 23, right: 23,),
            alignment: Alignment.topCenter,
           // height: MediaQuery.of(context).size.height*0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 2,
                  spreadRadius: 4,
                  offset: Offset(5,5),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Flight No.",style: TextStyle(color: Hexcolor('#736666'),fontSize: 20.0),),
                    Image.asset(
                      'assets/indigo.png',
                      height: 30,
                      width:30,
                    ),
                    Text("$a",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 20.0),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width:340,
                      height: 40,
                      color: Hexcolor('#152971'),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[Text("ON SCHEDULE ",style: TextStyle(color: Colors.white,fontSize: 20.0, ))]),
                    )
                  ],

                ),



                Padding(
                  padding: const EdgeInsets.only(top:1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: <Widget>[
                              SizedBox(width: 60),
                              Text("$b",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0,fontWeight: FontWeight.bold),),
                            ],

                          )],
                      ),
                      Column(
                        children: [
                          Row(
                            children: <Widget>[
                              SizedBox(width: 40),
                              Text("Counter - ",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0,fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),
                              Text("$d",style: TextStyle(color: Hexcolor('#152971'),fontSize: 18.0,fontWeight: FontWeight.bold),)
                            ],

                          )],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("IXC",style: TextStyle(color: Hexcolor('#152971'),fontSize: 28.0,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("Chandigarh",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22.0),),
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: <Widget>[
                              Text("...",style: TextStyle(color: Hexcolor('#152971'),fontSize: 40.0),),
                              Row(
                                children: <Widget>[
                                  Image.asset(
                                    'assets/boarding121.png',
                                    height: 30,
                                    width:30,
                                  ),
                                ],
                              ),

                              Text("...",style: TextStyle(color: Hexcolor('#152971'),fontSize: 40.0),),
                            ],
                          ),



                          //Image come
                        ],
                      ),
                      Column(
                        children: [
                          Text("BLR",style: TextStyle(color: Hexcolor('#152971'),fontSize: 28.0,fontWeight: FontWeight.bold),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("Bengaluru",style: TextStyle(color: Hexcolor('#736666'),fontSize: 22.0),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text("Passenger",style: TextStyle(color: Hexcolor('#736666'),fontSize: 20.0),textAlign: TextAlign.start,),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("$c",style: TextStyle(color: Hexcolor('#152971'),fontSize: 26.0),textAlign: TextAlign.start,),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Class",style: TextStyle(color: Hexcolor('#736666'),fontSize: 20.0),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("$e",style: TextStyle(color: Hexcolor('#152971'),fontSize: 26.0),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Column(
                        children: [
                          Text("PNR",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("$f",style: TextStyle(color: Hexcolor('#152971'),fontSize: 22.0),),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Seat",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("$g",style: TextStyle(color: Hexcolor('#152971'),fontSize: 22.0),),
                          ),
                        ],
                      ),
                      Column(

                        children: [
                          Text("Gate",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("$h",style: TextStyle(color: Hexcolor('#152971'),fontSize: 22.0),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      Column(
                        children: [
                          Text("Date",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("$i",style: TextStyle(color: Hexcolor('#152971'),fontSize: 22.0),),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text("Departure",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("$j",style: TextStyle(color: Hexcolor('#152971'),fontSize: 22.0),),
                          ),
                        ],
                      ),
                      Column(

                        children: [
                          Text("Arrival",style: TextStyle(color: Hexcolor('#736666'),fontSize: 18.0),),
                          Padding(
                            padding: const EdgeInsets.only(top:5.0),
                            child: Text("$k",style: TextStyle(color: Hexcolor('#152971'),fontSize: 22.0),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('usersBoardingPass').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.data.documents[0]['boardingInfo']==null)
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
      //appBar: AppBar(title: Text('Boarding Pass')),
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