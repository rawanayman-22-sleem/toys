import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Core/size_config.dart';


class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key, this.text, this.onTap, this.color, this.textcolor});
  final String? text;
  final VoidCallback? onTap;
  final Color? color;
  final Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenW,
        decoration: BoxDecoration(
          color: color!,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color:textcolor!,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

class CustomButtonIcon extends StatelessWidget {
  const CustomButtonIcon({Key?key,
    required this.text,
    this.iconData,
    this.onTap,
    this.color
  })
  : super (key: key);
 final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color?  color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        height: 60,
        width: SizeConfig.screenW,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
           border:  Border.all(
           color: Colors.black
        )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData ,
              color: color,
            ),
            SizedBox(width: 10,),
             Text(text,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black
              ),
              textAlign: TextAlign.right,
              ),
          ],
        ),
      ),
    );
  }
}


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  const CustomButton({required this.text, required this.onPressed, required this.color});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.pink, iconColor: pinklite, // Set the text color of the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Set the button shape
        ),
      ),
    );
  }
}
