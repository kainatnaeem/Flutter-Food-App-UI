import 'package:flutter/material.dart';



class BuildTabBarTitle extends StatelessWidget {
  const BuildTabBarTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: TabBar(
          labelColor: Color.fromARGB(255, 208, 190, 33),
          indicatorColor:Color.fromARGB(255, 208, 190, 33),
          unselectedLabelColor: Color(0xFFa4a1a1),
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(
            fontWeight: FontWeight.w500,
          ),
          tabs: [
            Tab(
              text: 'Food Details',
            ),
            Tab(
              text: 'Food Reviews',
            ),
          ], // list of tabs
        ),
      ),
    );
  }
}
