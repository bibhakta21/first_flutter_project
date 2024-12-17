import 'package:first_flutter_project/view/buttom_navigation_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BottomNavigationView(),
    );
  }
}
