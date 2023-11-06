import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "hello there**",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 43,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.deepOrangeAccent,
                  color: Colors.teal),
              overflow: TextOverflow.ellipsis,
              selectionColor: Colors.black12,
            ),
            backgroundColor: Colors.amberAccent,
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    child: Center(
                      child: Text("apple",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    height: 200.0,
                    width: 400.0,
                    color: Colors.tealAccent),
                Container(
                    child: Center(
                      child: Text("mango",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    height: 200.0,
                    width: 400.0,
                    color: Colors.greenAccent),
                Container(
                  child: TextButton(
                      onPressed: () {
                        print("fruit");
                      },
                      child: Center(
                          child: Text("click",
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              )))),
                  color: Colors.grey,
                  height: 200.0,
                  width: 400.0,
                )
              ],
            ),
          ))));
}
