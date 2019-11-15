// Navigate with named routes

import 'package:flutter/material.dart';

void main() {
  var first = new FirstScreen();
  runApp(new MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => first,
      '/second': (context) => new SecondScreen(),
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Go to Second Screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Second Screen"),
      ),
      body: new Center(
          child: new Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: new Text('Go to First Screen'),
          ),
          new RaisedButton(
              child: new Text("Go Back"),
              onPressed: () {
                Navigator.pop(context);
              }),
        ],
      )),
    );
  }
}
