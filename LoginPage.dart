import 'package:flutter/material.dart';
import 'package:project_marchh_new/HomePage.dart';

import 'HomePagedemo.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginPage"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          const Center(
            child: Text(
              "Flutter Login",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150, right: 150, top: 30),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                hintText: "Email",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 150, right: 150, top: 20),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
                hintText: "Password",
                helperText: "Password must have 6 characters",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
             child: SizedBox(// for changinging the shape of button we can use container, inside container
               // use decoration-box decoration.
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePagedemo()),
                  );
                },
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 25),
                ),
              ),
             ),
          ),
          SizedBox(height: 160),
          TextButton(onPressed: (){}, child: Text("Not a User? Register Here..."))
        ],
      ),
    );
  }
}
