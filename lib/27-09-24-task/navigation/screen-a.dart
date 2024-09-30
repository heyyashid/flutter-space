import 'package:flutter/material.dart';

class ScreenA extends StatefulWidget {
  const ScreenA({super.key});

  @override
  State<ScreenA> createState() => _ScreenAState();
}

class _ScreenAState extends State<ScreenA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("screen A",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        ),
      backgroundColor: Colors.black,

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("Welcome To Screen A",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
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