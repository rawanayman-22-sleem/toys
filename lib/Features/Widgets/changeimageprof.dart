import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toy_shop/Features/Widgets/Support_widget.dart';
import 'package:toy_shop/Features/Widgets/loadingscreen.dart';
import 'package:toy_shop/Features/pages/BottomNav.dart';
import 'package:toy_shop/Features/pages/Home.dart';

class Changeimageprof extends StatefulWidget {
  const Changeimageprof({super.key});

  @override
  State<Changeimageprof> createState() => _ChangeimageprofState();
}

class _ChangeimageprofState extends State<Changeimageprof> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(
            Icons.arrow_back, color: Colors.red,),
          onTap: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => const BottomNav( )),);
          },
        ),

        title: Text ("Change photo Profile",style: TextStyle(
            color: Colors.black, fontSize: 30
        ),),

      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only( top: 20 , bottom: 20 ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Upload new photo ", style: AppWidget.LightTextFeildStyle(),),
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
             ]
          ),


        ),
      ),

    );
  }
}
