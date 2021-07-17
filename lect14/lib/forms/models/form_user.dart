import 'package:flutter/material.dart';
import 'package:responsive/forms/ui/home/ui/customer_page.dart';
import 'package:responsive/forms/ui/home/ui/mershant_page.dart';
import 'package:responsive/forms/ui/register/main_register_screen.dart';

class FormUser {
  UserType userType;
  String email;
  String password;
  String shopName;
  String bio;
  String category;
  String shopAddress;

  FormUser(this.category);
  FormUser.customer(
      {@required this.email,
      @required this.password,
      this.userType = UserType.customer});
  FormUser.mershant(
      {@required this.email,
      @required this.password,
      @required this.shopName,
      @required this.shopAddress,
      @required this.bio,
      @required this.category,
      this.userType = UserType.mershant});
  FormUser.fromUserType(UserType userType, BuildContext context) {
    if (userType == UserType.mershant) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return MershantPage();
      }));
    } else {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return CustomerPage();
      }));
    }
  }
   factory FormUser.map(Map map){
    if(map['isMarshant']){
     return FormUser.mershant(
      email:map["email"], 
      password: map["password"],
      shopName: map["shopName"], 
      shopAddress:map ["shopAddress"],
      bio: map["bio"],
      category: map["category"]);
    }else{
      return FormUser.customer(
        email:map["email"], 
        password: map["password"],
      );
    }
    
  }

  Map <String, dynamic> toMap(){
    Map map = this.userType == UserType.customer?
    {
      'isMarshant': false,
      'email': this.email,
      'password': this.password,
    }
    :
    {
      'isMarshant': true,
      'email': this.email,
      'password': this.password,
      'shopName': this.shopName,
      'shopAddress': this.shopAddress,
      'bio': this.bio,
      'catogory': this.category
    };
    return map ;
  }


}
