import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: const Color.fromARGB(255, 185, 176, 194),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         
          children: [
           
          
           Container(
            
             padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
            
            height:460,
            width:329 ,
          
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                SizedBox(height: 20,),
                Text("LOGIN",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  ]
                ),
                SizedBox(height: 40,),
                
                  
                  Text("Email",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w400,fontFamily: "poppins" ),),
                  SizedBox(height: 10,),
                  TextFormField(
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined,color: Color(0xff189649),),
                      hintText: "Enter Your Email Id",
                      fillColor: const Color.fromARGB(255, 221, 217, 226),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7)
                      )
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text("Password",style: TextStyle(fontSize: 15,fontWeight:FontWeight.w400,fontFamily: "poppins"),),
                   SizedBox(height: 10,),
                  TextFormField(
                    obscureText: true,
                    
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline,color: Color(0xff189649),),
                      hintText: "Enter Your Passsword",
                      fillColor: const Color.fromARGB(255, 221, 217, 226),
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7)
                      )
                    ),
                  ),
                  SizedBox(height: 90),
                  
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 132, 110, 158),
                        foregroundColor: Colors.white,
                        
                      ),
                      onPressed: (){
                      Navigator.pushNamed(context, "home");
                       
                      }, child: Text("LOGIN")),
                  ),
              


              ],
            )
            
            ),
            
                ],
              ),
            )
    
        );
      
  }
}