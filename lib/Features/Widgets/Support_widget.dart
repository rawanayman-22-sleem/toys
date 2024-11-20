import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';


class AppWidget {
  static TextStyle boldTextFeildStyle(){
    return TextStyle(
        color: red,
        fontSize: 30,
        fontWeight: FontWeight.bold );

  }
  static TextStyle LightTextFeildStyle(){
    return TextStyle(
        color:greyTextColor,
        fontSize: 20,
        fontWeight:FontWeight.w700);
  }
  static TextStyle semiboldFeildStyle(){
   return TextStyle(
       color: black,
       fontSize: 20,
       fontWeight: FontWeight.bold);

  }
  static TextStyle bluesky(){
    return TextStyle(
      color: bluelight,
      fontSize: 20,
      fontWeight: FontWeight.w900
    );
  }
}