
import 'package:flutter/material.dart';
import 'package:restaurantappuibyktech/screens/fooddetails.dart';

import '../Widgets/homecategoriess.dart';
import '../Widgets/homefirstcontainer.dart';
import '../Widgets/homepopulartiles.dart';
import '../Widgets/homesearchfield.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'Search your favorite food');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      backgroundColor:Colors.white,    elevation: 0,
       title: const  Text('Food Delivery'),
       actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Color.fromARGB(255, 208, 190, 33),
              ),
              onPressed: () {
               
                })
        ],
       bottom: PreferredSize(
          preferredSize:const Size.fromHeight(80),
          child:  Padding(
     padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 3),
      child: HomeSearchField(),
        ) )
        ),

      
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15 ,vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             HomeFirstContainer(),


            SizedBox(height:5),


          HomeCategoryTitle(),
            
 

          Container(
            height:150,
            child: ListView(  scrollDirection: Axis.horizontal,
      
         children: [
         Categories(name: "Burger", imageUrl: "burger", slug: ""),
          Categories(name: "Sushi", imageUrl: "sushi", slug: ""),
          Categories(name: "Lasagna", imageUrl: "lasagna", slug: ""),
          Categories(name: "Spaghetti", imageUrl: "spaghetti", slug: ""),
         
       
              ]   ),
          ),



  

  

Container(
      height: 200,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Popular Foods",
            style: TextStyle(
                fontSize: 20,
                color: Color(0xFF3a3a3b),
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    ),
          Expanded(
            child: PopularFoodList(),
          )
        ],
      ),
    )

    ] ),  
          
           
    )));
            
       
     
 
  }
}






