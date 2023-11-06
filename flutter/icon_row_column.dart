import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon, Row, and Column Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.star,
              size: 100.0,
              color: Colors.amber,
            ),
            SizedBox(height: 20.0),
            Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.favorite, size: 50.0, color: Colors.red),
                Icon(Icons.favorite, size: 50.0, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
