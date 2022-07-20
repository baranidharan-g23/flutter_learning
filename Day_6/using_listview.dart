import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Learn Square',
        theme: ThemeData(primaryColor: Colors.blueGrey),
        home: Scaffold(
          appBar: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25))),
            centerTitle: true,
            title: Text(
              'LEARN SQUARE',
            ),
            foregroundColor: Colors.black,
            backgroundColor: Colors.blue,
          ),

          body: ListView(padding: EdgeInsets.all(20), children: [
            Column(children: <Widget>[
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
                  'BDD ASSISTANT',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                color: Colors.purpleAccent,
                height: 90,
                width: 400,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text(
                  'BLIND DEAF ASSISTANT',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 11, 245, 50),
                height: 90,
                width: 400,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text(
                  'DEAF DUMB ASSISTANT',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 243, 247, 35),
                height: 90,
                width: 400,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Center(
                  child: Text(
                    'BLIND DUMB ASSISTANT',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ),
              Container(
                color: Color.fromARGB(255, 243, 128, 33),
                height: 90,
                width: 400,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                child: Text(
                  'CI ASSISTANT',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ]),
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
