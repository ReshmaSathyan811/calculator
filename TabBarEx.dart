import 'package:flutter/material.dart';
import 'package:project_marchh_new/GridDemo.dart';
import 'package:project_marchh_new/GridViewBui.dart';
import 'package:project_marchh_new/ListViewBui.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TabDemo(),
  ));
}

class TabDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TabDemoState();
}

class TabDemoState extends State {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            bottom: const TabBar(
              tabs: [
                Text("Chats"),
                Text("Status"),
                Text("Calls"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("Chat")),
             Center(child: Text("Status")),
              Center(child: Text("Calls")),
            ],
          ),
        ));
  }
}
