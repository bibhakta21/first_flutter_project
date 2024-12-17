import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack View with Circle Avatar"),
      ),
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.red,
              child: const Text("First Container"),
            ),
            Positioned(
              top: 1,
              right: 1,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Text("I am second"),
              ),
            ),
           const Center(
              child: CircleAvatar(
                radius: 100, 
                backgroundImage: AssetImage('assets/images/dog.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
