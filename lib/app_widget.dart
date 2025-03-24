import 'package:flutter/material.dart';
import 'package:project_nassau/app_controller.dart';
import 'package:project_nassau/home_page.dart';
import 'Login_page.dart';

class AppWidget extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
      return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red,
      brightness: AppController.instance.isDArtTheme ? Brightness.dark : 
      Brightness.light, // aqui dizemos se ele for false ele é light se não ele é dark
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      },
    );
    });
  }
    
}