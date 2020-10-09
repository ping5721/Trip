import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

Widget buildButtonGoogle() {
  return SignInButton(Buttons.Google, onPressed: () {});
}

Future loginWithGoogle(BuildContext context) async {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
  GoogleSignInAccount user = await _googleSignIn.signIn();
  GoogleSignInAuthentication userAuth = await user.authentication;
}
