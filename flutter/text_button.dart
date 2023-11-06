import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "hello there** ",
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
      body: TextButton(
        child: const Text("click"),
        onPressed: () {
          print("on pressed function is working");
        },
      ),
    ),
  ));
}
