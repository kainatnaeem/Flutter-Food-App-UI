import 'package:flutter/material.dart';

import '../Widgets/fooddetailaddbtn.dart';
import '../Widgets/fooddetailtabcontent.dart';
import '../Widgets/homefoodtitlewidget.dart';
import '../Widgets/homepagefirstcontainer.dart';
import '../Widgets/fooddetailtabbartitle.dart';


class FoodDetailsPage extends StatefulWidget {
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFFAFAFA),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 208, 190, 33),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
       
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.business_center,
                  color:Color.fromARGB(255, 208, 190, 33),
                ),
                onPressed: () {
               
                })
          ],
        ),
        body: Column(
         // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           
             Padding(
               padding: EdgeInsets.only(
           top: 15,
            
          ),
               child: buildFirstContainer(),
             ),
          
          
   SizedBox(
              height: 15,
            ),
            buildFoodTitle(),
            
            SizedBox(
              height: 15,
            ),
            BuildTabBarTitle(),
            buildTabText(),
        SizedBox(
              height: 15,
            ),
           AddToCartMenu(),
          ],
        ),
      ),
    );
  }

  Padding buildTabText() {
    return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              child: TabBarView(
                children: [
                  Container(
                    color: Colors.white24,
                    child: DetailContentMenu(),
                  ),
                  Container(
                    color: Colors.white24,
                    child: DetailContentMenu(),
                  ), // class name
                ],
              ),
            ),
          );
  }

  FoodTitleWidget buildFoodTitle() {
    return FoodTitleWidget(
              productName: "Burger",
             );
  }
}


