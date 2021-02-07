import 'package:flutter/material.dart';

class Baslik extends StatelessWidget {
  const Baslik(
      {Key key,
      this.baslik,
      this.titlecolor,
      this.background,
      this.fontsize,
      this.fontWeight,
      this.ontap})
      : super(key: key);

  final String baslik;
  final Color background;
  final Color titlecolor;
  final double fontsize;
  final FontWeight fontWeight;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 0),
      child: InkWell(
        onTap: ontap,
        hoverColor: Colors.blueGrey[600],
        child: Container(
          decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.circular(30.0),
              ),
          height: 40,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "$baslik",
                style: TextStyle(
                  fontWeight: fontWeight,
                  fontSize: fontsize,
                  color: titlecolor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
