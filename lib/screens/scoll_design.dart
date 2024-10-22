import 'package:flutter/material.dart';

class ScollDesignPage extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
        0.5,
        0.5
      ],
          colors: [
        Color(0xff7EEBCB),
        Color(0xff30BAD6),
      ]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff30BAD6),
        body: Container(
          decoration: boxDecoration,
          child: PageView(
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: [Page1(), Bienvenido()]),
        ));
  }
}

class Bienvenido extends StatelessWidget {
  const Bienvenido({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.blue),
            onPressed: null,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Bienvenido',
                style: TextStyle(color: Colors.white),
              ),
            )),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [BackgroundScroll(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(style: textStyle, '11º'),
          Text(style: textStyle, 'Lunes'),
          Expanded(child: Container()),
          Icon(color: Colors.white, size: 48, Icons.screen_lock_landscape)
        ],
      ),
    );
  }
}

class BackgroundScroll extends StatelessWidget {
  const BackgroundScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        color: Color(0xff30BAD6),
        child: Image(image: AssetImage("./assets/scroll-1.png")));
  }
}
