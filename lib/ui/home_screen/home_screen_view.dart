import 'package:birbak/util/core/models/earth_quake_model.dart';
import 'package:birbak/util/service/earth_quake_service.dart';
import 'package:flutter/material.dart';

class HomeScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: EarthQuakeService().fetchEQ(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            } else if (snapshot.hasData) {
              var list = <EarthQuake>[];
              for (var quake in snapshot.data) {
                if (double.tryParse(quake.siddet) > 3) list.add(quake);
              }
              return ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) => Card(
                        child:
                            Text('${list[index].yer} /${list[index].siddet}'),
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
