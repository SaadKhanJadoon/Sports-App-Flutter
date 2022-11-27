import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
          splash: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/profile.jpg"),
            radius: 200,
          ),
          duration: 3000,
          centered: true,
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white,
          splashIconSize: 200,
          nextScreen: MyHomePage()),
    );
  }
}
