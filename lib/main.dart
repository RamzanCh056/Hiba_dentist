
// @dart=2.9// 
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hiba_dentist/NavigationBar.dart';
import 'package:hiba_dentist/language.dart/localstring.dart';
import 'package:hiba_dentist/login_user.dart';
import 'package:hiba_dentist/navigation_bar.dart';
import 'package:hiba_dentist/splash_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        translations: LocaleString(),
      locale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
         fontFamily: 'jost',
       
        primarySwatch: Colors.blue,
      ),
      home:   
      SplashScreen (),
    );
  }
}

