import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:untitled1/products.dart';


class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            backgroundColor: Colors.black54,
            leading: IconButton(
              padding: EdgeInsets.only(right: 0),
              icon: Icon(
                Icons.arrow_back_outlined,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Return'),
          ),
         body: ListView.builder(

          itemCount: 10,
          itemBuilder: (context, index) =>
              DetailsBody(
                itemIndex: index,
                productModel3 : productList3[index],
              )),),


    );
  }
}

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key, required this.itemIndex, required this.productModel3}) : super(key: key);

  final int itemIndex;
  final ProductModel3 productModel3;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(children: [

      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
            color: Colors.black54,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )),

        child: Column(
          children: [

            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: size.width * .8,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: size.width * .7,
                      width: 240,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          )),

                    ),
                  ),
                  Center(
                    child: Image.asset(productModel3.image!
                      ,
                      height: 250,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    productModel3.name!,
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),


      Container(
        alignment: AlignmentDirectional.topStart,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Story',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'Pacifico',
                color: Colors.white),
          ),
        ),
      ),
      Container(
        alignment: AlignmentDirectional.topStart,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
    productModel3.story!,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,
                fontFamily: 'Pacifico',
                color: Colors.white),
          ),
        ),
      ),
    ]);
  }
}
