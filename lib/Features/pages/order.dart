import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/pages/Home.dart';
import 'package:toy_shop/Features/Widgets/Product.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
   Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: greyColor,
        appBar: AppBar(
        backgroundColor: greyColor,
        automaticallyImplyLeading: false, //it remove appbar back button
        elevation: 0,
        actions: [
        const SizedBox(width: 15,),
         //  InkWell(
        //   onTap: () {
         //   Navigator.pop(context);
        //   },
        //   child: InkWell(
           //        onTap: (){
           //   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
           //   },
            // //  child: Icon(Icons.arrow_back,color: Colors.black,))),
            Spacer(),
           const Text("Your Orders", style: TextStyle(
          color: greenprimary,
           fontSize: 30,
           fontWeight: FontWeight.bold
         ),),
           Spacer()
          ],
          ),
           body: Container(
             margin: EdgeInsets.only(left: 10,right: 10),
             child: Material(
               elevation: 3,  //make shadow under Container
               borderRadius: BorderRadius.circular(10),
               child: Container(
                 child: Column(
                   children: [
                     InkWell(
                       onTap: (){
                         Navigator.push(
                           context,
                           CupertinoPageRoute(builder: (context) => const ProductDetail( )),
                         );
                       },
                       child: Container(
                         padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                           color: Colors.grey,
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child:  Row(
                           children: [
                             Image.asset("assets/images/car transformas.jpg", height: 150,width: 150,fit: BoxFit.cover,),
                            SizedBox(width: 10,),
                             Column(
                               children: [
                                 Text("Transformer Car",
                                     style: AppWidget.semiboldFeildStyle()
                                    ),
                                 Text("\$" + "50",style: AppWidget.boldTextFeildStyle(),)
                               ],
                             ),


                           ],
                         ),

                       ),
                     ),
                     SizedBox(height: 20,),
                     InkWell(
                       onTap: (){
                         Navigator.push(
                             context,
                             CupertinoPageRoute(builder: (context) => const ProductDetail( )),
                         );
                       },
                       child: Container(
                         padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
                         width: MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                             color: Colors.grey,
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child:  Row(
                           children: [
                             Image.asset("assets/images/plush.jpg", height: 150,width: 150,fit: BoxFit.cover,),
                             SizedBox(width: 10,),
                             Column(
                               children: [
                                 Text("Rabbit Toy",
                                     style: AppWidget.semiboldFeildStyle()
                                 ),
                                 Text("\$" + "20",style: AppWidget.boldTextFeildStyle(),)
                               ],
                             ),


                           ],
                         ),

                       ),
                     )
                   ],
                 ),
               ),
             ),
      ),
);

  }
}
