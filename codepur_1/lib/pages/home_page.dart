
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

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final DataJson = await rootBundle.loadString("assets/files/data.json");

    final decodedData = jsonDecode(DataJson);
    var productData = decodedData['products'];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            ),
          itemBuilder: (context,index){
            final item=CatalogModel.items[index];
            return Card(
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: GridTile(
                header: Container(
                  child: Text(item.name,style: TextStyle(color: Colors.white),),
                  padding: const EdgeInsets.all(12.0),

                  decoration: BoxDecoration(
                    color: Colors.deepPurple
                    
                  ),
                  ),
                child: Image.network(item.image),
                footer: Container(
                  child: Text(item.price.toString(),style: TextStyle(color: Colors.white),),
                  decoration: BoxDecoration(
                    color: Colors.black

                  ),
                  ),
                
                ),
                

            );
          },

          itemCount: CatalogModel.items.length,

          ),
            
      ),
      drawer: MyDrawer(),
    );
  }
}
