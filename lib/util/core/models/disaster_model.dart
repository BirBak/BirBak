import 'package:flutter/material.dart';

class Disaster {
  String name;
  Icon icon;
  Function onPress;
  Color color;

  Disaster({
    this.name,
    this.color,
    this.icon,
    this.onPress,
  });
}
