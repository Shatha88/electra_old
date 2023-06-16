import 'package:final_project/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../conistans/colors.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Container(),
    HomeScreen(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: kcolorsgerrn,
          boxShadow: [],
        ),
        child: SafeArea(
          child: BottomNavigationBar(
            selectedItemColor: Colors.greenAccent,
            unselectedItemColor: Colors.green,

            items: [
              BottomNavigationBarItem(
                  backgroundColor: Colors.green,
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.grey,
                    size: 30,
                  ),
                  label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 30,
                  ),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.grey,
                    size: 30,
                  ),
                  label: ""),
            ],
            // selectedIconTheme: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
