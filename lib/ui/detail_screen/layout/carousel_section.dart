import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20, bottom: 20, left: 10),
      decoration: BoxDecoration(),
      height: 300,
      width: 400,
      child: CarouselSlider(
        options: CarouselOptions(height: 400.0),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text(
                    'resim $i',
                    style: TextStyle(fontSize: 16.0),
                  ));
            },
          );
        }).toList(),
      ),
    );
  }
}
