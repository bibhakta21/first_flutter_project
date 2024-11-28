import 'package:first_flutter_project/view/col_view.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dashboard',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ColumnView(),
    );
  }
}
