import 'dart:math';

import 'package:flutter/material.dart';

class MultiListViewExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   


    return ListView.separated(
      itemCount: 4,
      separatorBuilder: (ctx, index){
        return SizedBox(
          height: 20,
          
        );
        
      },
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 20,
      ),

      itemBuilder: (ctx, index) {
        return Card(
          color: Colors.brown,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          
          
          child: SizedBox(
            height: 100,
            child: ListView.separated(
              itemCount: 10,
              // padding: const EdgeInsets.all(10), yo chai padding ho box vitra ko 
             
              separatorBuilder: (ctx, index){
                return SizedBox(
                  width: 10,
                );
                
              },
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index){
                var red = 0;
                  var green = 0;
                  var blue = 0;
                  final random = Random();
                  red = random.nextInt(255);
                  green = random.nextInt(255);
                  blue = random.nextInt(255);
                  return Container(
                    width: 100,
                    height: 100,
                   
                    decoration: BoxDecoration(
                       color: Color.fromARGB(255, red, green, blue),
                       borderRadius: BorderRadius.circular(10),

                    ),
                    
                  );
              },
            ),
          ),


        );
        return Card(
          elevation: 10,
          shadowColor: Colors.orange,
          child: ListTile(
            onTap: (){
              print("List tile tapped @index");
            },
            leading: Text("${index + 1}"),
            title: Text("Title $index lorem "),
            subtitle: Text("Subtitle $index"),
            trailing: Icon(Icons.add_comment_sharp),

          ),

        );
        return Card(
          elevation: 20,
          shadowColor: Colors.orange,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255, 238, 225, 207),
            ),
            padding:const EdgeInsets.all(50),
            
            height: 150,
        
            
            
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("${index + 1}",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.brown,
                ),
                ),
                SizedBox(
                  width: 20,
                ),
                 Padding(
                  
                   padding: const EdgeInsets.only(left: 40),
                   child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                                 children: [
                   
                    Text("Title",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Discription"),
                    
                                 ],
                               ),
                 ),
          
          
          
              ]
             
            ),
           
          ),
        );
      },
     );
  }
}