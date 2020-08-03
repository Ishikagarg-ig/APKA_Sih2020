import 'package:flutter/material.dart';

class Calender extends StatefulWidget {
  @override
  bool ch;
  bool ch2;
  var thisdate;
  Calender({this.ch,this.ch2,this.thisdate});
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  bool boole1;
  bool boole2;
  DateTime dateTime=new DateTime.now();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getfuc();
  }
  getfuc(){
    boole1=widget.ch;
    boole2=widget.ch2;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.116,
          height: MediaQuery.of(context).size.height * 0.09,
          child: Material(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.black,
                width: 1,
                style: BorderStyle.solid,
              ),
              borderRadius: BorderRadius.circular(16),
            ),
            child: (boole1)?Column(
              children: <Widget>[

                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.125,
                  child:
                  (boole2)?Icon(Icons.check ):Icon(Icons.lock),
                ),
                Text(widget.thisdate,style: TextStyle(
                  fontSize: 14,
                ),),
              ],
            ):Column(
              children: <Widget>[
                Text(widget.thisdate,style: TextStyle(
                  fontSize: 14,
                ),),
              ],
            )

          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.018,
        ),
      ],
    );
  }
}
