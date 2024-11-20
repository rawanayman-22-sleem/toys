// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl_phone_field/intl_phone_field.dart';
// import 'package:lottie/lottie.dart';
// import 'package:toy_shop/Core/Colores.dart';
// import 'package:toy_shop/Features/Widgets/Otpnumber.dart';
// import 'package:toy_shop/Features/Widgets/loadingscreen.dart';
//
//
// class Forgetpassword extends StatelessWidget {
//    Forgetpassword({super.key});
//   GlobalKey<FormState> _formKey = GlobalKey();
//    TextEditingController numberphController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16),
//         child: Form (
//           key:  _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(height: 50,),
//               IntlPhoneField(
//                 controller: numberphController,
//                 decoration: InputDecoration(
//                   labelText:"Your Phonenumber",
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(
//
//                     )
//                   )
//                 ),
//               ),
//
//                 InkWell(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       CupertinoPageRoute(builder: (context) => const OTPnumber( )),
//                     );
//                   },
//                   child: Container(
//                     padding: EdgeInsets.symmetric(vertical: 12, horizontal: 25),
//                     decoration: BoxDecoration(
//                       color: yellow,
//                       borderRadius: BorderRadius.circular(7)
//                     ),
//                     child: Text(
//                       "Submite",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 22,
//                         fontWeight: FontWeight.w600
//                       ),
//                     ),
//                   ),
//                 ),
//
//
//                 ]
//           ),
//         ),
//       ),
//     );
//   }
// }
