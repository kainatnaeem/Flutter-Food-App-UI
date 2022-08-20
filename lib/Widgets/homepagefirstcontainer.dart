import 'package:flutter/material.dart';



class buildFirstContainer extends StatelessWidget {
  const buildFirstContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(  
        
     height:200,
      child: Expanded(
        child: Card(
           semanticContainer: true,
           clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Expanded(
           child: Image.asset(
             'images/' + 'burger' + ".jpg",
           ),
         ),
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(3.0),
           ),
           elevation: 1,
           margin: EdgeInsets.all(5),
         ),
      ),
    );
  }
}