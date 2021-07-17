import 'package:flutter/material.dart';
import 'package:responsive/forms/form_ui.dart';
import 'package:responsive/forms/helpers/sharedpreferences_helper.dart';
import 'package:responsive/forms/ui/home/ui/home_page.dart';
import 'package:responsive/forms/ui/register/main_register_screen.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      if(SpHelper.spHelper.getUser()!=null){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context){
          return HomePage('');
        })
      );
    }else{
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context){
          return FormUI();
        })
      );
    }
  
    });
  }
}