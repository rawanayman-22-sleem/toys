import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toy_shop/Admin/loginadmin.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Core/Custombuttonicon.dart';
import 'package:toy_shop/Features/Widgets/Loginscreen.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';
import 'package:toy_shop/Features/Widgets/onboarding_screen.dart';
import 'package:toy_shop/Features/onbording_view.dart';

class AdminorCustom extends StatefulWidget {
  const AdminorCustom({super.key});

  @override
  State<AdminorCustom> createState() => _AdminorCustomState();
}

class _AdminorCustomState extends State<AdminorCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:   Column(
        children:[

         SizedBox(
           height: 50,
         ),
          Text.rich(
              TextSpan(
                  style: TextStyle(
                    fontSize: 50,
                    //color: skyblue
                  ),
                  children: [
                    TextSpan(
                      text: 'HI,',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '\n My ',
                      style: TextStyle(
                        color: lightblue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'F',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'R',
                      style: TextStyle(
                        color: Colors.purpleAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'I',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'E',
                      style: TextStyle(
                        color: Colors.cyanAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'N',
                      style: TextStyle(
                        color: Colors.brown,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'D',
                      style: TextStyle(
                        color: Colors.indigoAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]
              )
          ),
          SizedBox(height: 100,),
          Text("Are you",style:  TextStyle(
              color: Colors.amber,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 50,),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Padding (
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomButtonIcon(
                      onTap: (){
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => const Login_Admin( )),
                        );
                      },
                      color: Colors.red,
                      iconData: CupertinoIcons.person_alt_circle,
                      text: 'Admin',
                    ),
                  )),
            ],
          ),
          SizedBox(height: 30,),
          Text("Or",style: TextStyle(
            color: Colors.green,
            fontSize: 40,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 50,),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: Padding (
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CustomButtonIcon(
                      onTap: (){
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => const OnboardingScreen( )),
                        );
                      },
                      color: Colors.red,
                      iconData: CupertinoIcons.person_alt ,
                      text: 'Customer',
                    ),
                  )),
            ],
          ),
         // Expanded(child: SizedBox()),

        ],
      ),
    );
  }
}
