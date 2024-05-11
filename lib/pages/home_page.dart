import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:real_ecommerce_app/widgets/home_page_header.dart';

import '../widgets/appcolors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List catName = [
    'Clothes',
    'Electonic',
    'Laptops',
    'Shoes',
    'Smartphones',
    'Sports',
  ];

  List<Color> catColors = [
    Color(0xFFFFCF2F),
    Color(0xFF6FCE08D),
    Color(0xFF61BDFD),
    Color(0xFFFCF7F7),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
  ];

  List<Image> catImages = [
    Image.asset(
      'assets/caregoires/clothes.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/caregoires/electronig.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/caregoires/hpspector.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/caregoires/shoes.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/caregoires/clothes.png',
      height: 40,
      width: 40,
    ),
    Image.asset(
      'assets/caregoires/sports.jpg',
      height: 40,
      width: 40,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          GridView.builder(
            itemCount: catName.length,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, childAspectRatio: 1.1),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: catColors[index],
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: catImages[index],
                    ),
                  )
                ],
              );
            },
          )
        ],
      ),
    ));
  }
}
