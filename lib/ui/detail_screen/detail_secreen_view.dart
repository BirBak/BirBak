import 'package:birbak/ui/detail_screen/layout/carousel_section.dart';
import 'package:birbak/ui/detail_screen/layout/detail_button.dart';
import 'package:birbak/ui/detail_screen/layout/detail_section.dart';
import 'package:flutter/material.dart';

class DetailsScreenView extends StatelessWidget {
  static const routeNames = '/afet/haber/detay';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        elevation: 10.0,
        backgroundColor: Colors.blue,
        title: Text("Bir Bak - Detay"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Carousel(), Detail(), DetailButton()],
      ),
    );
  }
}
