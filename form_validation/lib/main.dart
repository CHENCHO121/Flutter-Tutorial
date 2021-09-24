import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyForm(),
  ));
}

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyFormState();
  }
}

class _MyFormState extends State<MyForm> {
  var _MyFormKey = GlobalKey<_MyFormState>();
  var _password=TextEditingController();
  var _confirmPassword=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Form"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
        child: Form(
          key: _MyFormKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (msg) {
                    if (msg == "") {
                      return "Please enter name";
                    }
                    
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(fontSize: 20.0),
                      hintText: "enter your name",
                      hintStyle: TextStyle(fontSize: 20.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (msg){
                    if(msg==""){
                      print("please enter your mobile number");

                    }
                  },
                  decoration: InputDecoration(
                      labelText: "Mobile",
                      hintText: "enter your mobile number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: _password,
              
                  validator: (msg){
                    if(msg==""){
                      print("please enter your password");

                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: _confirmPassword,
                  validator: (msg){
                    if(msg!=_password.value.text){
                      return "plz enter same password";

                    }
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      hintText: "Confirm your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          _MyFormKey.currentState;
        },
      ),
    );
  }
}
