import 'package:flutter/material.dart';
import 'package:hiba_dentist/NavigationBar.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         fontFamily: 'jost',
       
        primarySwatch: Colors.blue,
      ),
      home:   
      SplashScreen (),

      //MaterialYou(),
     // MainBottomClass(),
      // LoginUser(),
    );
  }
}

