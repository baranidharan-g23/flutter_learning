import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

//statefull widget is a combo of various classes
class myApp extends StatefulWidget {
  //this class can be recreated when external data changes
  //
  @override //deliberately overriding createstate method
  State<StatefulWidget> createState() {
    //createState() method - takes no arg but need to return a state object connected to statefull widget
    // TODO: implement createState
    return myAppState();
    //connected from both sides
  }
}

class myAppState extends State<myApp> {
  //State is a generic class implemented from flutter/material.dart package
  //State is persistent and not recreated
  //data is not reset
  //data is passed on to myApp widget
  //need to say this state relates to that widget
  //setting up connection 2 things needed
  //State<MyApp> - depicts this State links to that widget
  //use of angle bracket to note generic type
  //generic type class - way to make range of datatypes instead of just one
  var questionIndex = 0;
  void answerQuestion() {
    //setstate is a method given by state class
    //takes a fn with no arg
    //inside it {} we move the code that changes the property
    //the ui is rerendered using setstate method
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favourite color?',
      'what\'s your favourite bike?',
    ];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Quiz App"),
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  questions[questionIndex],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(20),
                    child: RaisedButton(
                      padding: EdgeInsets.all(8.0),
                      onPressed: answerQuestion,
                      child: Text('Choice 1'),
                      color: Colors.lightBlue,
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: RaisedButton(
                    onPressed: answerQuestion,
                    child: Text('Choice 2'),
                    color: Colors.lightBlue,
                  ),
                ),
                RaisedButton(
                  onPressed: answerQuestion,
                  child: Text('Choice 3'),
                  color: Colors.lightBlue,
                ),
              ],
            ))));
  }
}
