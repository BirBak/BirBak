import 'package:birbak/ui/afet_detay_screen/components/AfetKart.dart';
import 'package:flutter/material.dart';

class AfetDetayScreenView extends StatelessWidget {
  static Icon icon = Icon(Icons.keyboard_arrow_right);
  static Color bg = Color(0xff4285F4);
  static Color bg2 = Colors.blue[100];
  static Color color = Colors.black;
  final List<AfetKart> disasters = [
    AfetKart(
      name: 'İzmir Depremi',
      subtitle: 'sadasfaffa',
      icon: icon,
      color:color,
      onPress: () => null,
      backgroundColor: bg,
      backgroundColor2: bg2,
    ),
    AfetKart(
      name: 'Vandaki Çığ Felaketi',
      subtitle: 'sadasfaffa',
      icon: icon,
      color:color,
      onPress: () => null,
      backgroundColor: bg,
      backgroundColor2: bg2,
    ),
    AfetKart(
      name: 'İzmirdeki Sel Felaketi',
      subtitle: 'sadasfaffa',
      icon: icon,
      color:color,
      onPress: () => null,
      backgroundColor: bg,
      backgroundColor2: bg2,
    ),
    AfetKart(
      name: 'İzmirdeki Sel Felaketi',
      subtitle: 'sadasfaffa',
      icon: icon,
      color:color,
      onPress: () => null,
      backgroundColor: bg,
      backgroundColor2: bg2,
    ),
    AfetKart(
      name: 'İzmirdeki Sel Felaketi',
      subtitle: 'sadasfaffa',
      icon: icon,
      color:color,
      onPress: () => null,
      backgroundColor: bg,
      backgroundColor2: bg2,
    ),
    AfetKart(
      name: 'İzmirdeki Sel Felaketi',
      subtitle: 'sadasfaffa',
      icon: icon,
      color:color,
      onPress: () => null,
      backgroundColor: bg,
      backgroundColor2: bg2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(50, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(22.0)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      hintStyle: TextStyle(color: Colors.white),
                      icon: Icon(Icons.search, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Center(
          child: Container(
            width: 1200,
            alignment: Alignment.center,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Center(
              child: ListView.builder(
                  itemCount: disasters.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Expanded(
                        child: Container(
                          child: disasters[index],
                        ),
                      )),
            ),
          ),
        ),
      ),
    );
  }
}
