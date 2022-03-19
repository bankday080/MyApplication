import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/constant.dart';
import 'package:flutter_application_1/pages/welcome.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(

        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,




      
      ),
      home: AnimatedSplashScreen(
        splash: Image.asset('image/icon.png'),
        // ignore: prefer_const_constructors
        nextScreen: Welcome(),
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}
