import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:newbroo/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Square',
      home: const MyHomePage(title: 'BDD ASSISTANT'),
      routes: {SecondPage.routeName: (_) => SecondPage()},
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          backgroundColor: Color.fromARGB(255, 91, 91, 91),
          title: Text(
            widget.title,
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromARGB(255, 224, 224, 224),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 135, 80, 177)),
                        onPressed: () {
                          Navigator.of(context).pushNamed(SecondPage.routeName);
                        },
                        child: Text(
                          "Text to Vibration",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 135, 80, 177)),
                        onPressed: () {},
                        child: Text(
                          "Pic to Vibration",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        ))),
                Padding(padding: EdgeInsets.all(20)),
                SizedBox(
                    height: 120,
                    width: 350,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 135, 80, 177)),
                        onPressed: () {},
                        child: Text(
                          "Audio to Vibration",
                          style: TextStyle(fontSize: 29, color: Colors.white),
                        )))
              ],
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 188, 88),
                  shape: BoxShape.rectangle,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(20))),
              child: Text('Learn Square',
                  style: TextStyle(fontSize: 30, color: Colors.white)),
            ),
            ListTile(
              title: const Text('BLIND ASSISTANT',
                  style: TextStyle(
                    fontSize: 20,
                  )),
              onTap: () {
                print("Blind selected");
              },
            ),
            ListTile(
              title:
                  const Text('DEAF ASSISTANT', style: TextStyle(fontSize: 20)),
              onTap: () {
                print("Deaf selected");
              },
            ),
            ListTile(
              title:
                  const Text('DUMB ASSISTANT', style: TextStyle(fontSize: 20)),
              onTap: () {
                print("Dumb selected");
              },
            ),
            ListTile(
              title:
                  const Text('SUPER ASSISTANT', style: TextStyle(fontSize: 20)),
              onTap: () {
                print("SA selected");
              },
            ),
            ListTile(
              title: const Text('CI ASSISTANT', style: TextStyle(fontSize: 20)),
              onTap: () {
                print("CI selected");
              },
            ),
          ]),
        ));
  }
}
