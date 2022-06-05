import 'package:flutter/material.dart';
import 'package:galaxy_planets_app/screens/home_page.dart';
import 'package:galaxy_planets_app/screens/second_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const HomePage(),
        'second_page' : (context) => const SecondPage(),
      },
    ),
  );
}
