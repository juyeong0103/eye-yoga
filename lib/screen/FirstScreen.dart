import 'dart:async';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreen();
}

class _FirstScreen extends State<FirstScreen> {
  int time = 20;
  late Timer timer;


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Center(
            
          )
        ],
      )
    );
  }

}