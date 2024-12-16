import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('column'),
      ),
      body: Container(
        color: Colors.yellow,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.star,
              size: 90,
            ),
            const Icon(
              Icons.star,
              size: 80,
            ),
            const Icon(
              Icons.star,
              size: 60,
            )
          ],
        ),
      ),
    );
  }
}