import 'dart:math';

import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //color ko array 
    // List<Color> color=[
    //   Colors.black,
    //   Colors.pink,
    //   Colors.red,
    //   Colors.orange,
    //   Colors.green,
    //   Colors.amber,
    //   Colors.brown,
    

    // ];


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
          elevation: 10,
          
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            child: Row(
              children: List.generate(30, (index) 
              {
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
                  color: Color.fromARGB(255, red, green, blue),
                  
                );
              },
              ),
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