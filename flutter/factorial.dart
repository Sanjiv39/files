import 'package:flutter/material.dart';

void main() {
  runApp(FactorialApp());
}

class FactorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FactorialScreen(),
    );
  }
}

class FactorialScreen extends StatefulWidget {
  @override
  _FactorialScreenState createState() => _FactorialScreenState();
}

class _FactorialScreenState extends State<FactorialScreen> {
  TextEditingController _inputController = TextEditingController();
  int _result = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Factorial Calculator'),
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
                  calculateFactorial();
                },
                child: Text('Calculate Factorial'),
              ),
              SizedBox(height: 20),
              Text('Factorial: $_result'),
            ],
          ),
        ),
      ),
    );
  }

  void calculateFactorial() {
    int number = int.tryParse(_inputController.text) ?? 0;
    int factorial = 1;

    for (int i = 1; i <= number; i++) {
      factorial *= i;
    }

    setState(() {
      _result = factorial;
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}
