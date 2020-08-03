import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class VerficatonCounter extends StatefulWidget {
  @override
  _VerficatonCounterState createState() => _VerficatonCounterState();
}

class _VerficatonCounterState extends State<VerficatonCounter> {
  bool num = false;
  bool statusoflugage=false;
  bool statusoflugage1=false;
  initState() {
    getinfo();
    super.initState();
  }

  getinfo() async {
    QuerySnapshot snapshot = await Firestore.instance.
    collection('airportCounter').document('delhi')
        .collection('verificationCounter')
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
    boradinginfo.add('name');
    boradinginfo.add('time');
    boradinginfo.add('gatenumber');
    boradinginfo.add('queue number');
    boradinginfo.add('seat number');
    boradinginfo.add('lugageid');
    boradinginfo.add('secretcode23');

    //getting requested uid
    QuerySnapshot snapshot = await Firestore.instance.
    collection('airportCounter').document('delhi')
        .collection('verificationCounter').document('counters').collection('counter1')
        .getDocuments();
    print(snapshot.documents[0]['userId']);
    // checking the weather it exist in database or not

  var as;
    Firestore.instance
        .collection('airportCounter').document('delhi').collection(
        'counterStack').document('counters').collection('counter1').document(snapshot.documents[0]['userId'])
        .get()
        .then((value) {

      var as= value.data;
      //_foodList.add(as.toString());
       print("this the reult");
       print(as);
      var result=as;
      print(as['userId']);
      var check=as['userId']+"done";
      print(check==as['secretCode']);
      setState(() {
        statusoflugage1=true;
      });

      if((as['userId']+"done")==as['secretCode'])
      {
        setState(() {

          statusoflugage=true;
          print(statusoflugage);
          print(statusoflugage1);
        });

      }


    }
    );



    print('checkingCounter');
    Firestore.instance.collection('usersBoardingPass').document(
        snapshot.documents[0]['userId']).updateData({
      "statusOfVerification": 'done',
    });
//    // todo : for checking weather it already exist or not
//    Firestore.instance
//        .collection('airportCounter').document('delhi').collection(
//        'counterStack').document('counters').collection('counter1').document(snapshot.documents[0]['userId']).setData(<String, dynamic>{
//      "secretCode": '232323',
//    });

//    Firestore.instance
//        .collection('airportCounter').document('delhi').collection(
//        'verificationCounter').document('counters').collection('counter1').document('userCurrent').updateData(<String, dynamic>{
//      'userId': null,
//      'secretCode':null,
//    });
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
          'verificationCounter').document('counters').collection('counter1').snapshots(),
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

       // var new32=;
        return
          // Text('$new32');
          _buildsome(context, snapshot);
      },

    );
  }


  Widget _buildsome(BuildContext context, var values) {
    //var val =
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
          child: Image.asset('assets/qrcode2.png', alignment: Alignment.center,
            height: 100,
            width: 100,),
        ),
        SizedBox(height: 10,),
        Container(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.50,
          child: Column(
            children: <Widget>[
              Visibility(
                visible: bol,
                child: Text("Wait while getting value"),
              ),
              Visibility(
                visible: !bol,
                child: Text("Request Is in Process!\nPlease Check ",style: TextStyle(fontSize: 20.0,color: Hexcolor('#050F32'),fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Container(
                height: 40,
                width: 100,
                color: Colors.blue,
                child: FlatButton(

                  child: Text('click'),
                  onPressed: () {
                    sendData();
                  },
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Visibility(
                      visible: statusoflugage1,
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.black12,
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            child: Row(
                              children: <Widget>[

    SizedBox(width:20),
                                Visibility(
                                  visible: statusoflugage,
                                  child:
                                  //Text("Verified"),
                                  Icon(Icons.check,color: Colors.green,size: 50,)
                                ),
                                Visibility(
                                  visible: !statusoflugage,
                                  child:
                                  //Text("NotVerified"),
                                  Icon(Icons.close,color: Colors.red,size: 50,),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 100,
                            color: Colors.green,
                            child: FlatButton(

                              child: Text('Done'),
                              onPressed: () async{
                                Firestore.instance
                                    .collection('airportCounter').document('delhi').collection('verificationCounter').document('counter').collection('counter1').document('userCurrent').updateData(<String, dynamic>{
                                  'userId': 'null',
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ],
    );
  }

//
//  congratulationsBox(BuildContext context) {
//    return showDialog(
//        context: context,
//        barrierDismissible: true,
//
//        builder: (BuildContext context) {
//          return AlertDialog(
//            title: Text("Congratulations!!", style: TextStyle(color: Hexcolor(
//                '#050F32'), fontSize: 25.0),),
//            content: SingleChildScrollView(
//              child: ListBody(
//                children: <Widget>[
//                  Text("You got 10% discount", style: TextStyle(
//                      fontWeight: FontWeight.bold,
//                      color: Hexcolor('#050F32')),),
//                  Text("Current Price - Rs250", style: TextStyle(
//                      fontSize: 20.0, color: Hexcolor('#152971')),),
//                  Padding(
//                    padding: const EdgeInsets.only(top: 20.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: [
//                        RaisedButton(
//                          padding: EdgeInsets.only(top: 9, bottom: 9),
//                          color: Hexcolor('#152971').withOpacity(0.90),
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(15.0),
//                          ),
//                          onPressed: () {
//                            //Navigator.push(context, MaterialPageRoute(builder: (context) => TripDetails()));
//                          },
//                          child: Text("Done", style: TextStyle(
//                            color: Colors.white, fontSize: 20.0,),),
//                        ),
//                        RaisedButton(
//                          padding: EdgeInsets.only(top: 9, bottom: 9),
//                          color: Hexcolor('#C4C4C4').withOpacity(0.90),
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(15.0),
//                          ),
//                          onPressed: () {
//                            // Navigator.push(context, MaterialPageRoute(builder: (context) => AutoBookingScreen()));
//                          },
//                          child: Text("Cancel", style: TextStyle(
//                            color: Colors.black, fontSize: 20.0,),),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          );
//        }
//    );
//  }


}
