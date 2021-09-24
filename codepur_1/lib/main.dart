import 'package:codepur_1/pages/home_page.dart';
import 'package:codepur_1/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(brightness: Brightness.light),
      initialRoute: "/home",

      routes: {
        "/":(context)=>LoginPage(),
        "/home":(context)=>HomePage(),
        "/login":(context)=>LoginPage(),
      },
    );
  }
}
