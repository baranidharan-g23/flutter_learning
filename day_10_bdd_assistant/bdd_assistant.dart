import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import 'package:torch/torch.dart';
import 'dart:io';

void main() {
  runApp(MyApp());
}

Map timimg = {'-': 1000, '.': 100, ' ': 0}; // increasing values of - and . here
//will provide extra vibration time for them respectively
// increasing the value of ' ' will result in giving noise vibration for spaces
// thus zero is maintained
Map mapper = {
  'a': '.-',
  'b': '-...',
  'c': '-.-.',
  'd': '-..',
  'e': '.',
  'f': '..-.',
  'g': '--.',
  'h': '....',
  'i': '..',
  'j': '.---',
  'k': '-.-',
  'l': '.-..',
  'm': '--',
  'n': '-.',
  'o': '---',
  'p': '.--.',
  'q': '--.-',
  'r': '.-.',
  's': '...',
  't': '-',
  'u': '..-',
  'v': '...-',
  'w': '.--',
  'x': '-..-',
  'y': '-.--',
  'z': '--..',
  ' ': '   ' //space increases , time between words increases
};

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController texty = new TextEditingController();

  String code = '';

  void encoder() {
    setState(() {
      String temp = texty.text.toLowerCase();
      code = '';
      for (int i = 0; i < temp.length; i++) {
        code += mapper[temp[i]] + ' ';
      }
    });
  }

  int adjustknob =
      300; //adjust knob increases -> time space between letters increases
  void vibe() {
    for (int i = 0; i < code.length - 1; i++) {
      int time = timimg[code[i]];
      Vibration.vibrate(duration: time);
      sleep(Duration(milliseconds: time + adjustknob));
    }
  }

  void lit() {
    for (int i = 0; i < code.length - 1; i++) {
      int time = timimg[code[i]];
      time > 0 ? Torch.turnOn() : 1;
      sleep(Duration(milliseconds: time));
      Torch.turnOff();
      sleep(Duration(milliseconds: adjustknob));
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BDD ASSISTANT'),
      ),
      body: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 20, left: 9, right: 9, bottom: 10),
            child: TextField(
              controller: texty,
            )),
        SizedBox(
          width: 250,
          height: 120,
          child: Padding(
              padding: EdgeInsets.all(30),
              child: RaisedButton(
                  // padding: EdgeInsets.all(10),
                  onPressed: encoder,
                  child: Center(
                      child: Text(
                    "Convert To Morse Code",
                    style: TextStyle(fontSize: 19.99),
                    textAlign: TextAlign.center,
                  )))),
        ),
        Text(
          code,
          style: TextStyle(fontSize: 20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
                width: 100,
                height: 80,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                      //padding: EdgeInsets.all(10),
                      onPressed: vibe,
                      child: Text(
                        "🥁",
                        style: TextStyle(fontSize: 50),
                        textAlign: TextAlign.center,
                      )),
                )),
            SizedBox(
                width: 100,
                height: 80,
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: RaisedButton(
                      onPressed: lit,
                      child: Text(
                        "🔥",
                        style: TextStyle(fontSize: 50),
                        textAlign: TextAlign.center,
                      )),
                ))
          ],
        )
      ]),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Text('Learn Square',
                style: TextStyle(fontSize: 30, color: Colors.white)),
          ),
          ListTile(
            title: const Text('BLIND ASSISTANT',
                style: TextStyle(
                  fontSize: 20,
                )),
            onTap: () {},
          ),
          ListTile(
            title: const Text('DEAF ASSISTANT', style: TextStyle(fontSize: 20)),
            onTap: () {},
          ),
          ListTile(
            title: const Text('DUMB ASSISTANT', style: TextStyle(fontSize: 20)),
            onTap: () {},
          ),
          ListTile(
            title:
                const Text('SUPER ASSISTANT', style: TextStyle(fontSize: 20)),
            onTap: () {},
          ),
          ListTile(
            title: const Text('CI ASSISTANT', style: TextStyle(fontSize: 20)),
            onTap: () {},
          ),
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
          child: IconButton(
            onPressed: () {
              print("pressed");
            },
            icon: Icon(Icons.home_outlined),
            color: Colors.white,
          ),
          color: Colors.blue),
    );
  }
}
