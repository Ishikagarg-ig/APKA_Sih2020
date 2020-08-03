import 'package:apka/screens/carBestPlanInfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
void main() {
  runApp(Screen1());
}

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();

}

class _Screen1State extends State<Screen1> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _visible=false;

  void initState() {
    // TODO: implement initState
    //addItemToList();
    super.initState();
    passengersTextEditingController.text="0";
    //additem();
    //getCalender();

  }
TextEditingController passengersTextEditingController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height*0.25,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Hexcolor('#736666'),
                  width: 3.0,
                ),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: IconButton(
                    icon: Icon(Icons.menu,color: Hexcolor('#050F32'),),
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                    iconSize: 45.0,
                  ),
                ),
                SizedBox(
                  width: 42.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:40.0),
                  child: Text(
                    "APKA",
                    style: TextStyle(
                      color: Hexcolor('#050F32'),
                      fontFamily: 'Fondamento',
                      fontSize: 48.0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 42.0,
                ),
                Padding(
                  padding: EdgeInsets.only(top:14.0),
                  child: IconButton(
                    icon: Icon(Icons.notifications,color: Hexcolor('#050F32'),),
                    iconSize: 45.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height: MediaQuery.of(context).size.height*0.35,
            decoration: BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/screen2_img.png"),
                fit: BoxFit.fill,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.supervisor_account),
                      SizedBox(width:20),
                      Text("No. of Passengers: ",style: TextStyle(fontSize: 25.0,color: Hexcolor('#736666'),),),
                      SizedBox(width:10),
                      Container(
                        width: 60.0,
                        foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: Colors.blueGrey,
                            width: 2.0,
                          ),
                        ),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(8.0),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                controller: passengersTextEditingController,
                                keyboardType: TextInputType.numberWithOptions(
                                  decimal: false,
                                  signed: true,
                                ),
                                inputFormatters: <TextInputFormatter>[
                                  WhitelistingTextInputFormatter.digitsOnly
                                ],
                              ),
                            ),
                            Container(
                              height: 38.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          width: 0.5,
                                        ),
                                      ),
                                    ),
                                    child: InkWell(
                                      child: Icon(
                                        Icons.arrow_drop_up,
                                        size: 18.0,
                                      ),
                                      onTap: () {
                                        int currentValue = int.parse(passengersTextEditingController.text);
                                        setState(() {
                                          currentValue++;
                                          passengersTextEditingController.text = (currentValue)
                                              .toString(); // incrementing value
                                        });
                                      },
                                    ),
                                  ),
                                  InkWell(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 18.0,
                                    ),
                                    onTap: () {
                                      int currentValue = int.parse(passengersTextEditingController.text);
                                      setState(() {
                                        print("Setting state");
                                        currentValue--;
                                        passengersTextEditingController.text =
                                            (currentValue > 0 ? currentValue : 0)
                                                .toString(); // decrementing value
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: RaisedButton(
                    padding: EdgeInsets.only(left: 10,right: 10,top: 6,bottom: 6),
                    color: Hexcolor('#152971'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)
                    ),
                    onPressed: (){
                     setState(() {
                       _visible=true;
                     });
                    },
                    child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 24.0,),),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                _visible==true? Container(
                  width: MediaQuery.of(context).size.width*0.6,
                  height: MediaQuery.of(context).size.height*0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        blurRadius: 4,
                        spreadRadius: 3,
                        offset: Offset(8,8),
                      ),
                    ],
                  ),
                    child: Column(
                      children: [
                        Text("Best Choice!!",style: TextStyle(color:Hexcolor('#050F32'),fontSize: 28),),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.local_taxi,size: 30,),
                            Text("Taxi",style: TextStyle(color: Hexcolor('#736666'),fontSize: 25),),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: RaisedButton(
                            padding: EdgeInsets.only(left: 2,right: 2,top: 6,bottom: 6),
                            color: Hexcolor('#152971').withOpacity(0.9),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>CarBestPlanInfo()));
                            },
                            child: Text("Proceed",style: TextStyle(color: Colors.white,fontSize: 15.0,),),
                          ),
                        ),
                      ],
                    ),
                ):Text(""),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('assets/cyclin3.png'),
                  fit: BoxFit.cover,
                )),

            accountName: Text("Hello"
              //((_user.fullName != null) ? _user.fullName : "...")
            ),

            // accountEmail: Text('908-391-8588'),
            currentAccountPicture: new GestureDetector(
                onTap: () async {
                  // showProfileDialog(context, _user);
                },
                child: new CircleAvatar(
                  backgroundImage: new AssetImage('assets/cyclin3.png'),
                )),
          ),
          ListTile(
            title: Text(
              ' Home',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () async {
              //showProfileDialog(context, _user);
            },
          ),
          ListTile(
            title: Text(
              ' Shop by category',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {},
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              'Your Order',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Buy Again',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(

            title: Text(
              'Your Wishlist',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),

          ListTile(
            title: Text(
              'Sell On BidLocal',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          Divider(color: Colors.black),
          ListTile(
            title: Text(
              'language',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(
            title: Text(
              'Setting',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(
            title: Text(
              'Coustomer Service',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () {
              //_HELP(context);
            },
          ),
          ListTile(
            title: Text(
              ' Sign out',
              style: TextStyle(fontSize: 14),
            ),
            onTap: () async {
//              signOutGoogle();
//              SystemNavigator.pop();
              //await this.signOut();
            },
          ),
        ]),
      ),
    );
  }

}