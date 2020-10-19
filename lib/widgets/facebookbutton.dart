import 'package:TripApp/services/facebooklogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInButton(
      Buttons.FacebookNew,
      onPressed: () {
        loginWithFacebook();
      },
    );
  }
}
