import 'package:flutter/material.dart';


class HomeSearchField extends StatelessWidget {
  const HomeSearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(

      decoration: InputDecoration( contentPadding: EdgeInsets.all(12.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50.0)),
          borderSide: BorderSide(
            width: 0,
            color: Color.fromARGB(255, 208, 190, 33),
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xff7b7b7b),
        ),
        fillColor:  Colors.white,
        suffixIcon: Icon(Icons.sort,color: Color(0xff7b7b7b),),
        hintStyle: new TextStyle(color: Color(0xFFd0cece), fontSize: 18),
        hintText: "Search your favorite food",
      ),
    );
  }
}
