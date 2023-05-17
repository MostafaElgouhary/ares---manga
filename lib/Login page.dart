import 'package:flutter/material.dart';
import 'HomeScreen.dart';

import 'firstscreen.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          children: [
            const SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage(
                    'images/avatar.png',
                  ),
                ),
              ),
            ),
            const Text(
              'Ares Manga',
              style: TextStyle(
                fontFamily: 'pacifico',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: SizedBox(
                  width: 370,
                  height: 50,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const firstScreen(),
                          ));

                    },
                    elevation:20 ,
                    color: Colors.white10,
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    // elevation: 20,

                    // color: Colors.white10,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 370,
              height: 50,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                elevation: 20,
                color: Colors.white10,
                child: const Text(
                  'visit as a guest',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
