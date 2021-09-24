import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(MaterialApp(
    home: MySlider(),
  ));
}

class MySlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                height: 400.0,
                enlargeCenterPage: true,
              ),
              items: _imgurl.map((imagepath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      
                      child: Image.network(imagepath)
                    );
                  },
                );
              }).toList())),
    );
  }

  //final List _source = [Colors.red, Colors.yellow, Colors.black];
  final List _imgurl=[
    'https://stimg.cardekho.com/images/carexteriorimages/630x420/Lamborghini/Urus/4418/Lamborghini-Urus-V8/1621927166506/front-left-side-47.jpg?tr=w-300',
    'https://stimg.cardekho.com/images/carexteriorimages/630x420/MG/Hector/8247/1610019377144/front-left-side-47.jpg?impolicy=resize&imwidth=480',
    'https://cdn.motor1.com/images/mgl/8e8Mo/s1/most-expensive-new-cars-ever.webp'
  ];
}
