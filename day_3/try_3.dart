import 'package:flutter/cupertino.dart';
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
  void answerQuestion() {
    print('answer chosen');//seen only on console not in app
  }

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
              title: Text("BDD Assistant"),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Options:"),
                RaisedButton(
                  child: Text('answer 1'),
                  onPressed: answerQuestion,
                ),//adding answerQuestion() will create an error coz no value is returned to onpressed
                //thus we use a pointer - answerQuestion ptr is sent
                RaisedButton(
                  child: Text('option 2'),
                  onPressed: answerQuestion,
                  //can also use anonymous function 
                  //onPressed: () => print('answer 2 chosen')
                ),
              ],
            )));
  }
}
