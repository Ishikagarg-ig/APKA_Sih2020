import 'package:apka/screens/firstPage.dart';
import 'package:apka/screens/flight_details.dart';
import 'package:apka/screens/home_page.dart';
import 'package:apka/screens/premimum_account.dart';
import 'package:apka/screens/profilePage.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'dialogBox.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {

  int currentIndex = 0;
  Widget _child;

  DialogBox dialogBox=new DialogBox();

  @override
  void initState() {
    _child = FirstPage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: _child,
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: currentIndex,
            showElevation: true,
            itemCornerRadius: 8,
            curve: Curves.easeInBack,
            onItemSelected: (index) => setState(() {
              currentIndex = index;
              _handleNavigationChange(currentIndex);
            }),
            items: [
              BottomNavyBarItem(
                icon: Icon(Icons.apps),
                title: Text('Home'),
                activeColor: Hexcolor('#050F32'),
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.flight_takeoff,),
                title: Text('FlightDetails'),
                activeColor: Hexcolor('#050F32'),
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.account_balance),
                title: Text(
                  'Premimum Account',
                ),
                activeColor: Hexcolor('#050F32'),
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.person),
                title: Text('Profile'),
                activeColor: Hexcolor('#050F32'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = FirstPage();
          break;
        case 1:
          _child= FlightDetail();
          break;
        case 2:
          _child = PremimumAccount();
          break;
        case 3:
          _child = ProfilePage();
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}
