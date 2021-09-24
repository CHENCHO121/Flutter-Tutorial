import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Awesome App", home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Awesome App"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.black,
                width: 200,
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      width: 100,
                      height: 100,
                      color: Colors.greenAccent,
                    ),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      width: 100,
                      height: 100,
                      color: Colors.yellowAccent,
                    ),
                  ],
                ),
              ),
            )));
  }
}
