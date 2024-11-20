import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Core/Custombuttonicon.dart';
import 'package:toy_shop/Features/Widgets/Loginscreen.dart';


class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.white,

       body:   Column(
       children:[
        //Spacer(),
        SizedBox(
          child: Image.asset('assets/images/TOYShope.jpg'),
          height: 500,
         ),
         Text.rich(
            TextSpan(
                style: TextStyle(
                  fontSize: 50,
                  //color: skyblue
                ),
                children: [
                  TextSpan(
                    text: 'T',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'O',
                    style: TextStyle(
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Y',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '\ S',
                    style: TextStyle(
                      color: lightblue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'H',
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'O',
                    style: TextStyle(
                      color: Colors.purpleAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'P',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ]
            )
        ),
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
                        CupertinoPageRoute(builder: (context) => const LoginScreen( )),
                      );
                    },
                    color: Colors.red,
                    iconData: FontAwesomeIcons.googlePlusG ,
                    text: 'Log in with',
                  ),
                )),
            Flexible(
                flex: 1,
                child: Padding (
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: CustomButtonIcon(
                    color: Colors.blue,
                    iconData: FontAwesomeIcons.facebookF ,
                    text: 'Log in with',
                  ),
                )),
          ],
        ),
        Expanded(child: SizedBox()),

      ],
    ),
      );
  }
}


