import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:studysync/Screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Callback function
    Timer(Duration(seconds: 5), (){ //7
      Navigator.pushReplacement(context, //8
          MaterialPageRoute(builder: (context)=> LoginPage(),)); //9
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Expanded(
        child: Container(
          color: Color(0xFFB3C9C9),
          child: Center(
            child:LottieBuilder.asset('assets/animation/book1.json'),
          ),
        ),
      ),
    );
  }
}
