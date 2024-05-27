import 'package:flutter/material.dart';
import 'package:nist_flutter_project/constants/datas.dart';
import 'package:nist_flutter_project/mycard.dart';

class MyCardList extends StatelessWidget {
  const MyCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
          itemCount: 5,
          separatorBuilder: (ctx, index) {
            
            return SizedBox(
              height: 10,
              
            );
          },
          itemBuilder: (context,index) {
            final title = titleArray[index];
            final subTitle = subtitleArray[index];
            final description = descriptionArray[index];
            final imageUrl = imageArray[index];
            return Align(
              alignment: Alignment.bottomCenter,
              child: MyCard(
              title: title,
              subTitle: subTitle ,
              description: description,
              imageUrl:imageUrl,
              onTapEyeButton: (){
                print("on tap eye button clicked, $index");
                
              },
              
              ),
            );
          }
        );
  }
}