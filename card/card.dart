import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 197, 195, 195),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Card(
            margin: EdgeInsets.all(10),
            color: Colors.blueGrey,
            child: Container(
              padding: EdgeInsets.all(10),
              height: 100,
              child: Column(children: [
                Text(
                  'As it was said by.................................',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('-Spike')
              ]),
            ),
          ),
        ));
  }
}
