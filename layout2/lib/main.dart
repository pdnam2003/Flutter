import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout2/screens/homescreen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SHOP CAKE",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Homescreen(),



    );
  }

}