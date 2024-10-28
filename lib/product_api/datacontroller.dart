

import 'package:get/get.dart';
import 'package:sample/product_api/datamodel.dart';
import 'package:sample/product_api/service.dart';



class DataController extends GetxController{

var DataList = <DataModel>[].obs;

var loading = true.obs;

 getData()async {

loading.value = true;

var datas = await DataSerivices().getmethod();

try{

if(datas!= null){

DataList.value = datas;

loading.value = false;

} 
}catch(e){

Get.snackbar("tittle", "$e");

loading.value = false;
}
}


@override
  void onInit(){
    getData();
    super.onInit();
  }
  }
