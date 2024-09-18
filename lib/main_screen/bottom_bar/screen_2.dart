import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Text("Screen 2", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      
    );
  }
}