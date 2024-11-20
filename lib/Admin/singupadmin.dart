import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toy_shop/Admin/add_product.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';
import 'package:toy_shop/Features/Widgets/loadingscreen.dart';
import 'package:toy_shop/Features/Widgets/signup.dart';

class Singupa_Amin extends StatefulWidget {
  const Singupa_Amin({super.key});

  @override
  State<Singupa_Amin> createState() => _Singupa_AminState();
}

class _Singupa_AminState extends State<Singupa_Amin> {
  String? name,email,password;
  TextEditingController namecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordontroller = new TextEditingController();
  final _formkey= GlobalKey<FormState>();

  // registration()async{
  //   if(password!=null && name!=null&&email!=null){
  //     try{
  //       UserCredential userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email!, password: password!);
  //       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //         backgroundColor: red,
  //           content: Text("Registered Successfully", style: TextStyle(fontSize: 20),)));
  //     }
  //     on FirebaseException catch (e) {
  //       if(e.code=='weak-password') {
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //           backgroundColor: red,
  //             content: Text("Password Provided is too Weeeek!!", style: TextStyle(fontSize: 20),)));
  //       }
  //       else if(e.code=='email-already-in-use') {
  //         ScaffoldMessenger.of(context).showSnackBar(SnackBar(
  //             backgroundColor: red,
  //             content: Text("Account Already exsists", style: TextStyle(fontSize: 20),)));
  //       }
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40, right: 10,left: 10 , bottom: 40),
          child: Form(
            // key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/loge-toys.jpg"),
                Center(
                  child:
                  Text("Sing Up", style: AppWidget.semiboldFeildStyle(),),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Text("Please enter the details below \n              to continue.",
                    style: AppWidget.LightTextFeildStyle() ,),
                ),
                SizedBox(height: 40,),

                Text("Name", style: TextStyle(color: yellow,fontSize: 20, fontWeight:FontWeight.bold )),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(color: pinklite, borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty) {
                        return 'Please enter your Name';
                      }
                      else
                        return null;
                    },
                    // controller: namecontroller,
                    decoration: InputDecoration(border: InputBorder.none, hintText: "Your name"),
                  ),
                ),
                SizedBox(height: 20,),
                // Icon(Icons.email_outlined, color: Colors.black26,),
                Text("Email", style: TextStyle(color: skyblue,fontSize: 20, fontWeight:FontWeight.bold )),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(color: yellow, borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty) {
                        return 'Please enter your Email';
                      }
                      else
                        return null;
                    },
                    // controller: emailcontroller,
                    decoration: InputDecoration(border: InputBorder.none, hintText: "Email"),
                  ),
                ),
                SizedBox(height: 40,),

                Text("Password", style: TextStyle(color: pinklite,fontSize: 20, fontWeight:FontWeight.bold )),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(color: skyblue, borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value){
                      if(value==null||value.isEmpty) {
                        return 'Please enter your Password';
                      }
                      else
                        return null;
                    },
                    //  controller: passwordontroller,
                    decoration: InputDecoration(border: InputBorder.none, hintText: "Password"),
                  ),
                ),
                SizedBox(height: 20,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Text("Forget Password?", style: TextStyle(color: red,fontSize: 20 , fontWeight: FontWeight.bold ),),
                //   ],
                // ),
                GestureDetector(
                  // onTap: (){
                  //   if(_formkey.currentState!.validate()){
                  //     setState(() {
                  //       name= namecontroller.text;
                  //       email= emailcontroller.text;
                  //       password= passwordontroller.text;
                  //
                  //     });
                  //   }
                  //   registration();
                  // },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width/2,
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(color: greenprimary, borderRadius: BorderRadius.circular(10)) ,
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, CupertinoPageRoute(builder: (context) => const AddProduct( )),);
                          },
                          child: Text(
                            "SIGN UP", style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text("Already have account??", style: AppWidget.LightTextFeildStyle(),),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                //       },
                //         child: Text(
                //           "Sign IN", style: TextStyle(color: red,fontSize: 20 , fontWeight: FontWeight.bold ),)),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
