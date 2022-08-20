import 'dart:async';

import 'package:flutter/material.dart';
import 'package:restaurantappuibyktech/screens/bottomnavbar.dart';
import 'package:restaurantappuibyktech/screens/welcome.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3),
            ()=> Navigator.push(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('images/spaghettiremovebg.png')
              )
            ),
          ),
          const Positioned(
              bottom: 50 ,
              child:const CircularProgressIndicator(color: Colors.white,))
        ],
      ),
    );
  }
}

