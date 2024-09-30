import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("homepage",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.white,
        
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("HOME",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
            ),
            SizedBox(height: 200,),
            
            Row(
              
              
              children: [
                SizedBox(width: 70,),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "screenA");
                } ,child: Text("Screen A",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
            ),
             SizedBox(width: 70,),
            SizedBox(
              height: 40,
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                  
                ),
                onPressed: (){
                  Navigator.pushNamed(context, "screenB");
                } ,child: Text("Screen B",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
            ),

              ],
            )
          ],
        ),
      ),

    );
  }
}