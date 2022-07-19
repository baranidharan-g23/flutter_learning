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
          'LEARN SQUARE',
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.blue,
      ),

      body: Column(children: [
        Container(
          color: Colors.pinkAccent,
          height: 90,
          width: 400,
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            'BLIND ASSISTANT',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 90,
          width: 400,
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            'DEAF ASSISTANT',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          color: Colors.greenAccent,
          height: 90,
          width: 400,
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            'DUMB ASSISTANT',
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          color: Colors.blueGrey,
          height: 90,
          width: 400,
          margin: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            'OTHERS',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ]),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              "Baranidharan G",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      )),
      //height: 100,
      floatingActionButton:
          FloatingActionButton(onPressed: null, child: Icon(Icons.add)),
    ));
  }
}
