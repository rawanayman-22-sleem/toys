import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/pages/BottomNav.dart';
import 'package:toy_shop/Features/pages/Home.dart';
import 'package:toy_shop/Features/Widgets/Product.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';
import 'package:toy_shop/Features/Widgets/seeallproduct.dart';

class AllTpyes extends StatelessWidget {
  const AllTpyes({super.key});

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
              child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
                  },
                  child: Icon(Icons.arrow_back,color: Colors.black,))),
          Spacer(),
          const Text("All Toys", style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
          Spacer()
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()),);
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
                                Image.asset("assets/images/guns0.jpg",
                                  height: 100, width: 100, fit: BoxFit.cover,),
                                SizedBox(height: 30),
                                Text("Buzz", style: AppWidget.semiboldFeildStyle(),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$20", style:
                                    TextStyle(
                                        color: red, fontSize: 20, fontWeight: FontWeight.w500),),
                                    SizedBox(width: 30,),

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
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()),);

                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10,right:20,left:10,bottom: 10),
                        child:  Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            children: [
                              Image.asset("assets/images/car transformas.jpg",
                                height: 100, width: 100, fit: BoxFit.cover,),
                              SizedBox(height: 30),
                              Text("Buzz", style: AppWidget.semiboldFeildStyle(),),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$20", style:
                                  TextStyle(
                                      color: red, fontSize: 20, fontWeight: FontWeight.w500),),
                                  SizedBox(width: 30,),

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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()),);
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
                                Image.asset("assets/images/cartransformans3.jpg",
                                  height: 100, width: 100, fit: BoxFit.cover,),
                                SizedBox(height: 30),
                                Text("Buzz", style: AppWidget.semiboldFeildStyle(),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$20", style:
                                    TextStyle(
                                        color: red, fontSize: 20, fontWeight: FontWeight.w500),),
                                    SizedBox(width: 30,),

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
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetail()),);
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
                                Image.asset("assets/images/carbuild.jpg",
                                  height: 100, width: 100, fit: BoxFit.cover,),
                                SizedBox(height: 30),
                                Text("Buzz", style: AppWidget.semiboldFeildStyle(),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$20", style:
                                    TextStyle(
                                        color: red, fontSize: 20, fontWeight: FontWeight.w500),),
                                    SizedBox(width: 30,),

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
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            // InkWell(
            //   onTap: (){
            //   //  Navigator.push(context, MaterialPageRoute(builder: (context) => CasesScreenDoc()),);
            //
            //   },
            //   child: Padding(
            //     padding: const EdgeInsets.only(right:20,top: 10,left: 10),
            //     child: Card(
            //       color: Colors.orange,
            //       elevation: 0,
            //       shape: RoundedRectangleBorder(
            //         side: BorderSide(
            //           color: Colors.orangeAccent,
            //         ),
            //         borderRadius: const BorderRadius.all(Radius.circular(12)),
            //       ),
            //       child: SizedBox(
            //         width: 370,
            //         height: 115,
            //         child: Column(
            //           mainAxisAlignment: MainAxisAlignment.center,
            //           crossAxisAlignment: CrossAxisAlignment.center,
            //           children: [
            //             Row(
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 50),
            //                   child: Text("Cases",style: TextStyle(
            //                     fontSize: 14,color: Colors.white,
            //                   ),),
            //                 ),
            //
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 170),
            //                   child: Container(
            //                     width: 66,
            //                     height: 66,
            //                     child: Image(
            //                       height: 42,
            //                       width:20 ,
            //                       image: AssetImage("asset/image/s5.png"),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

          ],
        ),
      ),
    );
  }
}
