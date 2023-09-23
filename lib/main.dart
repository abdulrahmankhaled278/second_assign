import 'package:flutter/material.dart';
import 'package:second_assign/home_screen.dart';
import 'package:second_assign/course_details.dart';
import 'package:second_assign/splash_screen.dart';
void main()
{
  runApp(MaterialApp(home: HomeScreen(),routes: {'home' :(context) => HomeScreen(),'splashscreen' :(context) => SplashScreen()
  },initialRoute: 'splashscreen',));
}