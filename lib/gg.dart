import 'package:flutter/material.dart';
import 'package:untitled1/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Auth.dart';
main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(

      ),
    );
  }
}
