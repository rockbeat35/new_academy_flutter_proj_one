import 'package:flutter/material.dart';

class FruitDetails extends StatelessWidget {
  const FruitDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final data = (ModalRoute.of(context)!.settings.arguments ?? '' ) as Map<String, dynamic>;
    final fruitName =data['name'];
    final index = data ['index'];
    final description = data['details'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.abc),
        ),
        title: Text("$fruitName Details  $index "),
      ),
      body: Text(
        description
      ),
    );
  }
}