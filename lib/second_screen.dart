/*
import 'package:flutter/material.dart';
import 'package:untitled1/firstscreen.dart';
class SecondScreen extends StatelessWidget {
  String? email;
  String? password;
  static const String _title = 'Ares Manga';

  SecondScreen({
    required this.email,
    required this.password,

  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Ares Manga',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'Pacifico'),

              )),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                '',
                style: TextStyle(fontSize: 30),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
              ),
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UserName',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(style: TextStyle(

                fontWeight: FontWeight.bold,
                fontSize: 20),
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          const Divider(
            color: Colors.deepPurple,
            thickness: 5,
            indent: 25,
            endIndent: 25,
            height: 35,
          ),

          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Sign Up',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>FirstScreen(),)
                  );
                  print(nameController.text);
                  print(passwordController.text);
                },
              )
          ),


        ],
      ),);
  }
}*/

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool view=true;
  final emailControl=TextEditingController();
  final passControl=TextEditingController();
  final confirmpassControl=TextEditingController();
  Future SignUp() async {
    if(passwordConfirm()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailControl.text.trim(), password: passControl.text.trim());
      Navigator.of(context).pushNamed('/');
    }
  }
  bool passwordConfirm(){
    if(passControl.text.trim()==confirmpassControl.text.trim()){
      return true;
    }
    else{return false;}
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailControl.dispose();
    passControl.dispose();
    confirmpassControl.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,

            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 45, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 45),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                    child: TextField(
                      style: const TextStyle(color: Colors.deepPurple),
                      cursorColor: Colors.deepPurple,
                      controller: emailControl,
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
                  ),const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                    child: TextField(
                      controller: passControl,
                      style: const TextStyle(color: Colors.deepPurple),
                      cursorColor: Colors.deepPurple,
                      obscureText: view,
                      // keyboardType: widget.typeInput,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                view=!view;
                              });
                            },
                            icon:view
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
                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                    child: TextField(
                      style: const TextStyle(color: Colors.deepPurple),
                      cursorColor: Colors.deepPurple,
                      obscureText: view,
                      controller: confirmpassControl,
                      // keyboardType: widget.typeInput,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                view=!view;
                              });
                            },
                            icon:view
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off)),

                        suffixIconColor: Colors.deepPurple,
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Confirm Your Password',
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
                  const SizedBox(height: 20,),
                  ElevatedButton(
                    onPressed: SignUp,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 80,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: const Text("Sign Up"),
                  )
                  ,Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [const Text("Already have an accout?"),TextButton(onPressed: (){
                      Navigator.of(context).pop();
                    }, child: const Text("Login",
                    style: TextStyle(color: Colors.deepPurple),))],)
                ],
              ),
            ),
            ),
       );
    }
}