import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/Widgets/Product.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';
import 'package:toy_shop/Features/Widgets/allToys.dart';

class SeeallproductScreen extends StatefulWidget {
  const SeeallproductScreen({super.key});

  @override
  State<SeeallproductScreen> createState() => _SeeallproductScreenState();
}

class _SeeallproductScreenState extends State<SeeallproductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorw,
      appBar: AppBar(
        backgroundColor: backgroundColorw,
        automaticallyImplyLeading: false, //it remove appbar back button
        elevation: 0,
        actions: [
         const SizedBox(width: 15,),
          InkWell(
            onTap: () {
                    Navigator.pop(context);
                  },
              child: Icon(Icons.arrow_back,color: Colors.black,)),
          Spacer(),
          const Text("All Sectiones", style: TextStyle(
            color: Colors.purpleAccent,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
          Spacer(),

        ],
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 15, right: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AllTpyes()),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10 ),
                        child:Padding(
                          padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                          child:  Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Image.asset("assets/images/Transformers-Toys-.webp",
                                  height: 100, width: 100, fit: BoxFit.cover,),
                                SizedBox(height: 30),
                                Text("Transform\n car", style: AppWidget.semiboldFeildStyle(),),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AllTpyes()),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                        child:  Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Image.asset("assets/images/dinosaur.jpeg",
                                height: 100, width: 100, fit: BoxFit.cover,),
                              SizedBox(height: 30),
                              Text("Dinosaurs", style: AppWidget.semiboldFeildStyle(),),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AllTpyes()),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                          child:  Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Image.asset("assets/images/car.jpg",
                                  height: 100, width: 100, fit: BoxFit.cover,),
                                SizedBox(height: 30),
                                Text("Cars", style: AppWidget.semiboldFeildStyle(),),

                                // Row(
                                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //   children: [
                                //     Text("\$20", style:
                                //     TextStyle(
                                //         color: red, fontSize: 20, fontWeight: FontWeight.w500),),
                                //     SizedBox(width: 30,),
                                //
                                //     Container(
                                //       //padding: EdgeInsets.all(3),
                                //         decoration: BoxDecoration(color: green , shape: BoxShape.circle),
                                //         child:
                                //         Icon(Icons.add, color: wihte,)),
                                //   ],
                                // )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AllTpyes()),);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                        child:Padding(
                          padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                          child:  Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Image.asset("assets/images/Robote.jpg",
                                  height: 100, width: 100, fit: BoxFit.cover,),
                                SizedBox(height: 30),
                                Text("Robots", style: AppWidget.semiboldFeildStyle(),),

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AllTpyes()),);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10 ),
                    child:Padding(
                      padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                      child:  Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Image.asset("assets/images/Lamborghini-.webp",
                              height: 100, width: 100, fit: BoxFit.cover,),
                            SizedBox(height: 30),
                            Text("Electric\n Car", style: AppWidget.semiboldFeildStyle(),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AllTpyes()),);

                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                    child:  Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Image.asset("assets/images/doll-cotone.webp",
                            height: 100, width: 100, fit: BoxFit.cover,),
                          SizedBox(height: 30),
                          Text("Doll", style: AppWidget.semiboldFeildStyle(),),

                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AllTpyes()),);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                      child:  Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Image.asset("assets/images/images (4).jpeg",
                              height: 100, width: 100, fit: BoxFit.cover,),
                            SizedBox(height: 30),
                            Text("Plastic bride", style: AppWidget.semiboldFeildStyle(),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
     ]
      ),
    ),
    );
  }
}
