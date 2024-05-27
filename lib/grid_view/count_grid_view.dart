import 'package:flutter/material.dart';

class CountGridView extends StatelessWidget {
  const CountGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      scrollDirection: Axis.horizontal,
      
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
          color: Colors.pink,
        ),
        Container(
          height: 200,
          color: Colors.orange,
        ),
        Container(
          height: 200,
          color: Colors.black,
        ),
      ],
    );
  }
}