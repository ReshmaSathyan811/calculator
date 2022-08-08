import 'package:flutter/material.dart';

class HomePagedemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HomePage",
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(padding: EdgeInsets.only(left: 100)),
           Center(
            child: Text(
              "Welcome to Home Page",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
            ),
          ),
        ],
      ),
    );
  }
}
