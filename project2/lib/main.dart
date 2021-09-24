import 'package:flutter/material.dart';
import 'package:project2/bg_image.dart';
import 'package:project2/drawer.dart';
import 'package:project2/login_page.dart';


void main(){
  runApp(
    MaterialApp(
      title: "Awesome App",
      //home: HomePage(),
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
    ),
  );
}


class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController=TextEditingController();
  var myTxt="Change Me";
  @override

  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.grey[200],
     appBar: AppBar(title: Text("Awesome App"),),
     body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: SingleChildScrollView(
           child: Card(
         child: Column(
           children:<Widget> [
             BgImage(),
             Text(myTxt,style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.all(16.0),
               child: TextField(
                 controller: _nameController,
                 keyboardType: TextInputType.text,
                 //obscureText: true,
                 decoration: InputDecoration(
                   border: OutlineInputBorder(),
                   hintText: "Enter SomeThing Here!",
                   labelText: "Name"

                 ),
               ),

             ),
           ],
         ),

       ),
         )
       ),
     
     drawer: MyDrawer(),
     floatingActionButton: FloatingActionButton(
       onPressed:(){
         myTxt=_nameController.text;
         setState(() {
           
         });
        
       },
       child: Icon(Icons.refresh)
       
     ),
   );
  }
}