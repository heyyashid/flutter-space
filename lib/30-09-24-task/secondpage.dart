import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController emailcontroll =TextEditingController();
  TextEditingController passcontroll =TextEditingController();
  final formkey =GlobalKey<FormState>();

  Color? color = const Color.fromARGB(255, 176, 240, 101);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            SizedBox(height: 70,),
            Text("Leafboard",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
                      Text("Works without limits",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 30,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 40,),
                          Text("Your email address",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                       SizedBox(
                        height: 50,
                        width: 460,
                         child: TextFormField(
                          controller: emailcontroll,
                          validator: (value) {
                            if(emailcontroll.text.isEmpty){
                              return "enter the email";
                            }
                          },
                         
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined,color: Color(0xff189649),),
                            hintText: "abcd@gmail.com",
                            fillColor: const Color.fromARGB(255, 234, 236, 231),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(9)
                            )
                          ),
                                             ),
                       ),
                       SizedBox(height: 15,),
                        Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 40,),
                          Text("Choose a password",style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                       SizedBox(
                        height: 50,
                        width: 460,
                         child: TextFormField(
                          controller: passcontroll,
                          validator: (value) {
                            if(passcontroll.text.isEmpty){
                              return "enter a password";
                            }
                          },
                         
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.password_rounded,color: Color(0xff189649),),
                            hintText: "min 8 characters",
                            fillColor: const Color.fromARGB(255, 234, 236, 231),
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(9)
                            )
                          ),
                                             ),
                       ),
                       SizedBox(height: 25,),
                       SizedBox(
                        height: 50,
                        width: 200,
                         child: ElevatedButton(
                         
                          style: ElevatedButton.styleFrom(
                            backgroundColor: color,
                            
                          ),
                          
                          onPressed: (){
                            setState(() {
                              if(formkey.currentState!.validate()){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("valid"))
                                );
                              }
                            });
                          }, child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(),
                              Text("Continue",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,)),
                              Icon(Icons.arrow_right_rounded)
                            ],
                          )),
                       ),
        
        SizedBox(height: 15,),
        Text("__________  or  _________"),
        SizedBox(height: 20,),
        SizedBox(
          height: 50,
          width: 440,
          child: InkWell(
            hoverColor: const Color.fromARGB(255, 176, 240, 101),
            borderRadius: BorderRadius.circular(30),
            onTap: (){
             
            },
            child: Ink(
              
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 222, 223, 220),
                // color: color
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,     
                         children: [
                          Image.asset("assets/png-transparent-google-logo-google-text-trademark-logo-thumbnail-removebg-preview.png",
                          height: 30,),
                  Text("sign in with google"),
                ],
              ),
              
            ),
           
            )
          ),
          SizedBox(height: 10,),
           SizedBox(
          height: 50,
          width: 440,
          child: InkWell(
            onTap: (){
             
            },
            child: Ink(
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 222, 223, 220),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,     
                         children: [
                     Icon(Icons.apple),
                  Text("sign in with Apple"),
                ],
              ),
              
            ),
           
            )
          ),
        
          ]
        ),
      ),
     ),

    );
  }
}