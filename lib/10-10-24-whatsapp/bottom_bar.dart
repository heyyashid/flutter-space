import 'package:flutter/material.dart';
import 'package:sample/10-10-24-whatsapp/home.dart';
import 'package:sample/10-10-24-whatsapp/status.dart';

class BottomBarEx extends StatefulWidget {
  const BottomBarEx({super.key});

  @override
  State<BottomBarEx> createState() => _BottomBarExState();
}

class _BottomBarExState extends State<BottomBarEx> {
  int _selectIndex = 0;

List bottomItems = [
   
    Wpstatus(),
    wpHome(),
    Center(child: Text('Settings'),),
];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.circle_outlined),label: 'Status'),
                BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
      ],
      onTap: (value) {
        setState(() {
          _selectIndex = value;
        });
      },
      ),
      body: bottomItems[_selectIndex]
    );
  }
}