import 'package:TripApp/services/googlelogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

Widget buildButtonGoogle() {
  return SignInButton(Buttons.Google, onPressed: () {
    signInWithGoogle();
  });
}
