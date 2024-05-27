
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomStackWidget extends StatefulWidget{
  @override
  State<CustomStackWidget> createState() => _CustomStackWidgetState();
}

class _CustomStackWidgetState extends State<CustomStackWidget> {
  int index = 0;
  int right = -30;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            clipBehavior: Clip.none,
            children: [
              
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.black,
              ),
              Positioned(
                bottom: -40,
                // left: 0,
                // right: 0,
                child: Container(
                  height: 80,
                  width: 200,
                  color: Colors.red,
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(
                  milliseconds: 500,
                ),
                curve: Curves.easeIn,
                
                top: right == -30 ? -10:200,

                right: right == -30 ? 0 : 200,
                left: right != -30 ? 0 : 200,
                bottom: right != -30 ? -10: 200,

                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.blue,
                  
                  
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 40,
      
          // ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: MaterialButton(
              onPressed: () {
                right = right == -30 ? 0 : -30;


                index++;
                if (index > 2) index = 0;
                
                setState(() {
                  
                });
              },
              child: Text("Changed Index"),
              color: Colors.yellow,
            ),
          ),
          IndexedStack(
            index: index,
            children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.pink,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.orange,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.brown,
              ),
            ],
          ),
          AnimatedContainer(
            duration: const Duration(
              seconds: 2,
            ),
            width: right== -30 ?30 :400,
            height: right==-30 ? 30 :100,
            color: right== -30 ? Colors.blue : Colors.deepOrange,
            ),



        ],
      ),
    );
  }
}