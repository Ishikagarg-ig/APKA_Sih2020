import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RectangularButton extends StatefulWidget {
  @override
  Function onpres;

  RectangularButton({this.onpres});

  _RectangularButtonState createState() => _RectangularButtonState();
}

class _RectangularButtonState extends State<RectangularButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpres,
      child: Container(
        //onPressed: null,
        height: MediaQuery.of(context).size.height * 0.067,
        width: MediaQuery.of(context).size.width * 0.778,
        child: Material(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 7,
              ),
              Image.asset(
                "assets/googlelogo.png",
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height / 26.66,
                width: MediaQuery.of(context).size.width / 15.5,
              ),
              SizedBox(width: MediaQuery.of(context).size.width / 30),
              Text(
                'Continue with Google',
                textAlign: TextAlign.center,
                style: GoogleFonts.sen(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.black, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
