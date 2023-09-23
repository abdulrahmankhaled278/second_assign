import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:second_assign/home_screen.dart'; // Import your home screen widget

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  HomeScreen()),);},);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash_screen.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}