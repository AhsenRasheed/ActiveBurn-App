import 'package:active_burn_app/views/plans.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'menu.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
   static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    PlansScreen(),
    MenuScreen(),
  ];

  int _selectedIndex = 0; //New

//New
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/dashboard.png"),
                size: 150,
              ),
              label: "Dasboard",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/plans icon.png"),
                size: 150,
              ),
              label: "Plans",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                size: 150,
              ),
              label: "Menu",
            ),
          ],
          currentIndex: _selectedIndex, //New
          onTap: _onItemTapped, //New
        ),
        body: _pages.elementAt(_selectedIndex),
        );
  }
}