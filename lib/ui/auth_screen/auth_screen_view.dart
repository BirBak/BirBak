import 'package:birbak/ui/register_screen/register_screen_view.dart';
import 'package:birbak/ui/sign_in_screen/sign_in_screen_view.dart';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_builder.dart';

/// Provides a UI to select a authentication type page
class AuthTypeSelector extends StatelessWidget {
  static const routeNames = '/auth';

  // Navigates to a new page
  void _pushPage(BuildContext context, String page) {
    Navigator.of(context).pushNamed(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BirBak - Birlik Vakti'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Spacer(),
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: SignInButtonBuilder(
                icon: Icons.verified_user,
                backgroundColor: Colors.orange,
                text: 'Sign In',
                onPressed: () => _pushPage(context, SignInPage.routeNames),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: SignInButtonBuilder(
                icon: Icons.person_add,
                backgroundColor: Colors.indigo,
                text: 'Registration',
                onPressed: () => _pushPage(context, RegisterPage.routeNames),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
