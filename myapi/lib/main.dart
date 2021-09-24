import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main(){
runApp(
  MaterialApp(
    home: MyApi()
  )
);


}

class MyApi extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyApiState();
  }

}

class _MyApiState extends State<MyApi>{
  String getData="";
  var getList=[];
  Future fetchData() async{
    http.Response response;
    response=await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/"));


    if(response.statusCode==200){
      setState(() {
        //getData=response.body;
        getList=json.decode(response.body);

      });
    }


  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Api"),),
      body:ListView.builder(
        itemCount: getList==null?0:getList.length,
        itemBuilder:(BuildContext context,int index){
          return Container(
            child:Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:<Widget> [

                  Card(
                    child:Container(
                      child:Text(getList[index].toString(),style: TextStyle(fontSize: 20.0),) ,
                      padding: EdgeInsets.all(20.0),
                      ) ,
                  )

                ],
              ),

            ),
            );
        }
        )
    );
  }

}
