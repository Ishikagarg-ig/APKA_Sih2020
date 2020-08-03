import 'package:apka/screens/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:simple_splashscreen/simple_splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

class LoadingPoster extends StatefulWidget {
  @override
  _LoadingPosterState createState() => _LoadingPosterState();
}

class _LoadingPosterState extends State<LoadingPoster> {
  @override
  Widget build(BuildContext context) {
    return Simple_splashscreen(
      context: context,
      gotoWidget: WelcomePage(),
      splashscreenWidget: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.527,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.347,
                      width: MediaQuery.of(context).size.width * 0.686,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/cyclin3.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.03,
                    ),
                    Container(
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.756,
                            child: Text(
                              "Wooo-hooo!",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.sen(
                                  fontSize: 32,
                                  color: Color(0xff3E3E3E),
                                  //MediaQuery.of(context).size.width/15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Text(
                            "we are so pumped to have you aboard",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.sen(
                              fontSize: 16,
                              //MediaQuery.of(context).size.width/30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
      timerInSeconds: 4,
    );
  }
}
