import 'package:flutter/material.dart';

class TextInput1 extends StatefulWidget {
  @override
  Widget inputchild;
  double height = 48;
  double width = 280;
  double radius = 10;
  Function onpress;

  TextInput1(
      {this.inputchild, this.height, this.width, this.radius, this.onpress});

  _TextInput1State createState() => _TextInput1State();
}

class _TextInput1State extends State<TextInput1> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpress,
      child: Container(
        height: widget.height,
        width: widget.width,
        child: Material(
          child: Container(
              alignment: Alignment.centerLeft, child: widget.inputchild),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Color(0xffEAEAEA), width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(widget.radius)),
        ),
      ),
    );
    ;
  }
}
