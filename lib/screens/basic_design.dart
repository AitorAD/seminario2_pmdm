import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('./assets/landscape.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam sed dolor eget velit aliquam convallis. Nullam laoreet neque mollis, eleifend nibh ut, rutrum arcu.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Kandersteg, Switzeland',
                  style: TextStyle(color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(
            icon: Icons.phone,
            text: 'CALL',
          ),
          CustomButton(
            icon: Icons.near_me,
            text: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        Text(text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
