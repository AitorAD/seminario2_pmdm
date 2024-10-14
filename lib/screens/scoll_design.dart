import 'package:flutter/material.dart';

class ScollDesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [Page1(), Bienvenido()]));
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
            child: Text('Bienvenido')),
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
      children: [Background(), MainContent()],
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

class Background extends StatelessWidget {
  const Background({
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
