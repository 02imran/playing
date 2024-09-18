import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        children: const [
          Center(
            child: Text("Screen 1", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
        ],
      ),
      
    );
  }
}