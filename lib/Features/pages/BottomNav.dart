import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:toy_shop/Core/Colores.dart';
import 'package:toy_shop/Features/pages/Home.dart';
import 'package:toy_shop/Features/pages/order.dart';
import 'package:toy_shop/Features/pages/profile.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  late List<Widget> pages;

  late HomePage Home;
  late OrderScreen order;
  late ProfileScreen profile;
  int currentTabIndex=0;

  @override

  void initState() {
    Home = HomePage();
    order= OrderScreen();
    profile= ProfileScreen();
    pages= [Home,order,profile];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: sky,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
        items: [
          Icon(Icons.home_outlined,color: wihte,
          ),
           Icon(Icons.shopping_bag_outlined,color: wihte,
           ),
          Icon(Icons.person,color: wihte,
          ),
        ],),
      body: pages[currentTabIndex],
    );
  }
}

