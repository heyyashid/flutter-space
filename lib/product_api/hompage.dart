import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:sample/product_api/datacontroller.dart';

class Product_ui extends StatelessWidget {
   Product_ui({super.key});
  final controller = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Api Product"),
      backgroundColor: const Color.fromARGB(255, 224, 224, 226),),
      body: Container(alignment: Alignment.center,
      child: Obx((){
      
        return controller.loading.isTrue?Center(child: CircularProgressIndicator(),): 
        ListView.separated(itemBuilder: (c,i){
          final data =controller.DataList[i];
          return Card( color: Colors.grey[400],
           borderOnForeground: true,
           shadowColor: Colors.black,
           elevation: 10.0,surfaceTintColor: Colors.green[100], 
           child: ListTile(
            subtitle: Text('${data.model!.rate.toString()}'??''),
            leading: CircleAvatar(backgroundImage: NetworkImage(data.image.toString()),),
            title: Text(data.tittle.toString() ?? "")));
        }, 
        separatorBuilder: (c,i){
          return SizedBox();
        },
         itemCount: controller.DataList.length??0,);
      }),),
    );
  }
}