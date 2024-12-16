import 'package:flutter/material.dart';

class ImageMediaquery extends StatelessWidget {
  const ImageMediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50], // Set background color here
      body: SafeArea(
        child: SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width * .5,
            child: Image.asset(
              'assets/images/dog.png',
              fit: BoxFit.fill,
            ) // Display the image
            ),
      ),
    );
  }
}
