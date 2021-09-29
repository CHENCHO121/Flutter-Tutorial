import 'package:codepur_1/models/catalog.dart';
import 'package:codepur_1/utils/route.dart';
import 'package:codepur_1/widgets/home_widgets/catalog_header.dart';
import 'package:codepur_1/widgets/home_widgets/catalog_list.dart';
//import 'package:codepur_1/widgets/drawer.dart';
//import 'package:codepur_1/widgets/item_widget.dart';
import 'package:codepur_1/widgets/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';



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
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.cart),
        backgroundColor: MyTheme.darkBluishColor,
        onPressed: (){
          Navigator.pushNamed(context, MyRoute.CartRoute);
        },
        ),

      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            )),
      ),
    );
  }
}