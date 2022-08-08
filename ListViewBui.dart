import 'package:flutter/material.dart';

class ListViewBui extends StatelessWidget{

  List images = [
    'assets/images/cloud.png',
    'assets/images/feather.png'
  ];

  List names = [
    'cloud',
    'feather'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List.Builder"),
      ),
      body: ListView.builder(itemBuilder: (BuildContext,index){
      return Card(
        child: ListTile(
          leading: CircleAvatar(backgroundImage: AssetImage(images[index])),
          title: Text(names[index]),
        ),
      );
    },
    itemCount: images.length,
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.all(10),//gap 10 ayirikum
      ),
    );
  }

}