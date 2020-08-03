import 'package:apka/widgets/Navbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class emplyee extends StatefulWidget {
  @override
  _emplyeeState createState() => _emplyeeState();
}

class _emplyeeState extends State<emplyee> {
  @override
  Widget build(BuildContext context) {
    double font_size = 12.0;
    String value="Arrange";

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.14,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Hexcolor('#736666'),
                  width: 3.0,
                ),
              ),
              color: Colors.white,
            ),
            child: Align(
              child: Padding(
                padding: const EdgeInsets.only(top: 25.0,),
                child: Column(
                  children: [
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:18.0),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Navbar()));
                            },
                              child: Icon(Icons.arrow_back,size:25,color: Colors.black,),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:90,bottom:20),
                          child: Text(
                            "CheckList",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 29.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        SizedBox(height:20),
        Text("Chandigarh Airport",style: TextStyle(fontSize: 28,color: Hexcolor('#050F32')),),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(5),
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        Text("Name",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#736666')),),
                        Text("Arrival\n Time",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#736666')),),
                        Text("",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#736666')),),
                        Text("Employee Id",textAlign:TextAlign.center,style: TextStyle(fontSize:16,color: Hexcolor('#050F32')),)
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Deepika\n Padukone",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        Text("11:30",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        //Text("Arranged",style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        RaisedButton(
                          padding: EdgeInsets.only(left: 1,right: 1,top: 1,bottom: 1),
                          color: value=="Arrange"?Hexcolor('#152971').withOpacity(0.7):Hexcolor('#152971'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          onPressed: (){
                            setState(() {
                              value="Arranged";
                            });
                          },
                          child: Text("${value}",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 12.0,),),
                        ),
                        Text("1357289",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Alia\n Bhatt",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        Text("11:30",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        //Text("Arranged",style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        RaisedButton(
                          padding: EdgeInsets.only(left: 1,right: 1,top: 1,bottom: 1),
                          color: Hexcolor('#152971'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          onPressed: (){
                          },
                          child: Text("Arranged",style: TextStyle(color: Colors.white,fontSize: 12.0,),),
                        ),
                        Text("13794570",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Sharukh\n Khan",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        Text("11:30",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        //Text("Arranged",style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        RaisedButton(
                          padding: EdgeInsets.only(left: 1,right: 1,top: 1,bottom: 1),
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          onPressed: (){
                          },
                          child: Text("Pending",style: TextStyle(color: Colors.white,fontSize: 12.0,),),
                        ),
                        Text("16094570",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Sachin\n Tendulkar",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        Text("11:30",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        //Text("Arranged",style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        RaisedButton(
                          padding: EdgeInsets.only(left: 1,right: 1,top: 1,bottom: 1),
                          color: Hexcolor('#152971'),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          onPressed: (){
                          },
                          child: Text("Arranged",textAlign:TextAlign.center,style: TextStyle(color: Colors.white,fontSize: 12.0,),),
                        ),
                        Text("13294579",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("Mohit\n Chuhan",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        Text("11:30",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        //Text("Arranged",style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        RaisedButton(
                          padding: EdgeInsets.only(left: 1,right: 1,top: 1,bottom: 1),
                          color: Hexcolor('#152971').withOpacity(0.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          onPressed: (){
                          },
                          child: Text("Arrange",style: TextStyle(color: Colors.white,fontSize: 12.0,),),
                        ),
                        Text("1235909",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                      ],
                    ),TableRow(
                      children: [
                        Text("Randir\n Kapoor",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        Text("11:30",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        //Text("Arranged",style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        RaisedButton(
                          padding: EdgeInsets.only(left: 1,right: 1,top: 1,bottom: 1),
                          color: Hexcolor('#152971').withOpacity(0.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          onPressed: (){
                          },
                          child: Text("Arrange",style: TextStyle(color: Colors.white,fontSize: 12.0,),),
                        ),
                        Text("2645394",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text("AR\n Rahan",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        Text("11:30",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        //Text("Arranged",style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
                        RaisedButton(
                          padding: EdgeInsets.only(left: 1,right: 1,top: 1,bottom: 1),
                          color: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          onPressed: (){
                          },
                          child: Text("Pending",style: TextStyle(color: Colors.white,fontSize: 12.0,),),
                        ),
                        Text("16792570",textAlign:TextAlign.center,style: TextStyle(fontSize: 16,color: Hexcolor('#152971')),),
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
}