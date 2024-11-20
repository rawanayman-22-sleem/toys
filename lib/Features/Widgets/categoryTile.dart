import 'package:flutter/material.dart';

class Categorytile extends StatelessWidget {
  String image;
   Categorytile({required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){

      },
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              height: 50,
              width: 50,
            )
          ],
        ),
      ),

    );
  }
}
