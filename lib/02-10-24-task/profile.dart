import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
 
  final List<String>hobbies=[
    "football",
    "movies",
    "travelling",

  ];

  String? grpValue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 166, 188, 173),
        title: Text('Profile Page',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
      ),
      backgroundColor: const Color.fromARGB(255, 218, 228, 219),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                  backgroundImage: AssetImage(
                    'assets/mypic.jpg'), // Placeholder image
              ),
              SizedBox(height: 16),
              Text(
                'ASHID KV',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              
             
              SizedBox(height: 16),
             Expanded(child: 
             ListView.builder(itemCount:hobbies.length, 
             itemBuilder: (context,index){
              return RadioListTile(value: hobbies[index], groupValue: grpValue,title: Text(hobbies[index]), onChanged: (String? newval){
                setState(() {
                  grpValue = newval;
                });
              });
             },
             )),
              
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 ElevatedButton(
                onPressed: () async{
               await  Fluttertoast.showToast(
        msg: "Updated Profile",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
                  
                },
                child: Text('Show Toast'),
              ),
              
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Profile updated!'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text('Update Profile'),
              ),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
  

