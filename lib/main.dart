import 'package:flutter/material.dart';

import 'Screens/ListManagementScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List Management System',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: const ListManagementScreen(),
    );
  }
}