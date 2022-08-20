import 'package:flutter/material.dart';
import 'package:restaurantappuibyktech/screens/bottomnavbar.dart';
import 'package:restaurantappuibyktech/screens/home.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      body: Center(child: Column(
        children: [  
            Container(
              height: 380,
              width:double.infinity,
            color:const Color.fromARGB(255, 208, 190, 33),
            child:Column(children: [
              SizedBox(height: 150),
         const Text("BE SMART", 
              style:TextStyle(color: Colors.black,
               fontSize:50, height: 0.6)),
 const Text("EAT SMART", 
              style:TextStyle(color: Color.fromARGB(255, 169, 22, 11),
               fontSize:50,)),
      SizedBox(height: 30),       
const Text("Healthy Living Is Not A Diet", 
              style:TextStyle(color: Colors.black,
               fontSize:15, height: .5)),
 SizedBox(height: 10),
 ElevatedButton(
          child: const Text('Get Started',style:TextStyle(color:Colors.black ,fontSize: 25),),
          style: ElevatedButton.styleFrom(
            primary: Colors.white, minimumSize: const Size(200, 50),
    maximumSize: const Size(200, 50),
          ),
          onPressed: () { Navigator.push(
            context, MaterialPageRoute(builder: (context) =>  BottomBar()));},
        ),
            ],)
          ),
         Expanded(
           child: Container(
              
              decoration: const BoxDecoration(
                color:Colors.black,
                image: DecorationImage(
                  
                  image: const AssetImage('images/spaghettiremovebg.png')
                )
              ),
            ),
         ),
          ],
      )),
    );
  }
}                                                                                            