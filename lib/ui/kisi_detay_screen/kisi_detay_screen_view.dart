import 'package:birbak/ui/kisi_detay_screen/components/KisiKart.dart';
import 'package:flutter/material.dart';

class KisiDetayScreenView extends StatelessWidget {
  static Color color = Colors.black;
  static Color bg = Color(0xff0F9D58);
  static Color bg2 = Colors.white;
  static List<KisiKart> kisiler = [
    KisiKart(
      name: 'Seda',
      lastname: 'Güngör',
      subtitle: 'Maddi zararı 5000 TL.',
      color:color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '20',
    ),
    KisiKart(
      name: 'Sevgi',
      lastname: 'Deniz',
      subtitle: 'Maddi zararı 8000 TL.',
      color:color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '57',
    ),
    KisiKart(
      name: 'Ahmet',
      lastname: 'Yaman',
      subtitle: 'Maddi zararı 3000 TL.',
      color:color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '78',
    ),
    KisiKart(
      name: 'Ayşe',
      lastname: 'Alioğlu',
      subtitle: 'Maddi zararı 2000 TL.',
      color:color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '82',
    ),
    KisiKart(
      name: 'Tunç',
      lastname: 'Doymaz',
      subtitle: 'Maddi zararı 1000 TL.',
      color:color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '34',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green[900],
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
        body: ListView.builder(
            itemCount: kisiler.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Expanded(
                  child: Container(
                    child: kisiler[index],
                  ),
                )),
      ),
    );
  }
}
