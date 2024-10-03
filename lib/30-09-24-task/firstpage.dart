import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Stack(children: [
      
                  Container(
                    height: 380,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(120),
                        bottomRight: Radius.circular(120)
                      )
                    ),
                    
                  ),
                  SizedBox(
                    height: 455,
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 260),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.asset("assets/eco-leaf-green-energy-logo-vector-v14_251584-original-removebg-preview 1.png"),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(90)
                          ),
                          ),
                      ),
                    ),
                  )
      
                  
                ],
                  
                ),
                
               
                Text("Leafboard",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("A platform built for a new way of working",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                SizedBox(height: 25,),
                SizedBox(
                  height: 50,
                  width: 220,
                   child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 176, 240, 101),
                        
                      ),
                      onPressed: (){
                        Navigator.pushNamed(context, "secondpage");
                      } ,child: Text("Get started for free >",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))
                      ),
                 ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}