import 'package:flutter/material.dart';

AppBar searchBar() {
  return AppBar(
    backgroundColor: Colors.green[900],
    title: Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(50, 255, 255, 255),
        borderRadius: BorderRadius.all(Radius.circular(22.0)),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white),
          icon: Icon(Icons.search, color: Colors.white),
        ),
      ),
    ),
  );
}
