import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:hexcolor/hexcolor.dart';
void main() => runApp(rate_app());

class rate_app extends StatefulWidget {
  @override
  _rate_appState createState() => _rate_appState();
}

class _rate_appState extends State<rate_app> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rating bar demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child:Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.14,
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
                            "Feedback",
                            style: TextStyle(
                              fontSize: 29.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 15,),
                          Text(
                            "We love to hear from you",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
                Container(

                  margin: EdgeInsets.only(top:100,left: 23, right: 23,),
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height*0.7,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("On Boarding and Luggage Management",style: TextStyle(fontSize: 16.0,color: Hexcolor('#736666'),fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SmoothStarRating(
                            rating: rating,
                            color: Hexcolor('#152971'),
                            borderColor: Hexcolor('Cecbcb'),
                            size: 40,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 2.0,
                            onRated: (value) {
                              setState(() {
                                rating = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Time and Travel Management",style: TextStyle(fontSize: 16.0,color: Hexcolor('#736666'),fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SmoothStarRating(
                            rating: rating,
                            size: 40,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Hexcolor('#152971'),
                            borderColor: Hexcolor('Cecbcb'),
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 2.0,
                            onRated: (value) {
                              setState(() {
                                rating = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("AR Services ",style: TextStyle(fontSize: 16.0,color: Hexcolor('#736666'),fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SmoothStarRating(
                            rating: rating,
                            size: 40,
                            filledIconData: Icons.star,
                            borderColor: Hexcolor('Cecbcb'),
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Hexcolor('#152971'),
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 2.0,
                            onRated: (value) {
                              setState(() {
                                rating = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text("Overall Experience",style: TextStyle(fontSize: 16.0,color: Hexcolor('#736666'),fontWeight: FontWeight.bold),),

                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SmoothStarRating(
                            rating: rating,
                            size: 40,
                            borderColor: Hexcolor('Cecbcb'),
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            color: Hexcolor('#152971'),
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 2.0,
                            onRated: (value) {
                              setState(() {
                                rating = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:8.0),
                                child: RaisedButton(
                                  padding: EdgeInsets.only(left: 38,right: 38,top: 18,bottom: 18),
                                  color: Hexcolor('#152971'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(70.0)
                                  ),
                                  onPressed: (){
                                    Navigator.pop(context);
                                  },
                                  child: Text("Check",style: TextStyle(color: Colors.white,fontSize: 24.0,),),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],

                  ),
                ),
              ],
            ),
      ),
    ));
  }
}








//import 'package:flutter/material.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
//
//void main() => runApp(rate_app());
//
//class rate_app extends StatefulWidget {
//  @override
//  _rate_appState createState() => _rate_appState();
//}
//
//class _rate_appState extends State<rate_app> {
//  var _ratingController = TextEditingController();
//  double _rating;
//  double _userRating = 3.0;
//  int _ratingBarMode = 1;
//  bool _isRTLMode = false;
//  bool _isVertical = false;
//  IconData _selectedIcon;
//
//  @override
//  void initState() {
//    _ratingController.text = "3.0";
//    super.initState();
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      theme: ThemeData(
//        primarySwatch: Colors.amber,
//        appBarTheme: AppBarTheme(
//          textTheme: TextTheme(
//            title: Theme.of(context).textTheme.title.copyWith(
//              color: Colors.white,
//            ),
//          ),
//        ),
//      ),
//      home: Builder(
//        builder: (context) => Scaffold(
//          appBar: AppBar(
//            title: Text('Flutter Rating Bar'),
//            actions: [
//              IconButton(
//                icon: Icon(Icons.settings),
//                color: Colors.white,
//                onPressed: () async {
//                  _selectedIcon = await showDialog<IconData>(
//                    context: context,
//                    builder: (context) => IconAlert(),
//                  );
//                  _ratingBarMode = 1;
//                  setState(() {});
//                },
//              ),
//            ],
//          ),
//          body: Directionality(
//            textDirection: _isRTLMode ? TextDirection.rtl : TextDirection.ltr,
//            child: SingleChildScrollView(
//              child: Column(
//                crossAxisAlignment: CrossAxisAlignment.center,
//                mainAxisSize: MainAxisSize.min,
//                children: <Widget>[
//                  SizedBox(
//                    height: 40.0,
//                  ),
//                  _heading('Rating Bar'),
//                  _ratingBar(_ratingBarMode),
//                  SizedBox(
//                    height: 20.0,
//                  ),
//                  _rating != null
//                      ? Text(
//                    "Rating: $_rating",
//                    style: TextStyle(fontWeight: FontWeight.bold),
//                  )
//                      : Container(),
//                  SizedBox(
//                    height: 40.0,
//                  ),
//                  _heading('Rating Indicator'),
//                  RatingBarIndicator(
//                    rating: _userRating,
//                    itemBuilder: (context, index) => Icon(
//                      _selectedIcon ?? Icons.star,
//                      color: Colors.amber,
//                    ),
//                    itemCount: 5,
//                    itemSize: 50.0,
//                    unratedColor: Colors.amber.withAlpha(50),
//                    direction: _isVertical ? Axis.vertical : Axis.horizontal,
//                  ),
//                  SizedBox(
//                    height: 20.0,
//                  ),
//                  Padding(
//                    padding: EdgeInsets.symmetric(horizontal: 16.0),
//                    child: TextFormField(
//                      controller: _ratingController,
//                      keyboardType: TextInputType.number,
//                      decoration: InputDecoration(
//                        border: OutlineInputBorder(),
//                        hintText: "Enter rating",
//                        labelText: "Enter rating",
//                        suffixIcon: MaterialButton(
//                          onPressed: () {
//                            setState(() {
//                              _userRating =
//                                  double.parse(_ratingController.text ?? "0.0");
//                            });
//                          },
//                          child: Text("Rate"),
//                        ),
//                      ),
//                    ),
//                  ),
//                  SizedBox(
//                    height: 40.0,
//                  ),
//                  _heading('Scrollable Rating Indicator'),
//                  RatingBarIndicator(
//                    rating: 8.2,
//                    itemCount: 20,
//                    itemSize: 30.0,
//                    physics: BouncingScrollPhysics(),
//                    itemBuilder: (context, _) => Icon(
//                      Icons.star,
//                      color: Colors.amber,
//                    ),
//                  ),
//                  SizedBox(
//                    height: 20.0,
//                  ),
//                  Text(
//                    "Rating Bar Modes",
//                    style: TextStyle(
//                      fontWeight: FontWeight.w300,
//                    ),
//                  ),
//                  Row(
//                    children: [
//                      _radio(1),
//                      _radio(2),
//                      _radio(3),
//                    ],
//                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Text(
//                        'Switch to Vertical Bar',
//                        style: TextStyle(
//                          fontWeight: FontWeight.w300,
//                        ),
//                      ),
//                      Switch(
//                        value: _isVertical,
//                        onChanged: (value) {
//                          setState(() {
//                            _isVertical = value;
//                          });
//                        },
//                        activeColor: Colors.amber,
//                      ),
//                    ],
//                  ),
//                  Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      Text(
//                        'Switch to RTL Mode',
//                        style: TextStyle(
//                          fontWeight: FontWeight.w300,
//                        ),
//                      ),
//                      Switch(
//                        value: _isRTLMode,
//                        onChanged: (value) {
//                          setState(() {
//                            _isRTLMode = value;
//                          });
//                        },
//                        activeColor: Colors.amber,
//                      ),
//                    ],
//                  ),
//                ],
//              ),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//
//  Widget _radio(int value) {
//    return Expanded(
//      child: RadioListTile(
//        value: value,
//        groupValue: _ratingBarMode,
//        dense: true,
//        title: Text(
//          'Mode $value',
//          style: TextStyle(
//            fontWeight: FontWeight.w300,
//            fontSize: 12.0,
//          ),
//        ),
//        onChanged: (value) {
//          setState(() {
//            _ratingBarMode = value;
//          });
//        },
//      ),
//    );
//  }
//
//  Widget _ratingBar(int mode) {
//    switch (mode) {
//      case 1:
//        return RatingBar(
//          initialRating: 2,
//          minRating: 1,
//          direction: _isVertical ? Axis.vertical : Axis.horizontal,
//          allowHalfRating: true,
//          unratedColor: Colors.amber.withAlpha(50),
//          itemCount: 5,
//          itemSize: 50.0,
//          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//          itemBuilder: (context, _) => Icon(
//            _selectedIcon ?? Icons.star,
//            color: Colors.amber,
//          ),
//          onRatingUpdate: (rating) {
//            setState(() {
//              _rating = rating;
//            });
//          },
//        );
//      case 2:
//        return RatingBar(
//          initialRating: 3,
//          direction: _isVertical ? Axis.vertical : Axis.horizontal,
//          allowHalfRating: true,
//          itemCount: 5,
//          ratingWidget: RatingWidget(
//            full: _image('assets/heart.png'),
//            half: _image('assets/heart_half.png'),
//            empty: _image('assets/heart_border.png'),
//          ),
//          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//          onRatingUpdate: (rating) {
//            setState(() {
//              _rating = rating;
//            });
//          },
//        );
//      case 3:
//        return RatingBar(
//          initialRating: 3,
//          direction: _isVertical ? Axis.vertical : Axis.horizontal,
//          itemCount: 5,
//          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//          itemBuilder: (context, index) {
//            switch (index) {
//              case 0:
//                return Icon(
//                  Icons.sentiment_very_dissatisfied,
//                  color: Colors.red,
//                );
//              case 1:
//                return Icon(
//                  Icons.sentiment_dissatisfied,
//                  color: Colors.redAccent,
//                );
//              case 2:
//                return Icon(
//                  Icons.sentiment_neutral,
//                  color: Colors.amber,
//                );
//              case 3:
//                return Icon(
//                  Icons.sentiment_satisfied,
//                  color: Colors.lightGreen,
//                );
//              case 4:
//                return Icon(
//                  Icons.sentiment_very_satisfied,
//                  color: Colors.green,
//                );
//              default:
//                return Container();
//            }
//          },
//          onRatingUpdate: (rating) {
//            setState(() {
//              _rating = rating;
//            });
//          },
//        );
//      default:
//        return Container();
//    }
//  }
//
//  Widget _image(String asset) {
//    return Image.asset(
//      asset,
//      height: 30.0,
//      width: 30.0,
//      color: Colors.amber,
//    );
//  }
//
//  Widget _heading(String text) => Column(
//    children: [
//      Text(
//        text,
//        style: TextStyle(
//          fontWeight: FontWeight.w300,
//          fontSize: 24.0,
//        ),
//      ),
//      SizedBox(
//        height: 20.0,
//      ),
//    ],
//  );
//}
//
//class IconAlert extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return AlertDialog(
//      title: Text(
//        'Select Icon',
//        style: TextStyle(
//          fontWeight: FontWeight.w300,
//        ),
//      ),
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(10.0),
//      ),
//      titlePadding: EdgeInsets.all(12.0),
//      contentPadding: EdgeInsets.all(0),
//      content: Wrap(
//        children: [
//          _iconButton(context, Icons.home),
//          _iconButton(context, Icons.airplanemode_active),
//          _iconButton(context, Icons.euro_symbol),
//          _iconButton(context, Icons.beach_access),
//          _iconButton(context, Icons.attach_money),
//          _iconButton(context, Icons.music_note),
//          _iconButton(context, Icons.android),
//          _iconButton(context, Icons.toys),
//          _iconButton(context, Icons.language),
//          _iconButton(context, Icons.landscape),
//          _iconButton(context, Icons.ac_unit),
//          _iconButton(context, Icons.star),
//        ],
//      ),
//    );
//  }
//
//  _iconButton(BuildContext context, IconData icon) => IconButton(
//    icon: Icon(icon),
//    onPressed: () => Navigator.pop(context, icon),
//    splashColor: Colors.amberAccent,
//    color: Colors.amber,
//  );
//}