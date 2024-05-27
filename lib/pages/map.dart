import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child:  const Center(
        child: Text(
          "Map",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
