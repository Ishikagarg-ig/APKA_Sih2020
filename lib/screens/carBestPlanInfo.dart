import 'package:apka/widgets/dialogBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CarBestPlanInfo extends StatefulWidget {
  CarBestPlanInfo({this.time});
  final time;
  @override
  _CarBestPlanInfoState createState() => _CarBestPlanInfoState();
}

class _CarBestPlanInfoState extends State<CarBestPlanInfo> {
  DialogBox dialogBox =new DialogBox();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Best Plan For you"),
        backgroundColor: Hexcolor('#050F32'),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 0.5,
                  ),
                ),
              ),
              child: Image(image: AssetImage('assets/images/taxi.png'),height: 200,width: MediaQuery.of(context).size.width,),
            ),
          ),
//          Container(
//            height: MediaQuery.of(context).size.height/2,
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              children: [
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: [
//                    Text("Total Fare",style: TextStyle(fontSize: 23,color: Hexcolor('#736666')),),
//                    Column(
//                      children: [
//                        Text("Rs 680",style: TextStyle(fontSize: 35,color: Hexcolor('#237354')),),
//                        Text("Inc. of Taxes",style: TextStyle(color: Hexcolor('#736666'),fontSize: 23),),
//                      ],
//                    ),
//                  ],
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: [
//                    Text("Car Number",style: TextStyle(fontSize: 23,color: Hexcolor('#736666')),),
//                    Text("CH 01 4777",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 28),),
//                  ],
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: [
//                    Text("Driver Name",style: TextStyle(fontSize: 26,color: Hexcolor('#736666')),),
//                    Text("Shakarn",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 28),),
//                  ],
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: [
//                    Text("Car Type",style: TextStyle(fontSize: 26,color: Hexcolor('#736666')),),
//                    Column(
//                      children: [
//                        Text("Etios",style: TextStyle(fontSize: 38,color: Hexcolor('#050F32')),),
//                        Text("AC | Seater",style: TextStyle(color: Hexcolor('#736666'),fontSize: 23),),
//                      ],
//                    ),
//                  ],
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: [
//                    Text("OTP",style: TextStyle(fontSize: 26,color: Hexcolor('#736666')),),
//                    Text("65752",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 28),),
//                  ],
//                ),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: [
//                    RaisedButton(
//                      padding: EdgeInsets.all(15),
//                      color: Hexcolor('#152971').withOpacity(0.90),
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(10.0),
//                      ),
//                      onPressed: () {
//                        dialogBox.SuccessfullyBooked(context);
//                      },
//                      child: Text("Select Cab", style: TextStyle(
//                        color: Colors.white, fontSize: 20.0,),),
//                    ),
//                    RaisedButton(
//                      padding: EdgeInsets.all(15),
//                      color: Hexcolor('#C4C4C4'),
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(10.0),
//                      ),
//                      onPressed: () {
//                        dialogBox.SuccessfullyBooked(context);
//                      },
//                      child: Text("Cancel", style: TextStyle(
//                        color: Colors.black, fontSize: 20.0,),),
//                    ),
//                  ],
//                ),
//              ],
//            ),
//          )
        Container(
          margin: EdgeInsets.all(20),
          child: Table(
            children: [
              TableRow(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Total Fare",style: TextStyle(fontSize: 22, color: Hexcolor('#736666')),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Rs. 680",style: TextStyle(fontSize: 22, color: Hexcolor('#237354')),),
                  )
                ],
              ),
              TableRow(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Car No.",style: TextStyle(fontSize: 22, color: Hexcolor('#736666')),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("CH 01 4577",style: TextStyle(fontSize: 22,color: Hexcolor('#050F32')),),
                  )
                ],
              ),
              TableRow(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Driver Name",style: TextStyle(fontSize: 22, color: Hexcolor('#736666')),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Shakaran",style: TextStyle(fontSize: 22,color: Hexcolor('#050F32')),),
                  ),
                ],
              ),
              TableRow(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Car Type",style: TextStyle(fontSize: 22, color: Hexcolor('#736666')),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Etios(AC)",style: TextStyle(fontSize: 22,color: Hexcolor('#050F32')),),
                  ),
                ],
              ),
              TableRow(
                children:[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("OTP",style: TextStyle(fontSize: 22, color: Hexcolor('#736666')),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("65430",style: TextStyle(fontSize: 22,color: Hexcolor('#050F32')),),
                  ),
                ],
              ),
            ],
          ),
        ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      padding: EdgeInsets.all(15),
                      color: Hexcolor('#152971').withOpacity(0.90),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        dialogBox.SuccessfullyBooked(context);
                      },
                      child: Text("Select Cab", style: TextStyle(
                        color: Colors.white, fontSize: 20.0,),),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.only(top:15,bottom: 15,left: 25,right: 25),
                      color: Hexcolor('#C4C4C4'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        //dialogBox.SuccessfullyBooked(context);
                      },
                      child: Text("Cancel", style: TextStyle(
                        color: Colors.black, fontSize: 20.0,),),
                    ),
                  ],
                ),
//            Container(
//              //height: MediaQuery.of(context).size.width,
//              child: Column(
//                   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                children: [
//                  Padding(
//                    padding: const EdgeInsets.only(top:18.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: [
//                        Column(
//                          children: [
//                            Text("Car Type",style: TextStyle(fontSize: 30.0,color: Hexcolor('#736666')),),
//                            Text("Etios",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Hexcolor('#152971')),),
//                          ],
//                        ),
//                        Column(
//                          children: [
//                            Text("AC | Seater",style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold,color: Hexcolor('#736666')),),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(top:15,left:38.0),
//                    child: Row(
//                      children: [
//                        Text("Sedan, Dzire or similar",style: TextStyle(fontSize: 25,color: Hexcolor('#736666')),),
//                      ],
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(top:20.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: [
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text("${widget.time}",style: TextStyle(fontSize: 30,color: Hexcolor('#152971')),),
//                            Text("Departure Time",style: TextStyle(fontSize: 23,color: Hexcolor('#736666')),),
//                          ],
//                        ),
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text("Rs 680",style: TextStyle(fontSize: 35,color: Hexcolor('#237354')),),
//                            Text("Inc. of taxes",style: TextStyle(fontSize: 23,color: Hexcolor('#736666')),),
//                          ],
//                        ),
//                      ],
//                    ),
//                  ),
//                  Padding(
//                    padding: const EdgeInsets.only(top:20.0),
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children: [
//                        Column(
//                          crossAxisAlignment: CrossAxisAlignment.start,
//                          children: [
//                            Text("Rs. 22.14/km",style: TextStyle(fontSize: 30,color: Hexcolor('#152971')),),
//                            Text("Fare per km",style: TextStyle(fontSize: 23,color: Hexcolor('#736666')),),
//                          ],
//                        ),
//                        RaisedButton(
//                          padding: EdgeInsets.all(15),
//                          color: Hexcolor('#152971').withOpacity(0.90),
//                          shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(10.0),
//                          ),
//                          onPressed: () {
//                            dialogBox.SuccessfullyBooked(context);
//                          },
//                          child: Text("Select Cab", style: TextStyle(
//                            color: Colors.white, fontSize: 20.0,),),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
        ],
      ),
    );
  }
}
