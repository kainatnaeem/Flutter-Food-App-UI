import 'package:flutter/material.dart';
import 'package:restaurantappuibyktech/screens/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Kanit',
        primarySwatch: Colors.yellow,
      ),
      home: const SplashScreen(),
    );
  }
}
