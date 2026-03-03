import 'package:flutter/material.dart';

class AppNavigation {
  static void goTo(BuildContext context, String routerName){
    Navigator.pushNamed(context,routerName);

  }
}