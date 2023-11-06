import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

class CalculatorScreen extends StatefulWidget {
  @override
  _CalculatorScreenState createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String _output = "0";
  String _input = "";
  double _num1 = 0.0;
  double _num2 = 0.0;
  String _operator = "";
  bool _operatorClicked = false;
  void _onButtonPressed(String buttonText) {
    if (buttonText == "C") {
      _clear();
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "x" ||
        buttonText == "/") {
      _onOperatorPressed(buttonText);
    } else if (buttonText == "=") {
      _calculate();
    } else {
      _onDigitPressed(buttonText);
    }
  }

  void _onOperatorPressed(String operator) {
    if (_operatorClicked) return;
    if (_num1 == 0.0) {
      _num1 = double.parse(_input);
      _operator = operator;
      _operatorClicked = true;
      _output = _input + ' ' + operator;
    } else {
      _output = _output + ' ' + _input + ' ' + operator;
      _calculate();
      _operator = operator;
      _operatorClicked = true;
    }
    _input = '';
  }

  void _onDigitPressed(String digit) {
    if (_operatorClicked) {
      _input = digit;
      _operatorClicked = false;
    } else {
      _input = _input + digit;
    }
  }

  void _calculate() {
    _num2 = double.parse(_input);
    double result = 0;
    switch (_operator) {
      case '+':
        result = _num1 + _num2;
        break;
      case '-':
        result = _num1 - _num2;
        break;
      case 'x':
        result = _num1 * _num2;
        break;
      case '/':
        result = _num1 / _num2;
        break;
    }
    _num1 = result;
    _input = result.toString();
    _output = _input;
  }

  void _clear() {
    _num1 = 0.0;
    _num2 = 0.0;
    _operator = '';
    _input = '';
    _output = '0';
    _operatorClicked = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(24.0),
              child: Text(
                _output,
                style: TextStyle(fontSize: 36.0),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButton('7'),
                  _buildButton('8'),
                  _buildButton('9'),
                  _buildButton('/'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButton('4'),
                  _buildButton('5'),
                  _buildButton('6'),
                  _buildButton('x'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButton('1'),
                  _buildButton('2'),
                  _buildButton('3'),
                  _buildButton('-'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildButton('C'),
                  _buildButton('0'),
                  _buildButton('='),
                  _buildButton('+'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String buttonText) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _onButtonPressed(buttonText);
          });
        },
        child: Container(
          alignment: Alignment.center,
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
    );
  }
}
