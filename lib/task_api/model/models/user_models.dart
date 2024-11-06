class UserModels {
  String? fname;
  String? lname;
  String? email;
  String? image;

  UserModels({this.fname,this.email,this.image,this.lname});

  static UserModels fromJson(Map<String,dynamic>json){
         return UserModels(
         fname: json['firstName'],
         lname: json['lastName'],
         email: json['email'],
         image: json['image']
         );
  }
  Map<String,dynamic> toJson(){
    return{
      'firstName':fname,
      'lastName':lname,
      'email':email,
      'image':image

    };
  }
}