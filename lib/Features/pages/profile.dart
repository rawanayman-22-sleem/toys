

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/pages/BottomNav.dart';
import 'package:toy_shop/Features/pages/Home.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: wihte, // <-- SEE HERE
            //statusBarIconBrightness: Brightness.dark, //<-- For Android SEE HERE (dark icons)
          //  statusBarBrightness: Brightness.light, //<-- For iOS SEE HERE (dark icons)
          ),
          backgroundColor:wihte,
          elevation: 0,
          leading: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNav()));
              },
              child: Icon(Icons.arrow_back,color: Colors.black)),
          title: Padding(
            padding: const EdgeInsets.only(left: 60,top: 10),
            child: Text("My Profile",style: TextStyle(
              color: skyblue,fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
          ),
        ),
        backgroundColor: wihte,
        body:Padding(
          padding: const EdgeInsets.only(bottom: 5,top: 20),
          child: Container(
            child: Stack(
                children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("assets/images/toy shoplogo-.jpg")
                      ]
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: Container(
                      margin: EdgeInsets.only(top: 40),
                      height: 400,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: pinkkk,
                        borderRadius: BorderRadius.circular(16.0),),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Center(child: Text("Rawan Ayman",style: TextStyle(
                              color: blue,
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15,right: 5,left: 5,bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Icon(Icons.person)
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Rawan Ayman",style: TextStyle(
                                    color: Colors.black,fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Icon(Icons.girl,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Femal",style: TextStyle(
                                    color: Colors.black,fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                          ),//Male
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Icon(Icons.email_outlined),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("rawanayman@gmail.com",style: TextStyle(
                                    color: Colors.black,fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Icon(Icons.phone_android,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("220-2356-56",style: TextStyle(
                                    color: Colors.black,fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:Icon(Icons.location_on),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Egypt-Cairo",style: TextStyle(
                                      color: Colors.black,fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
            ),
          ),
        )
    );
  }
}









