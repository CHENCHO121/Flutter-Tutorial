import 'package:flutter/material.dart';

class BgImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset("assets/bg1.jpg",
       fit: BoxFit.cover,color: Colors.black.withOpacity(0.7),
       colorBlendMode: BlendMode.darken,
      
      ),
      
    );
  }
}
