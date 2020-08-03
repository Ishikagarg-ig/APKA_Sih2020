import 'package:apka/screens/coronaCases_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FeaturesPage extends StatefulWidget {
  @override
  _FeaturesPageState createState() => _FeaturesPageState();
}

class _FeaturesPageState extends State<FeaturesPage> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<Widget> itemList = [
    Container(child: Image(image: AssetImage('assets/images/already_book.png'),),),
    Container(child: Image(image: AssetImage('assets/images/arservices.png'),),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Hexcolor('#736666'),
                    width: 3.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: IconButton(
                      icon: Icon(Icons.menu,color: Hexcolor('#050F32'),),
                      onPressed: () => _scaffoldKey.currentState.openDrawer(),
                      iconSize: 45.0,
                    ),
                  ),
                  SizedBox(
                    width: 42.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:40.0),
                    child: Text(
                      "APKA",
                      style: TextStyle(
                        color: Hexcolor('#050F32'),
                        fontFamily: 'Fondamento',
                        fontSize: 48.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 42.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: IconButton(
                      icon: Icon(Icons.notifications,color: Hexcolor('#050F32'),),
                      iconSize: 45.0,
                    ),
                  ),
                ],
              ),
            ),
            CarouselSlider(
                items: itemList,
                options: CarouselOptions(
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )
            ),
            SizedBox(height: 40.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: MediaQuery.of(context).size.height*0.3,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Hexcolor('#736666'),
                      width: 3.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      width: MediaQuery.of(context).size.width*0.52,
                      height: MediaQuery.of(context).size.height*0.25,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Card(
                          color: Colors.white,
                          // elevation: 6.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.flight,size: 80,color: Hexcolor('#050F32'),),
                                SizedBox(height: 20.0,),
                                Text("Flight Details",style: TextStyle(color:Hexcolor('#050F32'),fontSize: 22.0),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      width: MediaQuery.of(context).size.width*0.46,
                      height: MediaQuery.of(context).size.height*0.25,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Card(
                          color: Color.fromRGBO(115, 102, 102, 0.62),
                          // elevation: 6.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home,size: 50,color: Colors.white,),
                                    Text("...",style: TextStyle(fontSize:20.0,color: Colors.white),),
                                    Icon(Icons.flight,size: 50,color: Colors.white),
                                  ],
                                ),
                                SizedBox(height: 20.0,),
                                Text("Home-Airport",style: TextStyle(fontSize: 22.0,color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      width: MediaQuery.of(context).size.width*0.46,
                      height: MediaQuery.of(context).size.height*0.25,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.flight,size: 50,color: Hexcolor('#050F32')),
                                    Text("...",style: TextStyle(fontSize:20.0,color: Hexcolor('#050F32'))),
                                    Icon(Icons.home,size: 50,color: Hexcolor('#050F32')),
                                  ],
                                ),
                                SizedBox(height: 20.0,),
                                Text("Airport-Home",style: TextStyle(fontSize: 22.0,color: Hexcolor('#050F32')),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: MediaQuery.of(context).size.height*0.25,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Hexcolor('#736666'),
                      width: 3.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      width: MediaQuery.of(context).size.width*0.46,
                      height: MediaQuery.of(context).size.height*0.2,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Card(
                          color: Color.fromRGBO(115, 102, 102, 0.62),
                          // elevation: 6.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.local_grocery_store,size: 50,color: Colors.white,),
                                SizedBox(height: 10.0,),
                                Text("Luggage Detail",style: TextStyle(fontSize: 22.0,color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      width: MediaQuery.of(context).size.width*0.46,
                      height: MediaQuery.of(context).size.height*0.2,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.phone_android,size: 50,color: Hexcolor('#050F32')),
                                SizedBox(height: 10.0,),
                                Text("AR Services",style: TextStyle(fontSize: 22.0,color: Hexcolor('#050F32')),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.0,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      width: MediaQuery.of(context).size.width*0.46,
                      height: MediaQuery.of(context).size.height*0.2,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Card(
                          color: Color.fromRGBO(115, 102, 102, 0.62),
                          // elevation: 6.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image(image: AssetImage('assets/icons/coronavirus.png'),height:56,width:56,color: Colors.white,),
                                SizedBox(height: 10.0,),
                                Text("Corona Detail",style: TextStyle(fontSize: 22.0,color: Colors.white),)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Column(
              children: [
                Text("SERVICES",style: TextStyle(fontSize: 22.0),),
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                                child: Icon(Icons.navigation,size: 45,),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.text_fields,size: 45,),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.restaurant,size: 45,),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.local_parking,size: 45,),
                            ),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Icon(Icons.hotel,size: 45,),
                            ),
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
    );
  }
}
