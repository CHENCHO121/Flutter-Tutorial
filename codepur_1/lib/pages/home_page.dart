import 'dart:ffi';

import 'package:codepur_1/models/catalog.dart';
import 'package:codepur_1/widgets/drawer.dart';
import 'package:codepur_1/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "WebNet";

  @override
  void initState() {
    super.initState();
    loadData();
    
  }

  loadData()async{
    final DataJson=await rootBundle.loadString("assets/files/data.json");
    
    final decodedData=jsonDecode(DataJson);
    var productData=decodedData['products'];
    print(productData);

    
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
