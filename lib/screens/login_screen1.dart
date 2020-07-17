
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../component/poster_page.dart';
import '../component/rectangular_button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apka/authentication/sign_in.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'account _page.dart';

class ImageSliderDemo extends StatefulWidget {
  @override
  _ImageSliderDemoState createState() => _ImageSliderDemoState();
}

class _ImageSliderDemoState extends State<ImageSliderDemo> {
  @override
  List<Widget> imgList;

  void initState() {
    // TODO: implement initState
    getList();
    super.initState();
  }

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

  var _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.10,
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
                    signInWithGoogle().then((var user) {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            //googleSignIn.signOut();
                            return AccountPage(user: user);
                          },
                        ),
                      );
                    });
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
}
