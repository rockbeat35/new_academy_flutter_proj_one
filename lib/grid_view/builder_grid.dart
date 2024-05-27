import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuilderGridView extends StatelessWidget {
  const BuilderGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 20,
        crossAxisSpacing: 10,
        maxCrossAxisExtent: 200,

      ),
      itemBuilder: (ctx, index){
         return Container(
          color: Colors.red,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SvgPicture.asset(
            
              "assets/c.svg",
              fit: BoxFit.cover,
              
            ),
          ),
        );
        // return Container(
        //   color: Colors.red,
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(20),
        //     child: Image.asset(
            
        //       "assets/c.svg",
        //       fit: BoxFit.cover,
              
        //     ),
        //   ),
        // );
      },
      
    );
  }
}