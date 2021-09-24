import 'package:codepur_1/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isMale=true;
    //double pi=3.14;
    num temp=30;
    var day="Friday";
    const pi=3.14;


    return MaterialApp(
        home: HomePage()
    );
  }
}
