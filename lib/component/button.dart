import 'package:flutter/material.dart';

class ButtonOutput extends StatefulWidget {
  @override
  Widget inputchild;
  double height = 48;
  double width = 280;
  double radius = 10;
  Function onpress;

  ButtonOutput(
      {this.inputchild, this.height, this.width, this.radius, this.onpress});

  _ButtonOutputState createState() => _ButtonOutputState();
}

class _ButtonOutputState extends State<ButtonOutput> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onpress,
      child: Container(
        //onPressed: null,
        height: widget.height,
        width: widget.width,
        child: Material(
          child:
              Container(alignment: Alignment.center, child: widget.inputchild),
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  color: Colors.black54, width: 1, style: BorderStyle.solid),
              borderRadius: BorderRadius.circular(widget.radius)),
        ),
      ),
    );
    ;
  }
}
