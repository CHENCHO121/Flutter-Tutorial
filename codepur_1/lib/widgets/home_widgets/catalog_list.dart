import 'package:codepur_1/models/catalog.dart';
import 'package:codepur_1/pages/home_detail_page.dart';
import 'package:flutter/material.dart';

import 'package:velocity_x/velocity_x.dart';
import 'package:codepur_1/widgets/theme.dart';

import 'catalog_image.dart';


class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(

            onTap: ()=>Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context)=>HomeDetailPage(
                  catalog:catalog,
                ),
              ),
            ),


            child: CatalogItem(catalog: catalog)
            
            );
        });
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return VxBox(
        child: Row(
        
      children: [

        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image
            ),
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
              catalog.desc.text.make().expand(),

              10.heightBox,

              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,

                children: [
                  "\$${catalog.price}".text.lg.bold.make(),
                  ElevatedButton(
                    onPressed: (){}, 
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder()),
                    ),
                    child: Text("Buy"),
                    )
                ],
              ).pOnly(right: 8.0)
            ],
          ),
        )
      ],
    )).white.roundedLg.square(150).make().py16();
  }
}