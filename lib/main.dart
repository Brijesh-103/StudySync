import 'package:flutter/material.dart';
import 'package:studysync/Screens/splashscreeen.dart';

void main() {
  runApp(StudySync());
}

class StudySync extends StatelessWidget {
  const StudySync({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SecureStudy",
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: SplashScreen(),
    );
  }
}
