import 'package:apka/screens/account%20_page.dart';
import 'package:apka/screens/coronaCases_page.dart';
import 'package:apka/screens/flight_details.dart';
import 'package:apka/screens/hompage.dart';
import 'package:apka/screens/welcome_page.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:simple_splashscreen/simple_splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'login_screen1.dart';
import "package:flutter_secure_storage/flutter_secure_storage.dart";

class AppStart extends StatefulWidget {
  @override
  _AppStartState createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  String username;
  String check;
  String varify;
  String varify2;

  void initState() {
    // TODO: implement initState
    getUser();
    super.initState();
  }

  getUser() async {
    FlutterSecureStorage storage = await FlutterSecureStorage();
    username = await storage.read(key: 'username');
    check= await storage.read(key: 'check');
    varify= await storage.read(key: 'varify');
    varify2=await storage.read(key: 'varify2');
    //print(username+varify+varify2);
  }

  bool user = false;

  @override
  Widget build(BuildContext context) {
    return Simple_splashscreen(
      context: context,
      gotoWidget: HomePage(),
//      gotoWidget: username == null ? ImageSliderDemo() :
//      (varify!=null)?(varify2!=null)?HomePage():WelcomePage():AccountPage(),
     // gotoWidget: ImageSliderDemo(),

      splashscreenWidget: SplashScreen(),
      timerInSeconds: 4,
    );
  }
}

//Splash Screen
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.42,
          ),
          child: Column(
            children: <Widget>[
              Text(
                'APKA',
                textAlign: TextAlign.center,
                style:
                    GoogleFonts.sen(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              Text(
                "Now Travel made easier",
                textAlign: TextAlign.center,
                style: GoogleFonts.sen(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.7,
                child: FAProgressBar(
                  currentValue: 100,
                  displayText: null,
                  size: 4,
                  backgroundColor: Color.fromRGBO(62, 62, 62, 0.2),
                  progressColor: Colors.black,
                  animatedDuration: Duration(milliseconds: 4000),
                  borderRadius: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
