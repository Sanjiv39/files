import 'package:flutter/material.dart';

void main() {
  runApp(MultiplicationApp());
}

class MultiplicationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiplicationScreen(),
    );
  }
}

class MultiplicationScreen extends StatefulWidget {
  @override
  _MultiplicationScreenState createState() => _MultiplicationScreenState();
}

class _MultiplicationScreenState extends State<MultiplicationScreen> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multiplication App'),
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
                  multiplyNumbers();
                },
                child: Text('Multiply Numbers'),
              ),
              SizedBox(height: 20),
              Text('Result: $_result', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }

  void multiplyNumbers() {
    int firstNumber = int.tryParse(_firstNumberController.text) ?? 0;
    int secondNumber = int.tryParse(_secondNumberController.text) ?? 0;

    int result = firstNumber * secondNumber;

    setState(() {
      _result = 'Result: $result';
    });
  }

  @override
  void dispose() {
    _firstNumberController.dispose();
    _secondNumberController.dispose();
    super.dispose();
  }
}
