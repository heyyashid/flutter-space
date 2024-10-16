import 'package:flutter/material.dart';

class WpCalls extends StatefulWidget {
  const WpCalls({super.key});

  @override
  State<WpCalls> createState() => _WpCallsState();
}

class _WpCallsState extends State<WpCalls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Icon(Icons.person),
              ),
              title: Text("person ${index + 1}",style: TextStyle(color: Colors.white),),
              trailing: 
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.call_outlined,color: Colors.white,),
                  SizedBox(width: 20,),
                  Icon(Icons.video_call_outlined,color: Colors.white,),
                ],
              ),
              
            );
          },
           separatorBuilder: (context,index){
            return Divider();

           },
            itemCount: 15),
      

    
      ),

    );
  }
}