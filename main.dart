import 'package:flutter/material.dart';

void main() {
  runApp(LauncherScreen()); //runapp-application load cheyyan vendiyittanu
  //app load cheyyumbo kanikunna screente peranu LAUNCHERSCREEN ennu koduthekunnathu
}

class LauncherScreen extends StatelessWidget {//State change kanikanam ennullapo mathram Statefull koduthamathi,
  //currently ulla pagene replace cheyithu mattoru page varumbo ststeful ayittu create cheyyam.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(// main, materail app illatha pages execute cheyyan pattilla
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My app"),
        ),
        body: const Center(
          child: Text(
            "My First app",
            style: TextStyle(color: Colors.purple, fontSize: 20),
          ),
        ),
      ), //Scaffold - Route element load cheyyumbo ui engane irikanam ennanu home paranju kodukunnathu
    );
  }
}
