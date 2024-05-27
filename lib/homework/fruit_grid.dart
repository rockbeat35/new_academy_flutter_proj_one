import 'package:flutter/material.dart';

import 'package:nist_flutter_project/constants/datas.dart';
import 'package:nist_flutter_project/homework/fruit_card.dart';

class FruitGridView extends StatelessWidget {
  const FruitGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisSpacing: 10,
          crossAxisSpacing: 8,
          
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10,
        vertical: 10),
        itemCount: fruitArray.length,
        itemBuilder: (context, index) {
          return FruitCard(
            fruitName: fruitArray[index],
            index: index,
          );
        });
  }
}
