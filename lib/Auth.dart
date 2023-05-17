
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'firstscreen.dart';
class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder:((context,snapshots){
      if(snapshots.hasData){
        return HomeScreen();

      }else
        {
          return firstScreen();
        }
    })

    ),
    );
  }
}
