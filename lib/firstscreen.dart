/*import 'package:firebase_auth/firebase_auth.dart';

import 'package:untitled1/Login%20page.dart';
import 'package:untitled1/second_screen.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  static const String _title = 'Ares Manga';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
    final _emailController= TextEditingController();
    final _passwordController= TextEditingController();
    Future signIn()async{
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(),
          password:_passwordController.text.trim());
    }
  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
}
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('images/avatar..png'),
          ),

          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(0),

              child: const Text(
                'Welcome to Ares Manga',
                style: TextStyle(
                    fontFamily:'Pacifico',
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                '',
                style: TextStyle(fontSize: 15),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold

              ),
              controller: _emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
              obscureText: true,
              controller: _passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',

              ),
            ),
          ),
          const Divider(
            color: Colors.deepPurple,
            thickness: 5,
            indent: 20,
            endIndent: 20,
            height: 20,
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child:  const Text('Forget Password?!',
                style: TextStyle(
                  color: Colors.deepPurple,)),

          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Sign in',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Pacifico')),
     //////////           onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>HomeScreen(),)
                  );
                  print(_emailController.text);
                  print(_passwordController.text);
                },
              )
          ),
          Row(
            children: <Widget>[
              const Text("Don't have account?"),
              TextButton(
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20,
                    color: Colors.deepPurple,),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return SignUpScreen(email: AutofillHints.email, password: _passwordController.text,);
                  }
                  ));
                  //signup screen
                },
              ),
            ],

            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const Divider(
            color: Colors.deepPurple,
            thickness: 5,
            indent: 20,
            endIndent: 20,
            height: 20,
          ),
        ],
      ),);
  }
}*/

//class FirstScreen extends StatefulWidget {
  /*const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/avatar..png'),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontFamily: 'Pacifico'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
                Text("Don't have account?"),
                Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.deepPurple,
                  ),
                )
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
*/
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/second_screen.dart';

class firstScreen extends StatefulWidget {
  const firstScreen({Key? key}) : super(key: key);

  @override
  State<firstScreen> createState() => _firstScreen();
}

class _firstScreen extends State<firstScreen> {
  bool view = true;
  final emailControl = TextEditingController();
  final passControl = TextEditingController();

  Future SignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailControl.text.trim(), password: passControl.text.trim());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailControl.dispose();
    passControl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
       // decoration: const BoxDecoration(
           // gradient: LinearGradient(colors: [Colors.white, Colors.white])
       // ),
        child: SafeArea(
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/avatar..png'),
              ),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(0),
                  child: const Text(
                    'Welcome to Ares Manga',
                    style: TextStyle(
                        fontFamily: 'Pacifico',
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )),
              // const Text(
              //   "Welocme To Ares Mange",
              //   style: TextStyle(
              //       fontFamily:'Pacifico',
              //       color: Colors.deepPurple,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 30),),

              const SizedBox(height: 45),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                child: TextField(
                  controller: emailControl,
                  style: const TextStyle(color: Colors.black),
                  cursorColor: Colors.deepPurple,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    prefixIconColor: Colors.deepPurple,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                child: TextField(
                  controller: passControl,
                  style: const TextStyle(color: Colors.black),
                  cursorColor: Colors.deepPurple,
                  obscureText: view,
                  // keyboardType: widget.typeInput,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            view = !view;
                          });
                        },
                        icon: view
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off)),
                    suffixIconColor: Colors.deepPurple,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    prefixIcon: const Icon(Icons.key),
                    prefixIconColor: Colors.deepPurple,
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(15)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.deepPurple),
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.deepPurple),
                      ))
                ],
              ),
              ElevatedButton(
                onPressed: SignIn,
                child: const Text("Login"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 80,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.deepPurple),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
