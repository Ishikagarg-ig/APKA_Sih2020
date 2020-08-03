import 'package:apka/widgets/Navbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PremimumAccount extends StatefulWidget {
  @override
  _PremimumAccountState createState() => _PremimumAccountState();
}

class _PremimumAccountState extends State<PremimumAccount> {
  List<Container> imgList = [
    Container(
      margin: EdgeInsets.only(left:20),
      height: 800,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Container(
              decoration:BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 3.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('assets/images/broze.png'),height: 80,width: 45,),
                  Text("Bronze Services",style: TextStyle(fontSize: 28,color: Hexcolor('#050F32'),fontFamily: 'Fodamento-Regular'),),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text("Service Providing",style: TextStyle(fontSize: 20,color: Hexcolor('#736666')),),
                Padding(
                  padding: const EdgeInsets.only(top:18.0,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("No queue",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Priority",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("First Luggage Exit",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(left:20),
      height: 800,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Container(
              decoration:BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 3.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('assets/images/silver.jfif'),height: 80,width: 45,),
                  Text("Silver Services",style: TextStyle(fontSize: 28,color: Hexcolor('#050F32'),fontFamily: 'Fodamento-Regular'),),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text("Service Providing",style: TextStyle(fontSize: 20,color: Hexcolor('#736666')),),
                Padding(
                  padding: const EdgeInsets.only(top:18.0,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("No queue",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Priority",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Direct Police Verification",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("First Luggage Exit",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(left:20),
      height: 800,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Container(
              decoration:BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 3.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('assets/images/gold.jpg'),height: 80,width: 45,),
                  Text("Gold Services",style: TextStyle(fontSize: 28,color: Hexcolor('#050F32'),fontFamily: 'Fodamento-Regular'),),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text("Service Providing",style: TextStyle(fontSize: 20,color: Hexcolor('#736666')),),
                Padding(
                  padding: const EdgeInsets.only(top:18.0,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("No queue",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Priority",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Direct Police Verification\n & First Luggage Exit",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Snack and Tea",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(left:20),
      height: 800,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Container(
              decoration:BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 3.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('assets/images/platinum.jfif'),height: 80,width: 45,),
                  Text("Platinum Services",style: TextStyle(fontSize: 28,color: Hexcolor('#050F32'),fontFamily: 'Fodamento-Regular'),),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text("Service Providing",style: TextStyle(fontSize: 20,color: Hexcolor('#736666')),),
                Padding(
                  padding: const EdgeInsets.only(top:18.0,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("No queue",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Priority",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Direct Police Verification\n & First Luggage Exit",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Lunch/Rest",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    Container(
      margin: EdgeInsets.only(left:20),
      height: 800,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:10.0),
            child: Container(
              decoration:BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 3.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage('assets/images/diamond.jpg'),height: 80,width: 45,),
                  Text("Diamond Services",style: TextStyle(fontSize: 28,color: Hexcolor('#050F32'),fontFamily: 'Fodamento-Regular'),),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                Text("Service Providing",style: TextStyle(fontSize: 20,color: Hexcolor('#736666')),),
                Padding(
                  padding: const EdgeInsets.only(top:18.0,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("No queue",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Priority",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        decoration:BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Hexcolor('#736666').withOpacity(0.6),
                              width: 3.0,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Direct Police Verification\n & First Luggage Exit",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                      Container(
                        height: 75,
                        child: Row(
                          children: [
                            Icon(Icons.check,size: 20,),
                            Text("Lunch/Rest/Taxi",style: TextStyle(fontSize: 24,color: Hexcolor('#152971')),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  ];
  var _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Hexcolor('#152971'),
                Hexcolor('#FFFFFF'),
              ],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 0.7],
              tileMode: TileMode.clamp,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top:28.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Navbar()));
                      },
                        child: Icon(Icons.arrow_back,color: Colors.grey,),
                    ),

                    Text("Try our Premimum Account",style: TextStyle(fontSize: 26,color: Colors.white),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:38.0,left: 20),
                  child: Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                          height:450,
                          viewportFraction: 0.9,
                          // enlargeCenterPage: true,
                          autoPlay: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          }),
                      items: imgList
                          .map(
                            (item) => item,
                      )
                          .toList(),
                    ),
                  ),
                ),
                RaisedButton(
                  padding: EdgeInsets.only(left: 40,right: 40,top: 12,bottom: 12),
                  color: Hexcolor('#152971'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  onPressed: (){
                  },
                  child: Text("Premimum Account",style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
