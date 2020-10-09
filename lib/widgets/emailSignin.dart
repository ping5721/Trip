
import 'package:flutter/material.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';


Widget buildButtonEmail() {
  return SignInButton(
    Buttons.Email,
    onPressed: () {
      print('pressed');
    },
  );
}
