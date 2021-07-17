import 'dart:convert';

import 'package:responsive/forms/globals.dart';
import 'package:responsive/forms/models/form_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpHelper{
  SpHelper._();
  static SpHelper spHelper= SpHelper._();
  SharedPreferences sharedPreferences;
  initSharedPreferences()async {
    sharedPreferences= await SharedPreferences.getInstance();
  }
  saveUserName(String name){
    sharedPreferences.setString('name', name);
  }
  String getUserName(){
    return sharedPreferences.getString('name');
  }
  saveUser( FormUser formUser){
    sharedPreferences.setString(
      'formUser', 
    //formUser.toMap().toString() 
     json.encode({...formUser.toMap()})
    );
    Globals.globals.formUser= formUser;
  }
  FormUser getUser(){
    try {
      String user = sharedPreferences.getString('formUser');
      assert(user != null);
      Map userMap= json.decode(user);
      FormUser formUser = FormUser.map(userMap) ;
      Globals.globals.formUser= formUser;
      return formUser;
    } on Exception catch (e) {
      return null;
    }
  }

  signOut(){
    sharedPreferences.remove('formUser');
  }
}