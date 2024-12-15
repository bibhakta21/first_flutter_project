import 'package:flutter/material.dart';

class ColumnGrid extends StatelessWidget {
  const ColumnGrid({super.key});

  Widget buildGridItem(String text) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey,
        border: Border.all(style: BorderStyle.solid, color: Colors.grey),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'This is grid view',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(10),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          children: List.generate(10, (index) => buildGridItem('${index + 1}')),
        ),
      ),
    );
  }
}
