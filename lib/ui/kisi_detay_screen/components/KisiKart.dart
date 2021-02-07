import 'package:flutter/material.dart';

class KisiKart extends StatelessWidget {
  final String name;
  final String lastname;
  final String yas;
  final Icon icon;
  final Color color;
  final Function onPress;
  final Color backgroundcolor;
  final Color backgroundcolor2;
  final String subtitle;
  const KisiKart({
    Key key,
    this.name,
    this.lastname,
    this.yas,
    this.subtitle,
    this.icon,
    this.color,
    this.onPress,
    this.backgroundcolor,
    this.backgroundcolor2,
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [backgroundcolor, backgroundcolor2]),
            border: Border.all(
              color: color,
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,

                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$name $lastname',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '$yas yaşında',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    '$subtitle',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
                padding: const EdgeInsets.all(20.0),
                child: Icon(
                  Icons.add_circle_outline_rounded,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
