import 'package:birbak/service/earth_quake_service.dart';
import 'package:flutter/material.dart';

class HomeScreenView extends StatelessWidget {
  static const routeNames = '/Home';
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
              return ListView.builder(
                  itemBuilder: (context, index) => Card(
                        child: Text('${snapshot.data[index].sehir}'),
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
