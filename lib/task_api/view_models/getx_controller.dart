import 'package:get/get.dart';
import 'package:sample/getx/get_x.dart';
import 'package:sample/task_api/model/models/user_models.dart';
import 'package:sample/task_api/model/services/api_service.dart';

class PersonController extends GetxController{

  var datalist = <UserModels>[].obs;
  var loading = true.obs;

  getData() async{
    loading.value = true;

    var datas =await userServices().getmethod();

    try{
      if (datas!= null){
        datalist.value= datas;

        loading.value=false;
      }
    }catch(e){
      Get.snackbar("title", "$e");

      loading.value = false;
    }

  }

  @override
  void onInit(){
    getData();
    super.onInit();
  }
}