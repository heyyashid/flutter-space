import 'package:flutter/material.dart';
import 'package:sample/17-09-24_task/chessboard.dart';
import 'package:sample/27-09-24-task/home.dart';
import 'package:sample/27-09-24-task/login.dart';
import 'package:sample/container.dart';
import 'package:sample/image.dart';
import 'package:sample/19-09-24_task/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     
      
      home:SigninPage()
    );
  }
}

