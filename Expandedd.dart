import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Expandedd()),
  );
}
class Expandedd extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Expanded Column"),
     ),
     body: Center(
       child: Column(
         children: [
           Expanded(child: Container(
             color: Colors.blue,
             height: 100,
             width: 200,
           ),
           ),
         Expanded(child: Container(
          color: Colors.yellow,
          height: 100,
           width: 200,
         ),
         ),
           Expanded(child: Container(
             color: Colors.green,
             height: 100,
             width: 200,
           ),
           ),
         ],
       ),
     ),
   );
  }

}