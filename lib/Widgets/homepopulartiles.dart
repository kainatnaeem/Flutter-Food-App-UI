import 'package:flutter/material.dart';

import '../screens/fooddetails.dart';


class PopularFoodTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  
   
  final String price;
  final String slug;

  const PopularFoodTiles(
      {
  required this.name,
       required this.imageUrl,
     
    
      required this.price,
      required this.slug});
      

  @override
  Widget build(BuildContext context) {
    
     return
      Container(
        margin: EdgeInsets.only(right: 15),
        height: 170, width: 220,
        // color: secondary,
        child: Stack(
          children: [
            Positioned(
              top: 10,
              child: InkWell(
                onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDetailsPage()));},
                child: Container(
                  height: 120, width: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image:  AssetImage('images/' + imageUrl + ".jpg",)
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0, right: 5,
              child: IconButton(
              icon: Icon(
                Icons.favorite,
                color: Color.fromARGB(255, 208, 190, 33),
              ),
              onPressed: () {
               
                })
            ),
            Positioned(
              top: 140,
              child: Container(
                width: 220,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(child: Text(name, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),)),
                        SizedBox(width: 5,),
                        Text(price, style: TextStyle(fontSize: 14, color: Color.fromARGB(255, 208, 190, 33), fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ]
                )
              ),
            )
          ],
        ),
      );
 
  }
}

class PopularFoodList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Row(
        
          children: [
            PopularFoodTiles(
                name: "Burger",
                imageUrl: "burger",
             
   
                price: '15.06',
                slug: ""),
            PopularFoodTiles(
                name: "Sushi",
                imageUrl: "sushi",
              
               
                price: "17.03",
                slug: ""),
                PopularFoodTiles(
                name: "Lasagna",
                imageUrl: "lasagna",
              
               
                price: "17.03",
                slug: ""),
                   PopularFoodTiles(
                name: "Spaghetti",
                imageUrl: "spaghetti",
              
               
                price: "17.03",
                slug: ""),
          
          ],
        ),
      ],
    );
  }}
