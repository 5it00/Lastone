class UserModel {
  String? name;
  String? email;
  String? uId;
  String? image;
  bool? isEmailVerified ;
  bool? isAdmin ;

  UserModel({
     this.name ,
     this.email ,
     this.uId,
     this.image,
    this.isEmailVerified,
    this.isAdmin,
  })  ;

  UserModel.fromJson(Map<String ,dynamic> json)
  {

    name =json['name'] ;
    email =json['email'] ;
    uId =json['uId'] ;
    image =json['image'] ;
    isEmailVerified =json['isEmailVerified'] ;
    isAdmin =json['isAdmin'] ;
  }

  Map<String ,dynamic> toMap(){
return {
  'name':name ,
  'email':email ,
  'uId':uId ,
  'image':image ,
  'isEmailVerified':isEmailVerified ,
  'isAdmin':isAdmin ,
} ;
  }
}