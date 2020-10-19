import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

Future loginWithFacebook() async {
  await Firebase.initializeApp();
  FirebaseAuth auth = FirebaseAuth.instance;

  final facebookLogin = FacebookLogin();
  final result = await facebookLogin.logIn(['email']);
}
