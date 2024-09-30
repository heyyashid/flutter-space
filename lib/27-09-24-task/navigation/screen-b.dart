import 'package:flutter/material.dart';

class ScreenB extends StatefulWidget {
  const ScreenB({super.key});

  @override
  State<ScreenB> createState() => _ScreenBState();
}

class _ScreenBState extends State<ScreenB> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
        title: Text("screen B",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        ),
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Welcome To Screen B",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 40,),
             SizedBox(
              height: 50,
              width: 170,
               child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    
                  ),
                  onPressed: (){
                    // Navigator.pushNamed(context, "home");
                    Navigator.pop(context);
                  } ,child: Text("Back to home",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
                  ),
             ),
          ],
        ),
      ),

    );
  }
}