import 'package:flutter/material.dart';


class FoodTitleWidget extends StatelessWidget {
 final String productName;


  FoodTitleWidget({
   
    required this.productName,
    
  }) ;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                  fontSize: 40,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
           
          ],
        ),
      
      ],
    );
  }
}
