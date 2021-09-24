import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
    home: MyBotNav(),
  ));
}

class MyBotNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyBotNavState();
  }
}

class _MyBotNavState extends State<MyBotNav> {
  Color bgcolor = Colors.blueAccent;
  var txt = "Home page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Text(txt,style: TextStyle(fontSize: 50.0),),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: bgcolor,
        items: [
          Icon(Icons.login),
          Icon(Icons.search),
          Icon(Icons.app_registration)
        ],
        onTap: (index) {
          setState(() {
            if (index == 0) {
              bgcolor = Colors.blueAccent;
              txt = "login page";
            }
            if (index == 1) {
              bgcolor = Colors.yellowAccent;
              txt = "search page";
            }
            if (index == 2) {
              bgcolor = Colors.pinkAccent;
              txt = "logout page";
            }
          });
        },
      ),
    );
  }
}
