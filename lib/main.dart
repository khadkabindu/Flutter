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
        '/register': (context) => RegisterPage(),
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
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Text(
              ' TripSewa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45.0,
                fontFamily: "RobotoMono",
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              child: Image.asset('images/tourist.png'),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Email",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              color: Colors.blue,
              onPressed: () {
                // Navigate back to the first screen by popping the current route
                // off the stack.
                Navigator.pop(context);
              },
              child: new Text(
                'Sign in',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              '-OR-',
              style: TextStyle(color: Colors.blueGrey),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30.0,
            ),
            InkWell(
              onTap: () {
                print("Container was tapped");
              },
              child: Container(
                color: Colors.blue,
                width: 200.0,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      'images/google.png',
                      height: 50.0,
                    ),
                    Text(
                      'Sign in with google',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Robotomono",
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Center(
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text(
                      "Don't have an account?",
                      textAlign: TextAlign.center,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: Text(
                          " create now",
                          style: TextStyle(color: Colors.blueAccent),
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: SafeArea(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Text(
              ' TripSewa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45.0,
                fontFamily: "RobotoMono",
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            SizedBox(
              height: 80.0,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Fullname",
                labelText: "Fullname",
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              decoration: InputDecoration(
                hintText: "Email",
                labelText: "Email",
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              obscureText: true,
              decoration: InputDecoration(
                hintText: " Confirm Password",
                labelText: "Confirm Password",
                border: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            new RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              color: Colors.blue,
              onPressed: () {
                // Navigate back to the first screen by popping the current route
                // off the stack.
              },
              child: new Text(
                'Sign up',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
