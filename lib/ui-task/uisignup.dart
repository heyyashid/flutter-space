import 'package:flutter/material.dart';
import 'package:sample/ui-task/uilogin.dart';

class UiSignup extends StatefulWidget {
  const UiSignup({super.key});

  @override
  State<UiSignup> createState() => _UiSignupState();
}

class _UiSignupState extends State<UiSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE7F9DA),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 35,),
            Positioned(
              top: 65,
              left: 158,
              height: 85,
              width: 105,
              child: Image.network("data:image/jpeg;base64,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",
              height: 85,
              width: 105,
              ),
            ),
            
            Positioned(  top: 150,
            left: 300,
            height: 31,
            width: 84,
              child: Text("Sign Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ),
              SizedBox(height: 30,),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 20),
                width:343 ,
                height: 480,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28)
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: "poppins"),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person_outline,color: Color(0xff189649),),
                        hintText: "Enter your name",
                        fillColor: Color(0xffE7F9DA),
                        filled: true,
                         border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7),
                        
                      ),
                    )
                    
                    ),
                    SizedBox(height: 10,),
                     Text("Mobile Number",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: "poppins"),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_outlined,color: Color(0xff189649),),
                        hintText: "Enter your mobile number",
                        fillColor: Color(0xffE7F9DA),
                        filled: true,
                         border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7),
                        
                      ),
                    )
                    
                    ),
                    SizedBox(height: 10,),
                     Text("Email",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: "poppins"),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined,color: Color(0xff189649),),
                        hintText: "Enter your Email id",
                        fillColor: Color(0xffE7F9DA),
                        filled: true,
                         border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7),
                        
                      ),
                    )
                    
                    ),
                    SizedBox(height: 10,),
                     Text("Password",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,fontFamily: "poppins"),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                      
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline,color: Color(0xff189649),),
                        hintText: "Enter your password",
                        fillColor: Color(0xffE7F9DA),
                        filled: true,
                         border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7),
                        
                      ),
                    )
                    
                    ),
                    SizedBox(height: 10,),

                     SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff92D722),
                        foregroundColor: Colors.white,

                      ),
                      onPressed: (){}, child: Text("Sign Up")),
                  ),
                    Center(
                      child: TextButton(
                        
                        onPressed: (){UiLogin();}, child: Text("Back to login")),
                    )
            
                  ],
                ),
                
              )
          ],
        ),
      ),
    );
  }
}