import 'package:codepur_1/models/catalog.dart';
import 'package:codepur_1/widgets/drawer.dart';
import 'package:codepur_1/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   final int days = 30;
    final String name = "WebNet";
  @override
  Widget build(BuildContext context) {
    final dummyList=List.generate(20, (index) => CatalogModel.items[0]);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return ItemWidget(item: dummyList[index],);

        },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
