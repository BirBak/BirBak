import 'package:birbak/views/home_screen/home_screen_view.dart';
import 'package:birbak/views/login_screen/login_screen_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:after_init/after_init.dart';

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

    Future.delayed(Duration(seconds: 2), () async {
      final user = await _auth.currentUser?.uid;
      if (user == null) print('usernull');
      return Navigator.pushReplacementNamed(
          context,
          user == null
              ? AuthTypeSelector.routeNames
              : HomeScreenView.routeNames);
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
            'assets/img/logo/logo_transparent.png',
            width: 250,
          ),
          Spacer()
        ],
      ),
    ));
  }
}
