import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontawesomeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Font awesome Icons"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Few free icon from font awesome package",
              style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FaIcon(
                FontAwesomeIcons.smile,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(width: 20),
              FaIcon(
                FontAwesomeIcons.laugh,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(width: 20),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FaIcon(
                FontAwesomeIcons.phone,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(width: 25),
              FaIcon(
                FontAwesomeIcons.handsBubbles,
                color: Colors.green,
                size: 30,
              ),
              SizedBox(width: 30),
            ],
          ),
        ],
      )),
    );
  }
}
