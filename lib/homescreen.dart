import 'package:flutter/material.dart';
import 'package:untitled1/product_model.dart';

import 'category1.dart';
import 'lates addition.dart';
import 'firstscreen.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white10,

      appBar: AppBar(

        backgroundColor: Colors.deepPurple,

        title: Text('Ares Manga'),
        automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white10,
        child: ListView(children:[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black45
            ),
              child:Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,

              ),
              Column(
                children: [
                  Builder(
                    builder: (context) {
                      return Align(
                        alignment: Alignment.center,
                        child: Expanded(child: Image.asset('images/logo.png')),
                      );
                    }
                  ),
                ],
              ),


            ],
          ) ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [

                MaterialButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>Latest(),)
                  );
                },

                  child: Container(
                    color: Colors.white24,
                    width: 400,
                    height: 40,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('The Latest additions',

                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,

                        ),),

                    ),

                  ),
                ),
              ],
            ),

          ),  Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 40),
                    child: MaterialButton(onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context)=>category1(),)
                      );
                    },

                      child: Container(
                        color: Colors.white24,
                        width: 400,
                        height: 40,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text('The Best',

                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,

                            ),),

                        ),

                      ),
                    ),
                  ),
                ],
              ),

          Column(
            children: [

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 40),
                child: MaterialButton(onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>firstScreen(),)
                  );
                },

                  child: Container(
                    color: Colors.white24,
                    width: 400,
                    height: 40,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('Logout',

                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,

                        ),),

                    ),

                  ),
                ),
              ),
            ],
          ),


        ],)
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 5,
            crossAxisSpacing: 15,
          ),
          

          itemBuilder: (context, index) {

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  child: MaterialButton(onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context)=>category1(),)
                    );
                    
                  },
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          
                          Text('show All',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                     
                          
                          InkWell(
                            onTap: (){

                            },
                            child: Icon(
                              Icons.chevron_right_outlined,
                            ),
                            
                          ),
                          

                        ],
                      )),
                ),
                    InkWell(
                      child: Image.asset(productList[index].image!),
                      onTap: () {
                        setState(() {


                        });
                      },
                    ),

              ],
            );
          },
        ),
      ),
      ),
    );
  }
}
