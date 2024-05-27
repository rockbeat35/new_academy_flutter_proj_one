import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FruitsPage extends StatelessWidget {
   FruitsPage({super.key, this.isGrid = false});
   final bool isGrid;


  final fruits = [
  "apple",
  "banana",
  "orange",
 
  
  ];

  final description = [
    "Apple is a sweet and delicious fruit that is very healthy. It is also a good disease-fighter and we can eat it every day. The delicious taste and bright colour of the food make it even more appealing. Moreover, it is a versatile fruit which we can use in many dishes. In an essay on apple, we will learn how many benefits it offers.",
      "banana is a sweet and delicious fruit that is very healthy. It is also a good disease-fighter and we can eat it every day. The delicious taste and bright colour of the food make it even more appealing. Moreover, it is a versatile fruit which we can use in many dishes. In an essay on apple, we will learn how many benefits it offers.",
      "orange is a sweet and delicious fruit that is very healthy. It is also a good disease-fighter and we can eat it every day. The delicious taste and bright colour of the food make it even more appealing. Moreover, it is a versatile fruit which we can use in many dishes. In an essay on apple, we will learn how many benefits it offers."
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
      itemBuilder: (ctx, index) {
        final fr = fruits[index];
        final frd = description[index];
        return Card(
          color: Colors.amber,
          elevation: 10,
          child: Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: Text("${index + 1}"),
              title: Text(fr),
              onTap: (){
                // Navigator.push(
                //   context, 
                //   CupertinoPageRoute(
                //     builder: (ctx){
                //       return FruitDetails();
                //     },
                //   ),
                // );
                Navigator.pushNamed(context, "/fruit-details",
                 arguments: {
                  "name": fr,
                  "index" : index,
                  "details" : frd,
                 },
                 );



              },
            ),
          ),
        );
      },
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isGrid ? 2:1,
        crossAxisSpacing: 10,
        mainAxisSpacing: 20,
        mainAxisExtent: 120,
       ),
       itemCount: fruits.length,

    );
  }
}