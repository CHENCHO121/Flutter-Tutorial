import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
       child:ListView(
         padding: EdgeInsets.zero,
         children:<Widget> [
          //  DrawerHeader(
          //    child: Text("hi iam drawer",style: TextStyle(color: Colors.white),),
          //    decoration: BoxDecoration(color: Colors.purple),
          //  ),
          UserAccountsDrawerHeader(
            accountName: Text("Chencho Gyeltshen"),
            accountEmail: Text("webnets2020@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://images.unsplash.com/photo-1557862921-37829c790f19?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
            )

          ),
           ListTile(
             leading: Icon(Icons.person),
             title: Text("Personal"),
             trailing:Icon(Icons.edit)
           ),

           ListTile(
             leading: Icon(Icons.email),
             title: Text("webnets2020@gmail.com"),
             trailing: Icon(Icons.send),
           )

         ],
       ),
     );
  }

}