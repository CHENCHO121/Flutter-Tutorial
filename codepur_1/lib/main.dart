import 'package:codepur_1/pages/home_page.dart';
import 'package:codepur_1/pages/login_page.dart';
import 'package:codepur_1/utils/route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,

      initialRoute: MyRoute.HomeRoute,

      routes: {
        "/": (context) => LoginPage(),
        MyRoute.HomeRoute: (context) => HomePage(),
        MyRoute.LoginRoute: (context) => LoginPage(),
      },
    );
  }
}
