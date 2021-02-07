import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AfetKart extends StatelessWidget {
  final String name;
  final Color color;
  final String subtitle;
  final Color backgroundColor;
  final Color backgroundColor2;
  final Function onPress;
  final Icon icon;
  final FontWeight fontWeight;
  const AfetKart({
    Key key,
    this.name,
    this.color,
    this.icon,
    this.onPress,
    this.fontWeight,
    this.backgroundColor,
    this.backgroundColor2,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: InkWell(
        onTap: onPress,
        child: Container(
          decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [backgroundColor, backgroundColor2]),
            border: Border.all(),
          ),
          padding: const EdgeInsets.all(10.0),
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 25,
                      fontWeight: fontWeight,
                    ),
                  ),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 25,
                      fontWeight: fontWeight,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'Tarih',
                        style: TextStyle(
                          color: color,
                          fontSize: 25,
                          fontWeight: fontWeight,
                        ),
                      ),
                      Text(
                        '02.04.2021',
                        style: TextStyle(
                          color: color,
                          fontSize: 25,
                          fontWeight: fontWeight,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Icon(Icons.monetization_on_outlined),
                    margin:
                        EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
                    padding: const EdgeInsets.all(20.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
