import 'package:flutter/material.dart';
import 'package:nist_flutter_project/homework/fruits_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:Text("ListView"),
        actions: [
          IconButton(
            icon:const Icon(
              Icons.list,
            ),
            onPressed: (){
              isGrid = false;
              setState(() {
                
              });
            },
          ),
          IconButton(
            icon:const Icon(
              Icons.grid_view,
            ),
            onPressed: (){
              isGrid = true;
              setState(() {
                
              });
            },
          ),
        ],
      ),
      body: FruitsPage(
        isGrid: isGrid,
      ),
    );
  }
}