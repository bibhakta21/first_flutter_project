import 'package:flutter/material.dart';

class AreaOfCircleView extends StatefulWidget {
  const AreaOfCircleView({super.key});

  @override
  _AreaOfCircleViewState createState() => _AreaOfCircleViewState();
}

class _AreaOfCircleViewState extends State<AreaOfCircleView> {
  final TextEditingController _radiusController = TextEditingController();
  String _result = "0";

  void _calculateArea() {
    double radius = double.tryParse(_radiusController.text) ?? 0;

    // Calculate Area of Circle
    double area = 3.14159 * radius * radius;

    // Update result in the UI
    setState(() {
      _result = area.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              // Input for Radius
              TextField(
                controller: _radiusController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Radius',
                ),
              ),
              const SizedBox(height: 8),

              // Display result
              Text('Area: $_result', style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 8),

              // Calculate Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _calculateArea,
                  child: const Text('Calculate Area'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
