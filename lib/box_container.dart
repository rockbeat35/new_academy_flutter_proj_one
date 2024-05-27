import 'package:flutter/material.dart';

class BoxContainer extends StatelessWidget{
  String text = "Hello Class";
  int count = 10;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100,
      
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              "${text.toLowerCase()}  $count",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            OutlinedButton(
              onPressed:() {
                print("button clicked");
                count= count+1;
              } ,
              child: Text("click me"),
            ),
          ],
        ),
      ),
      //color: Colors.brown,
      decoration: BoxDecoration(
        color: Colors.brown,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomRight: Radius.circular(10),
        ),

      ),
    );
    
  }

}