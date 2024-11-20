import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Core/Custombuttonicon.dart';
import 'package:toy_shop/Core/completeinfoitem.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';
import 'package:toy_shop/Features/Widgets/forgetpassword.dart';
import 'package:toy_shop/Features/Widgets/loadingscreen.dart';
import 'package:toy_shop/Features/Widgets/signup.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, right: 10,left: 10 , bottom: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/images/loge-toys.jpg"),
              Center(
                child:
                Text("Sing In", style: AppWidget.semiboldFeildStyle(),),
              ),
              SizedBox(height: 20,),
              Center(
                child: Text("Please enter the details below \n              to continue.",
                  style: AppWidget.LightTextFeildStyle() ,),
              ),
              SizedBox(height: 40,),
                  Row(
                    children: [ Icon(Icons.email_outlined, color: yellow,),
                    Text("Email", style: TextStyle(color: skyblue,fontSize: 20, fontWeight:FontWeight.bold )),
                    SizedBox(height: 20,)
          ,
        ]),

              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: yellow, borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none, hintText: "Email"),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                  Icon(Icons.password, color: skyblue,),
              Text("Password", style: TextStyle(color: yellow,fontSize: 20, fontWeight:FontWeight.bold )),
              SizedBox(height: 20,),
        ],  ),
              Container(
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(color: skyblue, borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(border: InputBorder.none, hintText: "Password"),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                   onTap: () {
                     // Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgetpassword()));
                    },
                      child: Text("Forget Password?", style: TextStyle(color: red,fontSize: 20 , fontWeight: FontWeight.bold ),)),
                ],
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: greenprimary, borderRadius: BorderRadius.circular(10)) ,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => const Loadingscreen( )),);
                    },
                    child: Center(

                        child: Text(
                          "LOGIN NOW", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w800),
                        ),

                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account?", style: AppWidget.LightTextFeildStyle(),),
                  GestureDetector(
                      onTap: () {
                       // Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(builder: (context) => const SignUp( )),
                          );
                        },
                        child: Text(
                          "\ Sign Up", style: TextStyle(color: red,fontSize: 20 , fontWeight: FontWeight.bold ),),
                      )),
                  //1 56 36

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}





// class CompleteInformationBody extends StatelessWidget {
//   const CompleteInformationBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Padding(
//           padding: const EdgeInsets.only(top: 100),
//       child:
//          Padding(
//            padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
//            child: Column(
//             children: [
//               CompleteInfoItem(
//                 text: 'Enter your Name',
//               ),
//               SizedBox(height: 10,),
//               CompleteInfoItem(
//                 text: 'Enter your Phone',
//               ),
//               SizedBox(height: 10,),
//               CompleteInfoItem(
//                 maLines: 5,
//                 text: 'Enter your Address',
//               ),
//               Spacer(),
//               CustomGeneralButton(
//                 text: 'Login',
//                 textcolor: Colors.white,
//                 color: skyblue,
//                 onTap: (){
//                   Navigator.push(
//                       context,
//                       CupertinoPageRoute(builder: (context) => const Homepage()),
//                   );
//                 },
//               ),
//               SizedBox(height: 50,)
//             ],
//                    ),
//          ),
//
//     );
//   }
// }
