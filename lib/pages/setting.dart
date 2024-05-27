import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown,
      child:  const Center(
        child: Text(
          "Setting",
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
