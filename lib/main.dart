import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seminario_2/screens/basic_design.dart';
import 'package:seminario_2/screens/home_screen.dart';
import 'package:seminario_2/screens/scoll_design.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScollDesignPage(),
        'home_screen': (_) => HomeScreen(),
      },
    );
  }
}
