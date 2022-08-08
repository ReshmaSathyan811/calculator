import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyTable()));
}

class MyTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" MyTable"),
      ),
      body: ListView(children: [
        const Padding(padding: EdgeInsets.only(top:20)),
        const Center(
            child: Text(" Data Table Example",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color:Colors.deepPurple))),
        Padding(padding: EdgeInsets.only(top:20)),
        Center(
          child: DataTable(
            decoration: BoxDecoration(border: Border.all()),
            columns: const [
              DataColumn(label: Text("ID")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Profession")),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(Text("1")),
                DataCell(Text("Reshma")),
                DataCell(Text("Engineer")),
              ]),
          DataRow(cells: [
          DataCell(Text("2")),
          DataCell(Text("Pradeesh")),
          DataCell(Text("Businessman")),
        ]),
              DataRow(cells: [
                DataCell(Text("3")),
                DataCell(Text("Parthiv")),
                DataCell(Text("Student")),
              ]),
            ],
          ),
        ),
      ]),
    );
  }
}
