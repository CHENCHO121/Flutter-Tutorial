import 'package:codepur_1/models/catalog.dart';
import 'package:codepur_1/widgets/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget{

  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog}) :assert(catalog!=null), super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
      
                  children: [
                    "\$${catalog.price}".text.xl4.red800.bold.make(),
                    ElevatedButton(
                      onPressed: (){}, 
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                      child: Text("Buy"),
                      ).wh(100,50),
                  ],
                ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [

            Hero(
              tag:Key(catalog.id.toString()) ,
              child:Image.network(catalog.image)
              ).h32(context),

              Expanded(
                child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    width: context.screenWidth,
                    color: Colors.white,
                    child: Column(
                      children: [

                        catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                        catalog.desc.text.xl.make().expand(),

                        10.heightBox,


                      ],
                    ).py64(),
                  ),
                )
                )
            
          ],
        ),

      ),
    );
  }

}