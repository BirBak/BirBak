import 'package:birbak/ui/afet_detay_screen/components/afet_kart.dart';
import 'package:birbak/ui/detail_screen/detail_secreen_view.dart';
import 'package:birbak/util/core/widgets/search_bar.dart';
import 'package:birbak/util/service/earth_quake_service.dart';
import 'package:flutter/material.dart';

class AfetDetayScreenView extends StatelessWidget {
  static const routeNames = '/afet';
  static Icon icon = Icon(Icons.keyboard_arrow_right);
  static Color bg = Color(0xff4285F4);
  static Color bg2 = Colors.blue[100];
  static Color color = Colors.black;
  static var afetKart = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: searchBar(),
      body: FutureBuilder(
          future: EarthQuakeService().fetchEQ(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else if (snapshot.hasData) {
              for (var quake in snapshot.data) {
                if (double.tryParse(quake.siddet) >= 3.5) {
                  afetKart.add(AfetKart(
                    name: quake.yer,
                    subtitle: quake.siddet,
                    tarih: quake.tarih,
                    saat: quake.saat,
                    color: color,
                    onPress: () => Navigator.pushNamed(
                        context, DetailsScreenView.routeNames),
                    backgroundColor: bg,
                    backgroundColor2: bg2,
                  ));
                }
              }
              return ListView.builder(
                  itemCount: afetKart.length,
                  itemBuilder: (context, index) => Card(
                        child: afetKart[index],
                      ));
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
