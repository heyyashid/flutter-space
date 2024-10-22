import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample/provider/provider_class.dart';

class usermgmt extends StatelessWidget {
  TextEditingController _nameController =TextEditingController();
   usermgmt({super.key});

  @override
  Widget build(BuildContext context) {
    final userprovider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        title: Row(
          children: [
            CircleAvatar(child: Icon(Icons.person),
            backgroundColor: Colors.white,
            radius: 15,),
            SizedBox(width: 10,),
            Text("User Management",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white  ),),
          ],
        ),
      ),
      backgroundColor: Colors.blueGrey[800],
      body: ListView.separated(
        
        itemBuilder: (context, index) {
        
        return ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 0),
          
          title: Text(userprovider.users[index].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black),),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: (){
                  _nameController.text = userprovider.users[index].name;
                  
                  showDialog(context: context, builder:(context) {
            return Dialog(
              backgroundColor: Colors.blueGrey[600],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              child: SizedBox(
                height: 150,
                width: 100,
                
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Update User",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                        
                      ),
                      SizedBox(height: 10,),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: "Enter Name",
                            hintStyle: TextStyle(color: Colors.white60)
                          ),
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.pop(context);
                       userprovider.updateUser(userprovider.users[index].id, _nameController.text);
                      },
                       child: Text("Update",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white60),))
                      
                    ],
                  ),
                ),

              ),
              
            );
          },);
                 
                },
                child: Icon(Icons.edit,color: Colors.white,)),
              SizedBox(width: 10,),
              InkWell(
                onTap: (){
                  userprovider.deleteUser(userprovider.users[index].id);
                },
                child: Icon(Icons.delete_outline,color: Colors.white,))
            ],
          ),
        );
      }
      , separatorBuilder: (context, index) {
        return Divider(
          color: Colors.blueGrey[600],
          thickness: 1,
        );
      }
      ,
       itemCount: userprovider.users.length),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30)
        ),
        backgroundColor: Colors.blueGrey[600],
        onPressed: (){
          showDialog(context: context, builder:(context) {
            return Dialog(
              backgroundColor: Colors.blueGrey[600],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              child: SizedBox(
                height: 150,
                width: 100,
                
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Add User",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.white),),
                        
                      ),
                      SizedBox(height: 10,),
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            hintText: "Enter Name",labelStyle: TextStyle(color: Colors.white),
                            hintStyle: TextStyle(color: Colors.white60)
                          ),
                        ),
                      ),
                      TextButton(onPressed: (){
                        Navigator.pop(context);

                        userprovider.addUser(User(id: DateTime.now().toString(), name: _nameController.text));
                      },
                       child: Text("Submit",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.white60),))
                      
                    ],
                  ),
                ),

              ),
              
            );
          },);
      },
      child: Icon(Icons.add,color: Colors.white,
      size: 30,),
      ),

    );
  }
}