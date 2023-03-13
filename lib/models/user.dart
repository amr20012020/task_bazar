import 'dart:ui';

class User{
  String? imageUser;
  String? textUser;
  Color? backGround;
  User({this.imageUser,this.textUser,this.backGround});


  User.fromJson(Map<String, dynamic> json){
    imageUser = json['imageUser'];
    textUser = json['textUser'];
    backGround = json['backGround'];
  }


  Map<String, dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();

    data['imageUser'] = this.imageUser;
    data['textUser'] = this.textUser;
    data['backGround'] = this.backGround;
    return data;
  }

}