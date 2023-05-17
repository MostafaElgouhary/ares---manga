import 'package:flutter/material.dart';
import 'package:untitled1/LatestScreen.dart';
import 'package:untitled1/allproduct.dart';
import 'package:untitled1/product_model.dart';

class Latest extends StatelessWidget {
  const Latest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            title: const Text('Latest Addition'),
            centerTitle: false,
            backgroundColor: Colors.purple[900],
          ),
          backgroundColor: Colors.purple[900],
          body: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){return Details();}));
            },
            child: Center(
              child: Column(children: [
                SizedBox(height: 10),
                Expanded(child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 80),
                      decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50),

                          )
                      ),
                    ),
                    ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) =>
                            Card(
                              itemIndex: index,
                              productModel2: productList2[index],
                            )),


                  ],
                ))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key, required this.itemIndex, required this.productModel2})
      : super(key: key);
  final int itemIndex;
  final ProductModel2 productModel2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 210,

        //child: InkWell(
          //onTap: press,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12,
                    ),
                    ]),
              ),
              Positioned(
                  top: 10,
                  left: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,
                        vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22)
                    ),
                    height: 200,
                    width: 180,
                    child: SizedBox(
                      height: 20,
                      child: Image.asset(productModel2.image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                  width: size.width - 200,
                  height: 160,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(productModel2.name!, style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Pacifico",

                        ),),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
       // ),
      ),
    );
  }
}
