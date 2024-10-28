
class DataModel{
  int ? id;
  String? tittle;
  double? price;
  String ? image;
  String ? description;
  Ratingmodel? model;


  DataModel({this.id,this.price,this.tittle,this.image,this.description,this.model});


  static DataModel fromJson(Map<String,dynamic> json){
    return DataModel(
      id: json["id"],
      tittle: json["title"],
      price: json["price"],
      image: json["image"],
      description: json["description"],
      model: Ratingmodel.fromJson(json["rating"]),
          );
  }
  Map<String,dynamic> toJson(){
    return{
      "id" :id,
      "price":price,
      "title":tittle,
      "image":image,
      "description":description,
      "rating":model,
    };
  }
}


class Ratingmodel{
  double? rate;
  int? count;

  Ratingmodel({this.rate,this.count});

  static Ratingmodel fromJson (Map<String,dynamic>json){
    return Ratingmodel(
      rate: json["rate"],
      count: json["count"]
    );
  }
  Map<String,dynamic> toJson(){
    return{
      "rate":rate,
      "count":count
    };
  }


}