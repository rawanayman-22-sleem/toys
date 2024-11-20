import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';

class CategoryProduct extends StatefulWidget {
  const CategoryProduct({super.key});

  @override
  State<CategoryProduct> createState() => _CategoryProductState();
}

class _CategoryProductState extends State<CategoryProduct> {

  // Stream? CategoryStream;
  //
  // Widget altProduct() {
  //   return StreamBuilder(stream: CategoryStream, builder: (context, AsyncSnapshot snapshot){
  //     return snapshot.hasData? GridView.builder(
  //       padding: EdgeInsets.zero,
  //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: ), itemBuilder: itemBuilder)
  //   });
  // }
  //
  //


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowlite,
      appBar: AppBar(
        backgroundColor: yellowlite,

          // systemOverlayStyle: SystemUiOverlayStyle(
          //   statusBarColor: wihte, // <-- SEE HERE
            //statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
            //  statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
          elevation: 0,
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,color: red, size: 45,)),

          title: Padding(
            padding: const EdgeInsets.only(top: 10 , left: 10, right: 10),
            child:     Text(
                "Dolls", style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold
          ),

    ),
          ),

      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
             child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10, left: 10),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image.asset("assets/images/toy1.jpeg",
                        height: 100, width: 100, fit: BoxFit.cover,),
                      SizedBox(height: 30),
                      Text("Jessie Toy", style: AppWidget.semiboldFeildStyle(),),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$20", style:
                          TextStyle(
                              color: red, fontSize: 20, fontWeight: FontWeight.w500),),
                          SizedBox(width: 80,),

                          Container(
                            //padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(color: green , shape: BoxShape.circle),
                              child:
                              Icon(Icons.add, color: wihte,)),
                        ],
                      )
                    ],
                    ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 20),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    children: [
                      Image.asset("assets/images/toy1.jpeg",
                        height: 100, width: 100, fit: BoxFit.cover,),
                      SizedBox(height: 30),
                      Text("Jessie Toy", style: AppWidget.semiboldFeildStyle(),),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("\$20", style:
                          TextStyle(
                              color: red, fontSize: 20, fontWeight: FontWeight.w500),),
                          SizedBox(width: 80,),
                          Container(
                            //padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(color: green , shape: BoxShape.circle),
                              child:
                              Icon(Icons.add, color: wihte,)),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

      ),

    );
  }
}
