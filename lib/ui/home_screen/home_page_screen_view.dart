import 'package:birbak/ui/afet_detay_screen/afet_detay_screen_view.dart';
import 'package:birbak/ui/home_screen/components/basliklar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

FirebaseAuth _auth = FirebaseAuth.instance;

class HomePageScreenView extends StatelessWidget {
  static const routeNames = '/Home';
  // Example code for sign out.
  Future<void> _signOut() async {
    await _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    var headers = [
      Baslik(
        fontWeight: FontWeight.bold,
        background: Colors.brown,
        baslik: "Doğal Afetler",
        fontsize: 17.0,
        titlecolor: Colors.white,
        ontap: () =>
            Navigator.pushNamed(context, AfetDetayScreenView.routeNames),
      ),
      Baslik(
        fontWeight: FontWeight.bold,
        background: Colors.blue[700],
        baslik: "Sağlık",
        fontsize: 17.0,
        titlecolor: Colors.white,
      ),
      Baslik(
        fontWeight: FontWeight.bold,
        background: Colors.green,
        baslik: "İhtiyaç Sahipleri",
        fontsize: 17.0,
        titlecolor: Colors.white,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.blueGrey[600],
      appBar: AppBar(
        title: Text("Bir Bak"),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () => _signOut())
        ],
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
          height: 300,
          child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: headers.length,
              itemBuilder: (BuildContext context, int index) {
                return headers[index];
              }),
        ),
      ),
    );
  }
}
