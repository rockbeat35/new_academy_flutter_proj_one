import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homok extends StatelessWidget{
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
            height: 200,
            width: double.infinity,
           
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40),),
               color: const Color.fromARGB(255, 150, 127, 126),
            ),
          ),

          Positioned(
            child: Text("Dashboard",
            style: TextStyle(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold,),
            
            ),
            
            top: 10,
            left: 10,
            
            


           ),

          Positioned(
            top: 10,
            right: 10,
            child: Container(
              alignment: Alignment.center,
              height:40,
              width: 40,
              
              decoration: BoxDecoration(
                color: Colors.blue,
                
                borderRadius: BorderRadius.circular(20.0),
              ),
              child:Icon(
                Icons.add,
                color: Colors.black,
              ),
            
            
            
            ),
          ),
          Positioned(
            bottom: -40,


            child: Container(
              height: 80,
              width: 200,
              color: Colors.orange,
              child: MaterialButton(onPressed:(){},
              child: Text ( "Click me",
              style: TextStyle(fontSize: 20,
              fontWeight:FontWeight.bold),),
              
              color: Colors.yellow,
              
              
               ),
            ),
          ),


            ],
            
          ),
          SizedBox(
            height: 40,
          ),
           
           SingleChildScrollView(
            scrollDirection:  Axis.horizontal,
             child: Row(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.pink,
                  margin: EdgeInsets.all(8.0),
                  
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: const Color.fromARGB(255, 78, 56, 64),
                  margin: EdgeInsets.all(8.0),
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.brown,
                  margin: EdgeInsets.all(8.0),
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.orange,
                  margin: EdgeInsets.all(8.0),
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                  margin: EdgeInsets.all(8.0),
                ),
             
             
                
              ],
             
             
             ),
           ),


        ],
      ),


    );
  }


}