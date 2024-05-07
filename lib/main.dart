// Open Street Map

import 'package:flutter/material.dart';
import 'package:osm_1/screen_2.dart';
import 'package:osm_1/screen_3.dart';
import 'package:osm_1/screen_1.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:
      Screen1a(), // MapScreen() , HomeScreen() , Home2Screen() ----------------
    );
  }
}

