import 'package:apka/testing/scanning%20screen.dart';
import 'package:apka/testing/verificatonCounter.dart';
import 'package:flutter/material.dart';
class ChooseScreen extends StatefulWidget {
  @override
  _ChooseScreenState createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Screen'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Container(
                color: Colors.black12,
                  height: 200,
                  width: 400,
                  child: Center(
                    child: Container(
                      alignment: Alignment.center,
                        child: Text('ReceptionistCounter')),
                  ),),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return CheckingScreen();
                    },
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Center(
                child: Container(
                  color: Colors.black12,
                  height: 200,
                  width: 400,
                  child: Container(
                    alignment: Alignment.center,
                      child: Text('Verification Counter')),),
              ),
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return VerficatonCounter();
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ) ;

  }
}
