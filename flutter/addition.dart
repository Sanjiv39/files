import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  int total = 0;
  void sum() {
    setState(() {
      int a = int.parse(myController.text);
      int b = int.parse(myController1.text);
      total = a + b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('print sum'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: myController,
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: myController1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('$total'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          sum();
        },
        child: const Icon(Icons.add_circle),
      ),
    );
  }
}
