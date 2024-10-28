

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:sample/product_api/datamodel.dart';

class DataSerivices{

Future<List<DataModel>?> getmethod()async{

var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

if (response.statusCode == 200) {

var body = await json.decode(response.body);
print(body);

  List<DataModel> products = [];



      for (var item in body) {
        products.add(DataModel.fromJson(item));
      }

      return products;

// return List<DataModel>.from(body.map((i) => DataModel.fromJson(i)));

}else{

return null;

}
}
}