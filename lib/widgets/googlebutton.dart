
import 'package:TripApp/services/googlelogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class BuildbuttonGoogle extends StatelessWidget {
  const BuildbuttonGoogle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInButton(
      Buttons.Google,
      onPressed: () {
        signInWithGoogle();
      },
    );
  }
}
