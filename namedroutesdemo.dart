import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'AlertBoxDemo.dart';

void main() {//thazhathe code koduthal status bar hde cheyyan vendiyanu.
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,  //this line is used for showing the status bar
  ]);
  runApp(MyApp());
}
/*
oru particular pagente status bar hide cheyyan anenkil e code use cheyyanam.
stateful anenkil mathra init state work cheyyu.

void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    ]);
  }*/

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePagenew(),
      routes: {
        'settings': (BuildContext ctx) => SettingsPage(),
        'AlertBox': (BuildContext ctx) => AlertBoxDemo(),
      },
    );
  }
}

class HomePagenew extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('settings');
              },
              child: const Text('Login'),
            ),
            SizedBox(width: 20,)
                /*ElevatedButton(
                    onPressed: () {
                  Navigator.of(context).pushNamed('AlertBox');
                },
                    child: const Text('Register'),
                ),*/
              ],
        ),
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text("Route name: ${ModalRoute
            .of(context)
            ?.settings
            .name}"),
      ),
    );
  }

}

