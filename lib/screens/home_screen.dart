import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:seminario_2/widgets/background.dart';
import 'package:seminario_2/widgets/custom_botton_navgation.dart';
import 'package:seminario_2/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottomNavigation(),
        body: Stack(
          children: [Background(), _HomeBody()],
        ));
  }
}

class CardTable extends StatelessWidget {
  const CardTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blueAccent,
            icon: Icons.window,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.car_rental,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.purpleAccent,
            icon: Icons.shopping_bag,
            text: 'Shopping',
          ),
          _SingleCard(
            color: Colors.purple,
            icon: Icons.cloud,
            text: 'Bill',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.deepPurpleAccent,
            icon: Icons.movie,
            text: 'Entertainment',
          ),
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.store,
            text: 'Grocery',
          ),
        ])
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  IconData icon;
  Color color;
  String text;

  _SingleCard({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final boxDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(62, 66, 107, 0.7));

    return Container(
      margin: EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Icon(icon, size: 35, color: Colors.white),
                  backgroundColor: color,
                ),
                SizedBox(height: 15),
                Text(
                  text,
                  style: TextStyle(color: color, fontSize: 18),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}
