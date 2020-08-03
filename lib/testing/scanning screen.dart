import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class CheckingScreen extends StatefulWidget {
  @override
  _CheckingScreenState createState() => _CheckingScreenState();
}

class _CheckingScreenState extends State<CheckingScreen> {
  bool num = false;

  initState() {
    getinfo();
    super.initState();
  }

  getinfo() async {
    QuerySnapshot snapshot = await Firestore.instance.
    collection('airportCounter').document('delhi')
        .collection('checkinCounter')
        .getDocuments();
    print(snapshot.documents[0]['userId']);
    setState(() {
      if (snapshot.documents[0]['userId'] != null) {
        num = true;
      }
    });
    return num;
  }

  sendData() async {
    //List boradinginfo;
    List<String> boradinginfo = [];
    boradinginfo.add('6E592');
    boradinginfo.add('Sunday June 26');
    boradinginfo.add('SUJEET YADAV');
    boradinginfo.add('5');
    boradinginfo.add('ECONOMY');
    boradinginfo.add('413ERGP');
    boradinginfo.add('5B');
    boradinginfo.add('25');
    boradinginfo.add('26 JUNE');
    boradinginfo.add('10:00 A.M');
    boradinginfo.add('11:10 A.M');
    boradinginfo.add('null');


    QuerySnapshot snapshot = await Firestore.instance.
    collection('airportCounter').document('delhi')
        .collection('checkinCounter')
        .getDocuments();
    print(snapshot.documents[0]['userId']);

    //final GoogleSignInAccount gCurrentUser = gSignIn.currentUser;
//    var fr = Firestore.instance.collection('usersBoardingPass').document(
//        snapshot.documents[0]['boardingInfo']).get();
//    if (fr == null) {
//      Firestore.instance.collection('usersBoardingPass').document(
//          snapshot.documents[0]['userId']).setData({
//        "boardingInfo": "null",
//      });
//    }
    print('itsWorking');
    Firestore.instance.collection('usersBoardingPass').document(
        snapshot.documents[0]['userId']).setData({
      "boardingInfo": boradinginfo,
      "statusOfVerification": 'null',
    });

    Firestore.instance.
    collection('airportCounter').document('delhi')
        .collection('counterStack').document('counters').collection('counter1').document(snapshot.documents[0]['userId']).setData(<String, dynamic>{
      "secretCode": (snapshot.documents[0]['userId']+"done"),
      "userId":snapshot.documents[0]['userId'],
    });

//    Firestore.instance.
//    collection('airportCounter').document('delhi')
//        .collection('verificationCounter').document('counters').collection('counter1').document('userCurrent').setData(<String, dynamic>{
//      "secretCode": (snapshot.documents[0]['userId']+"done"),
//      "userId":snapshot.documents[0]['userId'],
//    });

    Firestore.instance
        .collection('airportCounter').document('delhi').collection(
        'checkinCounter').document('counter1').updateData(<String, dynamic>{
      'userId': 'null',
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
            'Coumputer Screen'
        ),
      ),
      body: _buildBody(context),
    );
  }


  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.
      collection('airportCounter').document('delhi').collection(
          'checkinCounter').snapshots(),
      builder: (context, snapshot) {
//        if (snapshot.data.documents[0]['boardingInfo']=='null')
//        {return Padding(
//          padding:  EdgeInsets.only(top: (MediaQuery.of(context).size.height*0.40),left:(MediaQuery.of(context).size.width*0.40) ),
//          child: Container(
//            width: 120,
//            height: 100,
//
//            child: Dialog(
//
//              child: new CircularProgressIndicator(),
//            ),
//          ),
//        );}

        // var new32=snapshot.data.documents[0]['boardingInfo'];
        return
          // Text('$new32');
          _buildsome(context, snapshot);
      },

    );
  }


  Widget _buildsome(BuildContext context, AsyncSnapshot<QuerySnapshot> values) {
    var val = values.data.documents[0]['userId'];
    //print('val:'+val);
    bool bol = false;
    if (val == 'null') {
      bol = true;
    }


    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width,
          alignment: Alignment.center,
          child: Image.asset('assets/counter1.png', alignment: Alignment.center,
            height: 100,
            width: 100,),
        ),
        Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.50,
          child: Column(
            children: <Widget>[
              Visibility(
                visible: bol,
                child: Text("Wait for requests",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32'),fontWeight: FontWeight.bold),),
              ),
              Visibility(
                visible: !bol,
                child: Text("Request In process \nplease verify",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32'),fontWeight: FontWeight.bold),),),
              FlatButton(
                child: Container(
                  height: 40,
                  width: 100,
                  color: Colors.blue,
                  child: FlatButton(

                    child: Text('Done'),
                    onPressed: () {
                      sendData();
                    },
                  ),
                ),
                onPressed: () {
                  sendData();
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
