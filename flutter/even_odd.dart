import 'package:flutter/material.dart';

void main() {
  runApp(EvenOddApp());
}

class EvenOddApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EvenOddScreen(),
    );
  }
}

class EvenOddScreen extends StatefulWidget {
  @override
  _EvenOddScreenState createState() => _EvenOddScreenState();
}

class _EvenOddScreenState extends State<EvenOddScreen> {
  TextEditingController _inputController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Even/Odd Checker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _inputController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Enter a number'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  checkEvenOrOdd();
                },
                child: Text('Check Even/Odd'),
              ),
              SizedBox(height: 20),
              Text('Result: $_result'),
            ],
          ),
        ),
      ),
    );
  }

  void checkEvenOrOdd() {
    int number = int.tryParse(_inputController.text) ?? 0;
    setState(() {
      _result = (number % 2 == 0) ? 'Even' : 'Odd';
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
