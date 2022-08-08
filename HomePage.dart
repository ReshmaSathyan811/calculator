import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(left: 50, top: 20),
            child: Center(
              child: Text(
                "LIST OF FOOD ITEMS",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ),
          
          Card(
            child: ListTile(
                leading: Icon(Icons.apple),
              title: Text("Apple"), 
            ),
          ),
          ListTile(
              leading: Icon(Icons.star),//leading- title"orangente" munnil ethenkilum add cheyyan leading use cheyithu pattum
            title: Text("Orange"),
          ),
          ListTile(
            leading: Icon(Icons.star, color: Colors.tealAccent),
            title: Text("Grapes"),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Banana"),
            trailing: Icon(Icons.arrow_circle_left),
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text("Mango"),
            subtitle: Text("I love mangoes"),
          ),
        ],
      ),
    );
  }
}
