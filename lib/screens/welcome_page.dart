import 'package:apka/component/button.dart';
import 'package:apka/component/scrolable_container.dart';
import 'package:apka/screens/hompage.dart';
//import 'package:apka/screens/steupRoutine_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<ScrollableContainer> imgList = [
    ScrollableContainer(
      image: "assets/sit.png",
      smallText: " It is something you do everyday \ne.g Brushing your theeth",
      largeText: "Identify Your " "Anchor Habit" "",
    ),
    ScrollableContainer(
      image: "assets/schedule.png",
      smallText: "It will serve as a sweet reminder",
      largeText: "Fix meditation to your ''Anchor Habit''",
    ),
    ScrollableContainer(
      image: "assets/time.png",
      smallText: "With our curated bite size content & gamified experiences ",
      largeText: "We will help u stay consistent",
    ),
  ];
  var _current = 0;

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.19,
            ),
//            Container(
//              height: MediaQuery.of(context).size.height * 0.1,
//              child: Row(
//                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
//                  Image.asset("assets/gift1.png"),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                  ),
//                  Image.asset("assets/notification1.png"),
//                ],
//              ),
//            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.756,
              child: Text(
                "Helllo Paul,",
                textAlign: TextAlign.start,
                style: GoogleFonts.sen(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.756,
              child: Text(
                "Let's get started",
                textAlign: TextAlign.start,
                style: GoogleFonts.sen(
                    fontSize: 29,
                    color: Color(0xff3E3E3E),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * 0.42,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.map((url) {
                int index = imgList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
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
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.20,
            ),
            ButtonOutput(
              inputchild: Text(
                "Continue",
                textAlign: TextAlign.center,
              ),
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.86,
              radius: 30,
              onpress: () {

                      final storage = new FlutterSecureStorage();
                      storage.write(key: "varify2", value: 'done');
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
