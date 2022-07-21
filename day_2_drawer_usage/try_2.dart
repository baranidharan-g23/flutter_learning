import 'package:flutter/material.dart'; //build in widgets importing flutter package

void main() {
  //need to import some widgets
  //a widget is a spl type of object thus need a class
  runApp(Myapp()); //takes the build widget and runs the app
}
//void main() => runApp(Myapp()); //single line substitue for the above one
// this syntax can be used to define any fn with one line definition

class Myapp extends StatelessWidget {
  //Statelexs Widget's states cant be altered once built
  //a method needs to be added
  @override
  //override makes sure the build method is overridden clearly and deliberately
  Widget build(BuildContext context) //context is a obj passed into our method
  //build method is overridden
  //build widget is responsible for drawing something on the screen
  //BuildContext as parameter and uniqure to every widget
  //BuildContext locates the widget inside the widget tree
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'BDD Assistant',
            style: TextStyle(fontSize: 25),
          ),
        ),
        body: Center(
          child: Text(
            'Body Text',
            style: TextStyle(fontSize: 25),
          ),
        ),
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 64, 140, 255),
              ),
              child: Text('Baranidharan G', style: TextStyle(fontSize: 35)),
            ),
            ListTile(
              title: const Text('Item 1', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 3', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 4', style: TextStyle(fontSize: 20)),
              onTap: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
