

import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:restaurantappuibyktech/screens/fooddetails.dart';
import 'package:restaurantappuibyktech/screens/home.dart';
import 'package:restaurantappuibyktech/screens/splashscreen.dart';
import 'package:restaurantappuibyktech/screens/welcome.dart';


class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {


  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  final screens = [
   
  Home(),
 
  FoodDetailsPage(),
    WelcomeScreen(),
  ];

 
  int index = 0;

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.home, size: 30),
       Icon(Icons.food_bank, size: 30),
      
      Icon(Icons.shopping_cart,size: 30),
     Icon(Icons.notifications_active,size: 30),
      Icon(Icons.logout, size: 30),
    ];

    return Scaffold(
      backgroundColor: Colors.yellow,
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(
              color: Color.fromARGB(255, 208, 190, 33),
            ),
          ),
          child: CurvedNavigationBar(
            key: navigationKey,
            backgroundColor: Colors.black38,
            height: 60,
            index: index,
            items: items,
            onTap: (index) => setState(() => this.index = index),
          )),
      body: screens[index],
    );
  }
}
