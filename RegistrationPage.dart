import 'package:flutter/material.dart';
import 'package:project_marchh_new/HomePagedemo.dart';

void main() {
  runApp(
    MaterialApp(home: RegistrationPage()),
  );
}

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registration Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Center(
              child: Icon(Icons.ac_unit),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 90),
            child: Text(
              "Register",
              style: TextStyle(
                  fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 400, top: 10, right: 300),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.person),
                labelText: 'Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 400, top: 10, right: 300),
            child: TextFormField(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 400, top: 10, right: 300),
            child: TextFormField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  prefixIcon: Icon(Icons.key),
                  hintText: "Password",
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 400, top: 10, right: 300),
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                prefixIcon: Icon(Icons.key),
                hintText: "Confirm Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 20, right: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePagedemo()),
                );
              },
              child: const Text("Register",
                  style: TextStyle(fontSize: 25, color: Colors.black)),
            ),
          ),
          // SizedBox(
          //   child: Row(
          //     children: [
          //       ListTile(
          //         leading: Text("Already register?"),
          //       ),
          //       TextButton(onPressed: () {},
          //           child: Text("Login", style: TextStyle(
          //               fontWeight: FontWeight.bold, color: Colors.red),))
          //     ],
          //   ),
          // ),
        ],
      ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     TextButton(
      //       onPressed: () {},
      //       child: const Text(
      //         "Login",
      //         style:
      //             TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
