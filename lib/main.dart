import 'package:flutter/material.dart';
import 'package:sample/02-10-24-task/profile.dart';
import 'package:sample/03-10-24-task/bus_booking.dart';
import 'package:sample/03-10-24-task/confirmpage.dart';
import 'package:sample/03-10-24-task/homepage.dart';
import 'package:sample/17-09-24_task/chessboard.dart';
import 'package:sample/30-09-24-task/firstpage.dart';
import 'package:sample/27-09-24-task/home.dart';
import 'package:sample/27-09-24-task/login.dart';
import 'package:sample/30-09-24-task/secondpage.dart';
import 'package:sample/navigation/home.dart';
import 'package:sample/navigation/screen-a.dart';
import 'package:sample/navigation/screen-b.dart';
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
      routes: {
       "busbooking" :(context )=>BookingPage(),
      "confirmpage" :(context )=>ConfirmPage(),
    "homepage":(context)=>HomePage1()
     },
     initialRoute: "homepage",
      
      // home:Profile()
    );
  }
}

