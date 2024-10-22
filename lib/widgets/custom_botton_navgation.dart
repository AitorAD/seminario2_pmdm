import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      selectedItemColor: Colors.pink,
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(label: "", icon: Icon(Icons.calendar_today)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.pie_chart)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.person))
      ],
    );
  }
}
