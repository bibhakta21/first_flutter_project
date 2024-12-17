import 'package:first_flutter_project/core/app_theme/app_theme.dart';
import 'package:first_flutter_project/view/buttom_navigation_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      theme: getApplicationTheme(),
      home: const BottomNavigationView(),
    );
  }
}
