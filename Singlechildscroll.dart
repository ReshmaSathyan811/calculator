import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Singlechildscroll()),
  );
}
class Singlechildscroll extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single child Scroll view"),
      ),
      body: Column(
        children: <Widget>[
          Container(color: Colors.red, height: 200),
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: LayoutBuilder(
                builder: (context, constraint) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                      BoxConstraints(minHeight: constraint.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          children: [
                          const  Text("Text 1"),
                           const  Text("Text 2"),
                            // middle widget goes here
                            Expanded(
                              child: Container(),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const <Widget>[
                                   Icon(Icons.star),
                                  Text("Bottom Text")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      )
    );
  }

}