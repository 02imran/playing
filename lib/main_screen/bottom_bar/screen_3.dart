import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text("Screen 3", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
      ),
      
    );
  }
}