import 'package:flutter/material.dart';

class ContactBook extends StatelessWidget{

  List images = [
    'assets/images/character-icon.png',
    'assets/images/mickey-mouse-icon.png',
    'assets/images/monsters.png',
    'assets/images/policeman.png',
    'assets/images/red-matreshka-inside-icon-icon.png',
  ];

  List names = [
    'Reshma', 'Pradeesh','Sheela', 'Sathyan', 'Prajith'
  ];

  List numbers= [
    '8113814849', '9946758312', '9961459299', '8606311923', '7012573297'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Book", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red)),
      ),
      body: ListView.builder(itemBuilder: (BuildContext, index){
        return Card(
        child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
          title: Text(names[index]),
          subtitle: Text (numbers[index]),
          trailing: Icon(Icons.phone),

        ),
        );
    },
        itemCount: images.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(10),
      ),
    );
  }

}