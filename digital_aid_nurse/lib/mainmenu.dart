import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './profile.dart';
import './doctors.dart';
import './home.dart';

class mainmenuWidget extends StatefulWidget {
  @override
  _mainmenuWidgetState createState() => _mainmenuWidgetState();
}

class _mainmenuWidgetState extends State<mainmenuWidget> {
  int currentIndex = 0;
  final screens = [
    homeWidget(),
    doctorsWidget(),
    profileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 18),
        selectedItemColor: Color.fromRGBO(6, 174, 213, 1),
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userDoctor),
            label: 'Doctors',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
