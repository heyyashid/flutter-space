import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          // color: Colors.grey[100],
          decoration: BoxDecoration(
            color: Colors.grey[100],
            border: Border.all(),
            borderRadius: BorderRadius.circular(50)
          ),
        ),
      ),
    );
  }
}