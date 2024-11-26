import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  _ArithmeticViewState createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  final TextEditingController _num1Controller = TextEditingController();
  final TextEditingController _num2Controller = TextEditingController();
  String _result = "0";

  void _calculate(String operation) {
    // Parse input values
    double num1 = double.tryParse(_num1Controller.text) ?? 0;
    double num2 = double.tryParse(_num2Controller.text) ?? 0;
    double result;

    // Perform the chosen operation
    switch (operation) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      default:
        result = 0;
    }

    // Update the result in the UI
    setState(() {
      _result = result.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // Input field for first number
              TextField(
                controller: _num1Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter First No',
                ),
              ),
              const SizedBox(height: 8),

              // Input field for second number
              TextField(
                controller: _num2Controller,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second No',
                ),
              ),
              const SizedBox(height: 8),

              // Display result
              Text('Result: $_result', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 8),

              // Addition button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _calculate('+'),
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(height: 8),

              // Subtraction button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _calculate('-'),
                  child: const Text('Subtraction'),
                ),
              ),
              const SizedBox(height: 8),

              // Multiplication button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _calculate('*'),
                  child: const Text('Multiplication'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
