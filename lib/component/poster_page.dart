import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PosterPage extends StatefulWidget {
  @override
  String smallText, largeText;
  String image;

  PosterPage({this.image, this.smallText, this.largeText});

  _PosterPageState createState() => _PosterPageState();
}

class _PosterPageState extends State<PosterPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ImageProvider backgroundImage = AssetImage(widget.image);
    backgroundImage.resolve(createLocalImageConfiguration(context));
    return Container(
      height: MediaQuery.of(context).size.height * 0.327,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.327,
            width: MediaQuery.of(context).size.width * 0.666,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: backgroundImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  widget.smallText,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sen(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.756,
                  child: Text(
                    widget.largeText,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sen(
                        fontSize: 32,
                        color: Color(0xff3E3E3E),
                        fontWeight: FontWeight.bold),
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
