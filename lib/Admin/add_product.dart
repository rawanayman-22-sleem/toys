import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Core/size_config.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
 // final ImagePicker _picker= ImagePicker();
  File? selectedImage;
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController pricecontroller = new TextEditingController();
  TextEditingController detaliescontroller = new TextEditingController();

//   Future getImage() async {
//     var image= await _picker.pickImage(source: ImageSource.gallery);
//     selectedImage= File(image!.path);
//     setState(() {
//
//     });
//   }
//
//   uploadItem(){
//     if (selectedImage!=null&& namecontroller.text!= "" ) {
//       String addId= randomAlphaNumeric(10);
//       Refrence
//     }
//   }
// //3:32:14
  String? value;
  final List<String> categoryitem = [
  'Robot game',
  'Car game',
'  Transforming car game',
 ' Stuffed doll game',
 ' Plastic doll game',
 ' Dinosaur game',
  'Toy for young children'
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: GestureDetector(
          //     child: Icon(
          //       Icons.arrow_back, color: Colors.purple,),
          // onTap: (){
          //       Navigator.pop(context);
          // },),

          title: Text ("Add Products",style: TextStyle(
            color: Colors.black, fontSize: 30
          ),),

        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only( top: 20 , bottom: 20 ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Upload the product image ", style: AppWidget.LightTextFeildStyle(),),
                  SizedBox(height: 20,),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10 ),
                    height:150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border. all(
                        color: Colors.black, width: 1.5
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ) ,
                    child: Icon(Icons.camera_alt_outlined, color: Colors.purple,),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Product Name ", style: AppWidget.LightTextFeildStyle(),),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 340,
                  decoration: BoxDecoration(
                      color: graylite,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    controller: namecontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none),
                  ),
                ),
          
                SizedBox(height: 20, ),
                Text("Product Price ", style: AppWidget.LightTextFeildStyle(),),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 340,
                  decoration: BoxDecoration(
                      color: graylite,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    controller: pricecontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Product Detalies ", style: AppWidget.LightTextFeildStyle(),),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 340,
                  decoration: BoxDecoration(
                      color: graylite,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    maxLines: 6,
                    controller: detaliescontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Product Category",style: AppWidget.LightTextFeildStyle(),),
                SizedBox(height: 20, ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: SizeConfig.screenW,
                    decoration: BoxDecoration(
                       color: graylite,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      items: categoryitem.map(
                           (item) => DropdownMenuItem(value: item,
                            child: Text(item,
                             style: AppWidget.semiboldFeildStyle(),)
                            )).toList(), onChanged: ( value) => setState(() {
                      this.value=value;
                    }),
                      dropdownColor: Colors.white,
                      hint: Text(
                        "Select Category"),
                      iconSize: 36,
                      icon: Icon(Icons.arrow_downward, color: Colors.black),
                      value: value,
                    ),
                  )
                ),
                 SizedBox(height: 30,),
                 ElevatedButton(
                     onPressed: (){},
                     child: Text(
                       "Add product",
                       style: TextStyle(
                         fontSize: 20,
                         color: Colors.purple
                       ),
                     ))
              ],
            ),
          
          
          ),
        ),
      
    );
  }
}


// //3:25:37
