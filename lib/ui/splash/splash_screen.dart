import 'package:after_init/after_init.dart';
import 'package:birbak/ui/auth_screen/auth_screen_view.dart';
import 'package:birbak/ui/home_screen/home_page_screen_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with AfterInitMixin<SplashScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () async {
      final user = await _auth.currentUser?.uid;
      if (user == null) print('usernull');
      return Navigator.pushReplacementNamed(
          context,
          user == null
              ? AuthTypeSelector.routeNames
              : HomePageScreenView.routeNames);
    });
  }

  @override
  void didInitState() {
    // TODO: implement didInitState
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Spacer(),
          Image.asset(
            'assets/img/logo/logo_splash.png',
            width: 250,
          ),
          Spacer()
        ],
      ),
    ));
  }
}
