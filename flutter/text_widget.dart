import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "heading ",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 43,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.deepOrangeAccent,
                color: Colors.teal),
          ),
          backgroundColor: Colors.amberAccent,
          centerTitle: true,
        ),
      )));
}
