import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sample/task_api/view_models/getx_controller.dart';

class HomeUser extends StatelessWidget {
   HomeUser({super.key});

  final controller =Get.put(PersonController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 43, 111),
        title: Row(
          children: [
            Icon(Icons.stacked_bar_chart_outlined,color: Colors.white,),
SizedBox(width: 10,),
            Text("userlist",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
           
          ],
          
        ),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.menu,color: Colors.white,),
          )
        ],
        

      ),

    body: Obx(
       () {
        return controller.loading.isTrue ? Center(child: CircularProgressIndicator(),): 
        ListView.separated(itemBuilder: (context, index) {
          return ListTile(
           title: Text(controller.datalist[index].fname.toString()),
           subtitle: Text(controller.datalist[index].email.toString()),
           leading: CircleAvatar(backgroundImage: NetworkImage(controller.datalist[index].image.toString()),),
          );
        },
         separatorBuilder: (context, index) => Divider(),
          itemCount: controller.datalist.length);
      }
    ),

      


    );
  }
}