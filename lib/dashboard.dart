import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Wrap(
              //mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                width: 400,
                  height: 100,
                  color: Colors.red,),
                Container(
                width: 180,
                  height: 100,
                  color: Colors.green,),
                Container(
                width: 100,
                  height: 100,
                  color: Colors.yellow,),
                 
              ],
            ),
          ),
        ),
      ),
    );
  }

}