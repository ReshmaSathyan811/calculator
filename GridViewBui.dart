import 'package:flutter/material.dart';

class GridViewBui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map> products = List.generate(
        50, (index) => {"id": index, "name": "Product $index"}).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text("GridView Builder"),
        ),
        body: GridView.builder(
          itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3),
            itemBuilder: (BuildContext obj, index){
              return Container(
                child: Text(products[index]["name"]),
              );

            }),
    );
  }

}