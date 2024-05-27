import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nist_flutter_project/box_container.dart';
import 'package:nist_flutter_project/constants/datas.dart';
import 'package:nist_flutter_project/custom_stack_widget.dart';
import 'package:nist_flutter_project/dashboard.dart';
import 'package:nist_flutter_project/grid_view/builder_grid.dart';
import 'package:nist_flutter_project/grid_view/count_grid_view.dart';
import 'package:nist_flutter_project/grid_view/extent_grid.dart';
import 'package:nist_flutter_project/grid_view/normal_gridview.dart';
import 'package:nist_flutter_project/homep.dart';
import 'package:nist_flutter_project/homework/fruit_details.dart';
import 'package:nist_flutter_project/homework/fruit_grid.dart';
import 'package:nist_flutter_project/homework/fruit_list.dart';
import 'package:nist_flutter_project/homework/home.dart';
import 'package:nist_flutter_project/list_view_builder_page.dart';
import 'package:nist_flutter_project/list_view_page.dart';
import 'package:nist_flutter_project/multi_list_view_example.dart';
import 'package:nist_flutter_project/my_card_list.dart';
import 'package:nist_flutter_project/mycard.dart';
import 'package:nist_flutter_project/pages/solar_systemhomepage.dart';

void main(){
  runApp(MyApp());
}
//webko lagi yo class
class MobileLikeScrollBehaviour extends MaterialScrollBehavior{
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,

  };
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      scrollBehavior: MobileLikeScrollBehaviour(),
      routes: {
        "/fruit-details": (ctx){
          return FruitDetails();
        },
        "/": (ctx){
          return SolarSystemHomePage();
        },
      },
      initialRoute: "/",
    );

  }

}


class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }

}

class _MyHomePageState extends State<MyHomePage>{
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                "This is statefull widget $count",
                style: TextStyle(
                  color:Colors.red,
                  fontSize: 34,
                  fontWeight: FontWeight.w400,
                  
                ),
              ),
              BoxContainer(),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            count = count + 1;
            setState(() {
              
            });
          },
          child: Icon(
            Icons.home,
          ),
          
        ),
      ),
    );
  }

}


