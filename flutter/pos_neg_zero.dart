import 'package:flutter/material.dart';

void main() {
  runApp(NumberCheckApp());
}

class NumberCheckApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NumberCheckScreen(),
    );
  }
}

class NumberCheckScreen extends StatefulWidget {
  @override
  _NumberCheckScreenState createState() => _NumberCheckScreenState();
}

class _NumberCheckScreenState extends State<NumberCheckScreen> {
  TextEditingController _inputController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Checker'),
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
                  checkNumber();
                },
                child: Text('Check Number'),
              ),
              SizedBox(height: 20),
              Text('Result: $_result', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }

  void checkNumber() {
    int number = int.tryParse(_inputController.text) ?? 0;
    if (number > 0) {
      setState(() {
        _result = 'Positive';
      });
    } else if (number < 0) {
      setState(() {
        _result = 'Negative';
      });
    } else {
      setState(() {
        _result = 'Zero';
      });
    }
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}