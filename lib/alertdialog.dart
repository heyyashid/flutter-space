import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AlertDialog1 extends StatefulWidget {
  const AlertDialog1({super.key});

  @override
  State<AlertDialog1> createState() => _AlertDialogState();
}

class _AlertDialogState extends State<AlertDialog1> {

  File? _image;

  Future<void> _pickImage(ImageSource source) async{
    final getImage = await ImagePicker().pickImage(source: source);
    setState(() {
      if(getImage != null){
         _image = File(getImage.path);
      }
    });
  }


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
                  backgroundImage:
                  _image != null? FileImage(_image!):
                   AssetImage(
                    'assets/mypic.jpg'), // Placeholder image
              ),
              SizedBox(height: 16),
              Text(
                'ASHID KV',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              ElevatedButton(onPressed:()=> showAlertbox(context), child: Text('Change Profile')),


              
             
             
             
            ],
          ),
        ),
      ),
    );
  }
  Future<void> showAlertbox (BuildContext context)async {
  return await showDialog(context: context,
   builder: (context){
    return AlertDialog(
      content: Text("update your profile"),
      title: Text("warning") ,
      actions: [
        TextButton(onPressed: ()async{
          Navigator.pop(context);
         await _pickImage(ImageSource.gallery);
        }, 
        child: Text("gallery")),
        TextButton(onPressed: ()async{
          Navigator.pop(context);
         await _pickImage(ImageSource.camera);

        },
         child: Text("camera"))

      ],
    );
   });
}
}




    
  
