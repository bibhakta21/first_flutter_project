import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TextFormField
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Enter Text',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            

        
            SizedBox(
              width: 250,  
              child: ElevatedButton(
                onPressed: () {
                  
                  print('Button Pressed');
                },
                child: const Text('Submit'),
              ),
            ),
            const SizedBox(height: 20),  

          
            SizedBox(
              width: double.infinity,  
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                onPressed: () {
                  
                  print('Button Pressed');
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFF5B16D0)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
