import 'package:codepur_1/models/catalog.dart';
import 'package:codepur_1/pages/cart_page.dart';
import 'package:codepur_1/pages/home_detail_page.dart';
import 'package:codepur_1/pages/home_page.dart';
import 'package:codepur_1/pages/login_page.dart';
import 'package:codepur_1/utils/route.dart';
import 'package:codepur_1/widgets/theme.dart';
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
      themeMode: ThemeMode.light,
      theme: MyTheme.ligthTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,

      initialRoute: MyRoute.HomeRoute,

      routes: {
        "/": (context) => LoginPage(),
        MyRoute.HomeRoute: (context) => HomePage(),
        MyRoute.LoginRoute: (context) => LoginPage(),
        MyRoute.CartRoute: (context) => CartPage(),
        //MyRoute.HomeDetailRoute:(context)=>HomeDetailPage(),
      },
    );
  }
}
