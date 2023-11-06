import 'package:flutter/material.dart';

void main() {
  runApp(DivisionApp());
}

class DivisionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DivisionScreen(),
    );
  }
}

class DivisionScreen extends StatefulWidget {
  @override
  _DivisionScreenState createState() => _DivisionScreenState();
}

class _DivisionScreenState extends State<DivisionScreen> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Division App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _firstNumberController,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Enter the first number'),
              ),
              TextField(
                controller: _secondNumberController,
                keyboardType: TextInputType.number,
                decoration:
                    InputDecoration(labelText: 'Enter the second number'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  divideNumbers();
                },
                child: Text('Divide Numbers'),
              ),
              SizedBox(height: 20),
              Text('Result: $_result', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }

  void divideNumbers() {
    double firstNumber = double.tryParse(_firstNumberController.text) ?? 0;
    double secondNumber = double.tryParse(_secondNumberController.text) ?? 1;

    if (secondNumber == 0) {
      setState(() {
        _result = 'Error: Division by zero';
      });
    } else {
      double result = firstNumber / secondNumber;
      setState(() {
        _result = 'Result: $result';
      });
    }
  }

  @override
  void dispose() {
    _firstNumberController.dispose();
    _secondNumberController.dispose();
    super.dispose();
  }
}
