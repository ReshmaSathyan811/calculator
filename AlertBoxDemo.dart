import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MaterialApp(home: AlertBoxDemo(), debugShowCheckedModeBanner: false));
}

class AlertBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custom alert Box"),
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    child: ListTile(
                        leading: Icon(Icons.copy), title: Text("Copy"))),
                const PopupMenuItem(child: Text("Paste")),
                const PopupMenuItem(child: Text("Cut")),
                const PopupMenuItem(child: Text("Help")),
                const PopupMenuItem(child: Text("Exit")),
              ];
            }),
           const Icon(Icons.favorite),
            const SizedBox(
              width: 20,
            ),
           const  Icon(Icons.add_shopping_cart),
          ],
        ),
        body: Center(
          child: ElevatedButton(
              child: const Text("Show alert"),
              onPressed: () {
                Alert(
                        context: context,
                        title: "RFLUTTER",
                        desc: "Flutter is awesome")
                    .show();
              }),
        ));
  }
}
