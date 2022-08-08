import 'package:flutter/material.dart';

class GridDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GridDemoState();
}

class GridDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridDemo"),
      ),
      body:GridView(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: [
               Card(child: Column(
                 children : const [
                   Image(image: AssetImage('assets/images/feather.png')),
               ],
               ),
               ),
                Image(image: AssetImage('assets/images/feather.png')),
                Image(image: AssetImage('assets/images/feather.png')),
                Image(image: AssetImage('assets/images/feather.png')),
                Image(image: AssetImage('assets/images/feather.png')),
                Image(image: AssetImage('assets/images/feather.png')),
                Image(image: AssetImage('assets/images/feather.png')),
        ],
      ),
    );
  }
}
