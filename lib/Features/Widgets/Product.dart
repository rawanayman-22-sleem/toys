import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';
import 'package:toy_shop/Features/Widgets/allToys.dart';


class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wihte,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            children: [
              Stack(
                children: [ GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(30),color: red),
                    child: InkWell(
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AllTpyes()));
                      },
                        child: Icon(Icons.arrow_back_outlined,color: wihte,)),
                  ),
                ),

                  Center(child: Image.asset("assets/images/car transformas.jpg" , height: 450,width: 320, ))
                  ],
              ),
              // Stack(
              //   children: [
              //     Padding(padding: EdgeInsets.only(left: 20),
              //       child: Icon(Icons.favorite,size: 40,),)
              //   ],
              // ),

              Container(
                padding: EdgeInsets.only(top: 20,right: 20),
                decoration: BoxDecoration(
                  color: wihte,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20) )
                ),
                width: MediaQuery.of(context).size.width,
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Transformer Car ", style: AppWidget.semiboldFeildStyle(),),
                          Text("\$50",
                              style: TextStyle(color: orangedark , fontSize: 20, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Text("Details", style: TextStyle(
                          color: grayhint,
                          fontSize: 28),),
                      ),
                      SizedBox(height: 10,),

                      Column(
                        children: [
                          Row(
                            children: [
                              Text("The product is very good."
                               "\n Product Overview:"
                                 "\n -Type: Remote-controlled transforming"
                                  "\n  car and robot "
                                  "\n- Features: "
                                  "-\n  Transformation: This toy can "
                                  "\n transform from a sleek"
                                  "\n    sports car into a standing "
                                  "\n robot with the push"
                                  "\n   of a button, offering two modes of play."
                                  "\n-Remote Control: Comes with a dual-stick "
                                  "\n  remote controller for easy operation."
                                  "\n It has directional"
                                  " \n   controls for driving the car and buttons"
                                  "\n  to initiate the "
                                  "\n   transformation process."
                                 " \n- Design:"
                                 " \n- The car has a futuristic sports"
                                  "\n  car design with "
                                  "\n  aerodynamic curves and stylish "
                                  "\n detailing, featuring a"
                                  " \n  combination of blue and black color schemes."
                                  "\n- When transformed into a robot, it"
                                  "\n  stands tall with"
                                  "\n   mechanical arms and a humanoid upper body"
                                  "\n   revealing detailed robotic features on the chest"
                                  "\n     and head."
                                 "\n- Lights and Sound: It likely has built-in lights "
                                  "\n  and sounds for a more engaging experience"
                                  "\n while transforming or moving."
                                 "\n- Battery-operated*: The toy comes with "
                                 "\n  rechargeable batteries (as seen in the image) "
                                 "\n  for both the car and the controller. "
                                 "\n- There is also a USB charger included."
                              ),
                            ],
                          ),
                        ],
                      ),


                        SizedBox(height: 40,),

                       Container(
                         padding: EdgeInsets.symmetric(vertical: 20),
                         decoration: BoxDecoration(
                           color: yellow
                         ),
                         width: MediaQuery.of(context).size.width,
                         child: Center(
                           child: Text("Buy Now " ,style: TextStyle(
                             color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20
                           ),),
                         ),
                       )
                      //1:32:20
                    ],
                  ),
              )
        ],
          ),
        ),
      )
    );
  }
}
