import 'package:apka/component/poster_page.dart';
import 'package:apka/component/rectangular_button.dart';
import 'package:apka/screens/account%20_page.dart';
import 'package:apka/screens/home_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hexcolor/hexcolor.dart';

final GoogleSignIn gSignIn = GoogleSignIn();
final usersReference =Firestore.instance.collection("users");
final tripReference =Firestore.instance.collection("tripDetails");

class googleSignin extends StatefulWidget {
  @override
  _googleSigninState createState() => _googleSigninState();
}

class _googleSigninState extends State<googleSignin> {

  bool isSignedIn= false;
  List<Widget> imgList;

  void initState(){
    super.initState();
    getList();
    gSignIn.onCurrentUserChanged.listen((gSignInAccount) {
      controlSignIn(gSignInAccount);
    },onError: (gError){
      print("Error Message:"+gError);
    });

    gSignIn.signInSilently(suppressErrors: false).then((gSignInAccount) { controlSignIn(gSignInAccount);
    }).catchError((gError){
      print("Error Message:"+gError);
    });
  }

  var _current = 0;

  getList() async {
    imgList = [
      PosterPage(
        image: "assets/travel1.png",
        smallText: "We will provide",
        largeText: "Best Managment Plan you need!",
      ),
      PosterPage(
        image: "assets/travell2.png",
        smallText: "You get",
        largeText: "Fun Experiences During Your travell",
      ),
      PosterPage(
        image: "assets/travell3.png",
        smallText: "Your Safety",
        largeText: "Is our Concern",
      )
    ];
  }

  controlSignIn(GoogleSignInAccount signInAccount) async{
    if(signInAccount!=null){
      await saveUserInfoToFirebase();
      setState(() {
        isSignedIn = true;
      });
    }
    else{
      setState(() {
        isSignedIn = false;
      });
    }
  }

  loginUser(){
    gSignIn.signIn();
  }

  logoutUser(){
    gSignIn.signOut();
  }

  saveUserInfoToFirebase() async{
    final GoogleSignInAccount gCurrentUser = gSignIn.currentUser;
    DocumentSnapshot documentSnapshot = await usersReference.document(gCurrentUser.id).get();

    if(!documentSnapshot.exists){
      usersReference.document(gCurrentUser.id).setData({
        "id":gCurrentUser.id,
        "name":gCurrentUser.displayName,
        "url":gCurrentUser.photoUrl,
        "email":gCurrentUser.email,
      });
    }
  }

  Scaffold buildSignInScreen() {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:30.0),
                  child: Column(
                    children: [
                      Text("APKA",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 37),),
                      Text("Airline Passengers Kit App",style: TextStyle(color: Hexcolor('#050F32'),fontSize: 23),),
                    ],
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.62,
                      viewportFraction: 0.99,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.008,
                ),
                RectangularButton(
                  onpres: () {
                    loginUser();
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0062,
                ),
                Text(
                  'We Value your privacy',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sen(
                    fontSize: MediaQuery.of(context).size.width / 30,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.0305,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        // border: BoxBorder.lerp(a, b, t),
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
            // ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if(isSignedIn){
      return AccountPage();
    }
    else{
      return buildSignInScreen();
    }
  }

}
