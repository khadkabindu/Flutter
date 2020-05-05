import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
      },
    ),
  );
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
//            crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                color: Colors.white,
                child: Image(image: AssetImage('images/rsz_trip_sewa_1.png'))),
            Container(
                height: 250.0,
                width: 500.0,
                child: Image(image: AssetImage('images/clip-travel.png'))),
            SizedBox(
              height: 35.0,
            ),
            Text(
              'Make Your Trip Amazing',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Live with no excuses and travel with no regrets Live with no excuses and travel with no regrets ',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 55.0,
            ),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0)),
              splashColor: Colors.yellow,
              color: Colors.blue,
              elevation: 5.0,
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: new Text(
                "Sign up",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MyApp());
//}
//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home: Scaffold(
//        backgroundColor: Colors.lightBlueAccent,
//        body: SafeArea(
//            child: Column(
//          children: <Widget>[
//            CircleAvatar(
//              radius: 50.0,
//              backgroundImage: AssetImage('images/clip-travel.png'),
//            )
//          ],
//        )),
//      ),
//    );
//  }
//}
