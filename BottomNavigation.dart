import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: BottomNavBar(),
  ));
}

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BottomNavBarState();
}

class BottomNavBarState extends State {
  int selected_index = 0;

  List pages = const <Widget>[
    Icon(Icons.home, size: 200),
    Icon(Icons.settings, size: 200),
    Icon(Icons.chat, size: 200),
  ];

  void onItemTap(int index) {
    //userdefined function
    setState(() {
      //built in function
      selected_index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Bottom Navigation Bar"),
      ),

      body: Center(
        child: (pages.elementAt(selected_index)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        backgroundColor: Colors.orange,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        //Bydefault 3 ennam anu bottom navigationbar support cheyyu.Orennam koode add cheyyanamenkil
        //type: .... fixed- e command add cheyyanam
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
        ],
        currentIndex: selected_index,
        onTap: onItemTap,
      ), //bottomnavigation bar kodukendathu bodyku purathanu
    );
  }
}
