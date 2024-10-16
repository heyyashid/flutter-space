import 'package:flutter/material.dart';

class Wpstatus extends StatefulWidget {
  const Wpstatus({super.key});

  @override
  State<Wpstatus> createState() => _WpstatusState();
}

class _WpstatusState extends State<Wpstatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 30,
                  backgroundImage: NetworkImage('https://via.placeholder.com/150'), 
                ),
        ) ,
        backgroundColor: Colors.black,
        title: Text("My status",style: TextStyle(color: Colors.white),),
        
          
      ),
      backgroundColor: Colors.black,

      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Icon(Icons.person),
              ),
              title: Text("status ${index + 1}",style: TextStyle(color: Colors.white),),
              
             
              
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