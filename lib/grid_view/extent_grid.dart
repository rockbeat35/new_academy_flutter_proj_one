import 'package:flutter/material.dart';

class ExtentGridView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 250,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children: [
        Container(
          height: 200,
          color: Colors.red,
        ),
        Container(
          height: 200,
          color: Colors.yellow,
        ),
        Container(
          height: 200,
          color: Colors.black,
        ),
        Container(
          height: 200,
          color: Colors.orange,
        ),
        Container(
          height: 200,
          color: Colors.pink,
        ),
        Container(
          height: 200,
          color: Colors.brown,
        ),
      ],
    );
  }
}