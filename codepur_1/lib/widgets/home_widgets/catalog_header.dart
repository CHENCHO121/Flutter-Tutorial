import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:codepur_1/widgets/theme.dart';
class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Trending Product".text.xl2.make(),
      ],
    );
  }
}