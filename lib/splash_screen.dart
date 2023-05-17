
import 'package:flutter/material.dart';
import 'package:untitled1/homescreen.dart';

import 'Login page.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return loginScreen();
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset('images/coverpage.png'),
      ),

    );
  }
}
