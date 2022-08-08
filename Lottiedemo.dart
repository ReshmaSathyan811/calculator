import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: Lottiedemo(),),);
}

class Lottiedemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
      ),
      body: ListView(
        children: [

       //   Lottie.asset('assets/lottieimages/welcome.json'),
      Lottie.asset('assets/lottieimages/39755-handwritten-welcome.json'),
          //Lottie.network('https://lottiefiles.com/9757-welcome'),
        ],
      ),
    );
  }

}