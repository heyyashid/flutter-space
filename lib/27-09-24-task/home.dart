import 'package:flutter/material.dart';

class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    backgroundColor: const Color.fromARGB(255, 185, 176, 194),
    body: Center(
      child: Column(
        children: [
          SizedBox(height: 30,),
          Text("HomePage",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Text("Welcome! You are logged in!!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          SizedBox(height: 500,),
          SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 133, 106, 166),
                foregroundColor: Colors.white
              ),
              onPressed: (){}, child:
              Text("Logout",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),) ),
          )
          
        ],
      ),
    )
      
      
    
    );
  }
}