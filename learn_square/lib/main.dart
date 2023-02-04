import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  // HomePage({Key? key}) : super(key: key);

  
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //String output_val = '';
    return Scaffold(
        //appBar: AppBar(title: Text('Login')),
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(39.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Log-in Page",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Enter your details",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 134,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "  Email",
                  prefixIcon: Icon(Icons.mail, color: Colors.black),
                ),
              ),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "  Password",
                    prefixIcon: Icon(Icons.lock, color: Colors.black),
                  )),
              SizedBox(height: 80),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        "Log-In",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: Text(
                        "Sign-Up",
                        style: TextStyle(fontSize: 28),
                      ),
                    ),
                  )
                ],
              )
            ]),
      ),
    ));
  }
}
