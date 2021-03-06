import 'package:TripApp/services/googlelogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInButton(
      Buttons.Google,
      onPressed: () async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('email', 'useremail@gmail.com');
        signInWithGoogle().whenComplete(
          () {
            Navigator.pushReplacementNamed(context, '/usernamecreate');
          },
        );
      },
    );
  }
}
