import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScrollableContainer extends StatefulWidget {
  @override
  String smallText, largeText;
  String image;

  ScrollableContainer({this.image, this.smallText, this.largeText});

  _ScrollableContainerState createState() => _ScrollableContainerState();
}

class _ScrollableContainerState extends State<ScrollableContainer> {
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
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Material(
          elevation: 10,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 0.366,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: backgroundImage,
                      fit: BoxFit.fill,
                    ),
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
                        fontSize: 25,
                        color: Color(0xff3E3E3E),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  widget.smallText,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sen(
                    fontSize: 16,
                    //MediaQuery.of(context).size.width/30,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
