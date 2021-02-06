import 'package:birbak/views/home_screen/home_screen_view.dart';
import 'package:birbak/views/login_screen/login_screen_view.dart';
import 'package:birbak/views/register_screen/register_screen_view.dart';
import 'package:birbak/views/sign_in_screen/sign_in_screen_view.dart';
import 'package:birbak/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BirBak - Birlik Vakti',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) => SplashScreen(),
        AuthTypeSelector.routeNames: (_) => AuthTypeSelector(),
        HomeScreenView.routeNames: (_) => HomeScreenView(),
        RegisterPage.routeNames: (_) => RegisterPage(),
        SignInPage.routeNames: (_) => SignInPage(),
      },
    );
  }
}
