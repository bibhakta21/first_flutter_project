import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( // Added SingleChildScrollView here
          child: Column(
            children: [
              MyCard(text: "1st card", color: Colors.blue),
              MyCard(text: "2nd card", color: Colors.green),
              MyCard(text: "3rd card", color: Colors.orange),
              MyCard(text: "4th card", color: Colors.red),
              MyCard(text: "5th card", color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.text,
    this.color = Colors.red, // Default color if none is provided
  });

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: color, // Use the provided color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
