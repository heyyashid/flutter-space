
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sample/task_api/model/models/user_models.dart';

class userServices{
  Future<List<UserModels>?>getmethod()async{
    var response =await http.get(Uri.parse("https://dummyjson.com/users"));
    if (response.statusCode ==200){
      var body =await json.decode(response.body);

    List<dynamic> user = body["users"];

      print(body);

      List<UserModels> users =[];

      for (var item in user){
        users.add(UserModels.fromJson(item));
      }
      return users;
    }else{
      return null;
    }
  }
}