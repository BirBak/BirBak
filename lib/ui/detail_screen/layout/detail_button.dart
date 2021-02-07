import 'package:birbak/ui/kisi_detay_screen/kisi_detay_screen_view.dart';
import 'package:flutter/material.dart';

class DetailButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 60,
      width: 150,
      child: InkWell(
        onTap: () =>
            Navigator.pushNamed(context, KisiDetayScreenView.routeNames),
        child: Center(
          child: Text(
            "Hasar Görenler",
            style: TextStyle(
              color: Color(0xFF992229),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
