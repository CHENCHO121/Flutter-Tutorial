import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MySnackBar(),
  ));
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Snack Bar")),
      body: Builder(builder:(context){
        return Center(
        child: RaisedButton(
          child: Text("show snack bar"),
          onPressed: () {
            final snackbar = SnackBar(
              content: Text("i am your snack bar"),
              action: SnackBarAction(label: "undo", onPressed:(){
                
              }),
              );

            Scaffold.of(context).showSnackBar(snackbar);
          },),
      );
        
      })
    );
  }
}
