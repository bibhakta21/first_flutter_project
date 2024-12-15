import 'package:flutter/material.dart';


class SnackBarView extends StatelessWidget {
  const SnackBarView({super.key});

  void _showSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Hello"),
        duration: Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Two Buttons'),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Center(
            child: Column(
              
              children: [
                ElevatedButton(
                  onPressed: () => _showSnackbar(context), 
                  child: const Text('Show Snackbar'),
                ),
                const SizedBox(height: 16), // Space between the buttons
                ElevatedButton(
                  onPressed: () => _showSnackbar(context), 
                  child: const Text('Show Snackbar'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
