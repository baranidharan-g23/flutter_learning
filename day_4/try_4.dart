import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Title',
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.blue,
      ),
      body: (Container(
          //height: 100,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
          child: Text(
            "SOME TEXT",
            textAlign: TextAlign.center,
          ),
        ),
      ]))),
      bottomNavigationBar: BottomAppBar(
          child: IconButton(
            onPressed: () {
              print("pressed");
            },
            icon: Icon(Icons.home_outlined),
            color: Colors.white,
          ),
          color: Colors.blue),
    ));
  }
}
