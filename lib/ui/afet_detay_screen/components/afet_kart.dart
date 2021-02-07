import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AfetKart extends StatelessWidget {
  final String name;
  final Color color;
  final String tarih;
  final String saat;
  final String subtitle;
  final Color backgroundColor;
  final Color backgroundColor2;
  final Function onPress;
  final FontWeight fontWeight;

  const AfetKart({
    Key key,
    this.name,
    this.color,
    this.onPress,
    this.fontWeight,
    this.backgroundColor,
    this.backgroundColor2,
    this.subtitle,
    this.tarih,
    this.saat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 200,
                    child: Text(
                      name,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: color,
                        fontSize: 19,
                        fontWeight: fontWeight,
                      ),
                    ),
                  ),
                  Text(
                    subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color,
                      fontSize: 19,
                      fontWeight: fontWeight,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '$tarih',
                    style: TextStyle(
                      color: color,
                      fontSize: 19,
                      fontWeight: fontWeight,
                    ),
                  ),
                  Text(
                    '$saat',
                    style: TextStyle(
                      color: color,
                      fontSize: 19,
                      fontWeight: fontWeight,
                    ),
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
