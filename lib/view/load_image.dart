import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50], // Set background color here
      body: SafeArea(
        child: Center(
          child: Image.asset('assets/images/dog.png'), // Display the image
        ),
      ),
    );
  }
}
