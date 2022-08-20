import 'package:flutter/material.dart';



class AddToCartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove),
            color: Colors.black,
            iconSize: 30,
          ),
          InkWell(
            onTap: () {
            
            },
            child: Container(
              width: 140.0,
              height: 40.0,
              decoration: new BoxDecoration(
                color: Color.fromARGB(255, 208, 190, 33),
                border: Border.all(color: Colors.white, width: 2.0),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text(
                  'Add To Cart',
                  style: new TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
            color: Color.fromARGB(255, 208, 190, 33),
            iconSize: 30,
          ),
        ],
      ),
    );
  }
}
