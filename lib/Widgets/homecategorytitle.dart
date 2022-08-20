import 'package:flutter/material.dart';


class HomeCategoryTitle extends StatelessWidget {
  const HomeCategoryTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
    Text(
      "Categories",
      style: TextStyle(
          fontSize: 20,
          color: Color(0xFF3a3a3b),
          fontWeight: FontWeight.w300),
    ),
    Text(
      "See all",
      style: TextStyle(
          fontSize: 16, color: Color.fromARGB(255, 208, 190, 33), fontWeight: FontWeight.w100),
    )
        ],
      ));
  }
}