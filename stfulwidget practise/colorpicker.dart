import 'package:flutter/material.dart';

void main() {
  runApp(marker());
}

class marker extends StatefulWidget {
  @override
  State<marker> createState() => _markerState();
}

class _markerState extends State<marker> {
  int i = 100;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          centerTitle: true,
          foregroundColor: Color.fromARGB(201, 255, 255, 255),
          backgroundColor: Color.fromARGB(255, 2, 9, 48),
          title: Text(
            "Know The Colors",
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: i == 0
                ? MainAxisAlignment.start
                : i == 1
                    ? MainAxisAlignment.center
                    : i == 100
                        ? MainAxisAlignment.center
                        : i == 2
                            ? MainAxisAlignment.end
                            : i == 3
                                ? MainAxisAlignment.start
                                : i == 4
                                    ? MainAxisAlignment.center
                                    : MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: i == 100 ? 400 : 200,
                height: i == 100 ? 180 : 100,
                child: RaisedButton(
                  textColor: Color.fromARGB(255, 245, 255, 249),
                  color: i == 0
                      ? Color.fromARGB(255, 250, 36, 36)
                      : i == 1
                          ? Colors.amber
                          : i == 2
                              ? Color.fromARGB(255, 36, 255, 7)
                              : i == 3
                                  ? Color.fromARGB(255, 255, 119, 7)
                                  : i == 4
                                      ? Color.fromARGB(255, 7, 106, 255)
                                      : i == 100
                                          ? Color.fromARGB(255, 136, 185, 192)
                                          : Color.fromARGB(255, 250, 6, 209),
                  hoverColor: i == 0
                      ? Color.fromARGB(159, 110, 4, 18)
                      : i == 1
                          ? Color.fromARGB(153, 175, 133, 5)
                          : i == 2
                              ? Color.fromARGB(123, 26, 168, 8)
                              : i == 3
                                  ? Color.fromARGB(162, 138, 65, 5)
                                  : i == 4
                                      ? Color.fromARGB(153, 3, 53, 128)
                                      : i == 100
                                          ? Color.fromARGB(146, 13, 127, 145)
                                          : Color.fromARGB(134, 136, 4, 114),
                  padding: EdgeInsets.all(10),
                  onPressed: () {
                    setState(() {
                      if (i == 100) i = -1;
                      i += 1;
                      if (i > 5) i = 0;
                    });
                  },
                  child: i == 0
                      ? Text(
                          "RED",
                          style: new TextStyle(
                            fontSize: 20.0,
                          ),
                        )
                      : i == 1
                          ? Text("YELLOW",
                              style: new TextStyle(
                                fontSize: 20.0,
                              ))
                          : i == 2
                              ? Text("GREEN",
                                  style: new TextStyle(
                                    fontSize: 20.0,
                                  ))
                              : i == 3
                                  ? Text("ORANGE",
                                      style: new TextStyle(
                                        fontSize: 20.0,
                                      ))
                                  : i == 4
                                      ? Text("BLUE",
                                          style: new TextStyle(
                                            fontSize: 20.0,
                                          ))
                                      : i == 100
                                          ? Text(
                                              "START",
                                              style: new TextStyle(
                                                fontSize: 50.0,
                                              ),
                                            )
                                          : Text(
                                              "PURPLE",
                                              style: new TextStyle(
                                                fontSize: 20.0,
                                              ),
                                            ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 2, 9, 48),
          child: IconButton(
            icon: Icon(Icons.restart_alt_outlined),
            hoverColor: Color.fromARGB(80, 10, 255, 222),
            onPressed: () {
              setState(() {
                i = 100;
              });
            },
            color: Color.fromARGB(201, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}
