import 'package:flutter/material.dart';

import 'package:nist_flutter_project/constants/datas.dart';
import 'package:nist_flutter_project/homework/fruit_card.dart';

class FruitList extends StatelessWidget {
  const FruitList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10,
          );
        },
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 10.0,
        ),
        itemCount: fruitArray.length,
        itemBuilder: (context, index) {
          return FruitCard(
            fruitName: fruitArray[index],
            index: index,
          );
        });
  }
}
