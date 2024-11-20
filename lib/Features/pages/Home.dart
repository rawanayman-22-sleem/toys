import 'package:flutter/material.dart';
import 'package:toy_shop/Features/Widgets/changeimageprof.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/Widgets/Product.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';
import 'package:toy_shop/Features/Widgets/allToys.dart';
import 'package:toy_shop/Features/Widgets/seeallproduct.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories= [
    "assets/images/images (4).jpeg",
    "assets/images/doll-cotone.webp",
    "assets/images/Lamborghini-.webp",
    "assets/images/Robote.jpg",
    "assets/images/car.jpg",
    "assets/images/dinosaur.jpeg",
    "assets/images/Transformers-Toys-.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 30 , left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween ,
              children:[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Hi, Rawan",
                    style:AppWidget.boldTextFeildStyle()
                    ),
                    Text("I wish you be good today",style: AppWidget.LightTextFeildStyle(),)
                  ], ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap:  () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Changeimageprof()),);
                    },
                      child: Image.asset("assets/images/girl.jpg", height: 60 , width: 60,fit: BoxFit.cover,))
              ),
              ],),
              SizedBox(height: 20,),
        Container(
                decoration: BoxDecoration(color: yellow, borderRadius: BorderRadius.circular(20) ),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(

                    prefixIcon: Icon(Icons.search, color: Colors.black,),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(width: 1, color: Colors.transparent),
                    ) ,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    hintText: "Search Toy",
                    hintStyle: TextStyle(color: grayhint),
                  ),
                ),
                ),

            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sections",
                    style: AppWidget.semiboldFeildStyle()),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeallproductScreen()));
                  },
                  child: Text("See all",
                      style: TextStyle(color: red, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SeeallproductScreen()));

                  },
                  child: Container(
                      height: 130,
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(right: 20),
                      decoration: BoxDecoration(color: pinklite, borderRadius: BorderRadius.circular(10)),
                       child: Center(

                             child: Text("All", style: TextStyle(color: wihte),)),
                       ),
                     ),
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllTpyes()));
                },
                child: Container(
                 // margin: EdgeInsets.only(left: 20),
                  height: 130,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: categories.length,
                    shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                      return Doll_toy(images: categories[index]);
                    } ),
                ),
              ),
            ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("ALL Toys",
                    style: AppWidget.semiboldFeildStyle()),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AllTpyes()));
                  },
                  child: Text("See all",
                      style: TextStyle(color: red, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height:205 ,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Image.asset("assets/images/baze&frindes.jpeg",
                            height: 100, width: 100, fit: BoxFit.cover,),
                        SizedBox(height: 30),
                        Text("Buzz", style: AppWidget.semiboldFeildStyle(),),

                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  SizedBox(width: 30,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail()));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Image.asset("assets/images/car transformas.jpg",
                            height: 100, width: 100, fit: BoxFit.cover,),
                          SizedBox(height: 30),
                          Text("Transformers Car", style: AppWidget.semiboldFeildStyle(),),

                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  SizedBox(width: 30,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Image.asset("assets/images/images (12).jpeg",
                          height: 100, width: 100, fit: BoxFit.cover,),
                        SizedBox(height: 30),
                        Text("Woody", style: AppWidget.semiboldFeildStyle(),),

                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  SizedBox(width: 30,),
                  Container(
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
                  SizedBox(width: 30,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Image.asset("assets/images/plush6webp.webp",
                          height: 100, width: 100, fit: BoxFit.cover,),
                        SizedBox(height: 30),
                        Text("Plush", style: AppWidget.semiboldFeildStyle(),),

                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$60", style:
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
                  SizedBox(width: 30,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(color: wihte, borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Image.asset("assets/images/car-toy-go.jpg",
                          height: 100, width: 100, fit: BoxFit.cover,),
                        SizedBox(height: 30),
                        Text("Car Baby", style: AppWidget.semiboldFeildStyle(),),

                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("\$100", style:
                            TextStyle(
                                color: red, fontSize: 20, fontWeight: FontWeight.w500),),
                            SizedBox(width: 30,),

                            Container(
                              //padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(color: green , shape: BoxShape.circle),
                                child:
                                Icon(Icons.add, color: Colors.white,)),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
             ],

        ),
      ),
    );
  }
}
class Doll_toy extends StatelessWidget {
  String images;
  Doll_toy({required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white
          ),
      height: 90,
      width: 90,
      child: Column(
        children: [
         Image.asset
           (images, height: 50,
           width: 50,
           fit:BoxFit.cover,),
          Icon(Icons.double_arrow_outlined , color: skyblue,)
        ],
      ),
    );
  }
}


