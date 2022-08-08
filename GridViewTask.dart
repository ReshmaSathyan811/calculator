import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridViewTask(),
  ));
}

class GridViewTask extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GridViewTaskDemo();
}

class GridViewTaskDemo extends State {
  List images = [
    "assets/images/profile.png",
    "assets/images/booking.png",
    "assets/images/schedule.png",
    "assets/images/taxi.png",
    "assets/images/help.png",
    "assets/images/phonecall.png"
  ];

  List names = [
    "My profile",
    "Book a cab",
    "Booking schedule",
    "Track your cab",
    "Help&Feedback",
    "Call to transport"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
      ),
      body: GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext obj, index) {
          return Card(
            child: SizedBox(
              width: 50,
              height: 50,
              child: Column(children: [
                Image(image: AssetImage(images[index])),
                Text(names[index]),
              ]),
            ),
          );
        },
        itemCount: images.length,
      ),
    );
  }
}
