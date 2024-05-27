import 'package:flutter/material.dart';

class FruitCard extends StatelessWidget {
  const FruitCard({
    super.key,
    required this.fruitName,
    required this.index,
  });

  final String fruitName;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      elevation: 10.0,
      color: Colors.blueGrey.withOpacity(0.5),
      child: Container(
        alignment: Alignment.center,
        height: 100,
        child: ListTile(
          leading: Text(
            "${index + 1}",
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          title: Text(
            fruitName,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
