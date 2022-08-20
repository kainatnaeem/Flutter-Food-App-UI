import 'package:flutter/material.dart';


class DetailContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          'Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesettero\'s De Finibus Bonorum et Malorum for.',
          style: TextStyle(
              fontSize: 14.0,
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              height: 1.50),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}