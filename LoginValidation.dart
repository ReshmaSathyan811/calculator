import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_marchh_new/HomePage.dart';

import 'RegistrationPage.dart';

class LoginValidation extends StatelessWidget {
  final _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _form,
        child: ListView(
            children: <Widget>[
        Container(
        padding: EdgeInsets.all(20),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: "Email", border: OutlineInputBorder()),
          validator: (text) {
            if (text == null || !(text.contains('@')) || text.isEmpty) {
              return "Enter a valid email address";
            }
            return null;
          },
        ),
      ),
      Container(
        padding: EdgeInsets.all(20),
        child: TextFormField(
            decoration: const InputDecoration(
                labelText: "Password", border: OutlineInputBorder()),
            validator: (text) {
              if (text == null || !(text.length <= 5) || text.isEmpty) {
                return "Enter  valid password with atmost 5 character";
              }
              return null;
            }),
      ),
      ElevatedButton(
          child: Text("Submit"),
          onPressed: () {
      final isValid = _form.currentState!.validate();
      if(isValid){
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
      } else {
      Fluttertoast. showToast(
      msg: "Username/ Password is inavlid",
      gravity: ToastGravity.BOTTOM,
      fontSize: 16.0);
      }
      }),
    TextButton(
      onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RegistrationPage()));
    },
    child: const Text("Not a user? Register here "),
    ),
    ],
    ),
    )
    ,
    );
  }
}


