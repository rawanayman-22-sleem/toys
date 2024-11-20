import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toy_shop/Admin/adminorcustom.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/Widgets/onboarding_screen.dart';


class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
with SingleTickerProviderStateMixin{

  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  @override
  void initState() {
    super.initState();

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
     Future.delayed(Duration(seconds: 4), () {
       Navigator.of(context).pushReplacement(MaterialPageRoute(
           builder: (_) => const AdminorCustom(),

       ));
     });
    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation= Tween<double>(begin: .2, end: 1 ).animate(animationController!);
    animationController!.repeat(reverse: true);
  }
  @override

  void dispose(){
    animationController!.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [pink,sky],
                begin: Alignment.topCenter,
             // end: Alignment.topRight
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            FadeTransition(
              opacity: fadingAnimation!,
              child:  Text(
                  "Toys Shope",
                  style: GoogleFonts.sofadiOne(
                    textStyle: TextStyle(color: wihte, letterSpacing: 20,
                        fontSize: 35,fontWeight: FontWeight.bold
                    ),),
                ),
              ),

            Spacer(),
            Image.asset('assets/images/toy-shop.webp'),
          ],
        ),
      ),
    );
  }
}

