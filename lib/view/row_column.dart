import 'package:flutter/material.dart';

class RowColumnView extends StatelessWidget {
  const RowColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Columns'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // First row with three containers
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Center(
                        child: Text(
                          'Container 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'Container 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'Container 3',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Second container in the column
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Container 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          // Third container in the column
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Container 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          // Fourth container in the column
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Container 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
