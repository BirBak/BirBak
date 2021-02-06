import 'package:flutter/material.dart';

import 'konu_basliklari.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bir Bak',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Bir Bak'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> basliklar = [
      Baslik(
        fontWeight: FontWeight.bold,
        background: Colors.brown,
        baslik: "Doğal Afetler",
        fontsize: 17.0,
        titlecolor: Colors.white,
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 30,horizontal: 50),
          height: 300,
          child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return basliklar[index];
              }),
        ),
      ),
    );
  }
}
