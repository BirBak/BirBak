import 'package:birbak/ui/kisi_detay_screen/components/kisi_kart.dart';
import 'package:birbak/util/core/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class KisiDetayScreenView extends StatelessWidget {
  static const routeNames = '/afet/haber/detay/afetzedeler';
  static Color color = Colors.black;
  static Color bg = Color(0xff0F9D58);
  static Color bg2 = Colors.white;
  static List<KisiKart> kisiler = [
    KisiKart(
      name: 'Seda',
      lastname: 'Güngör',
      subtitle: 'Maddi zararı 5000 TL.',
      color: color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '20',
    ),
    KisiKart(
      name: 'Sevgi',
      lastname: 'Deniz',
      subtitle: 'Maddi zararı 8000 TL.',
      color: color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '57',
    ),
    KisiKart(
      name: 'Ahmet',
      lastname: 'Yaman',
      subtitle: 'Maddi zararı 3000 TL.',
      color: color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '78',
    ),
    KisiKart(
      name: 'Ayşe',
      lastname: 'Alioğlu',
      subtitle: 'Maddi zararı 2000 TL.',
      color: color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '82',
    ),
    KisiKart(
      name: 'Tunç',
      lastname: 'Doymaz',
      subtitle: 'Maddi zararı 1000 TL.',
      color: color,
      backgroundcolor: bg,
      backgroundcolor2: bg2,
      yas: '34',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: searchBar(),
      body: ListView.builder(
          itemCount: kisiler.length,
          shrinkWrap: true,
          itemBuilder: (context, index) => Expanded(
                child: Container(
                  child: kisiler[index],
                ),
              )),
    );
  }
}
