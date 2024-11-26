import 'package:flutter/material.dart';
import 'arithmetic_operation.dart';
import 'simple_interest.dart';
import 'area_of_circle.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ArithmeticView()),
                );
              },
              child: const Text('Arithmetic Operation'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SimpleInterestView()),
                );
              },
              child: const Text('Simple Interest'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AreaOfCircleView()),
                );
              },
              child: const Text('Area of Circle'),
            ),
          ],
        ),
      ),
    );
  }
}
