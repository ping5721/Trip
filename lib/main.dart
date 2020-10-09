import 'package:TripApp/services/emailservice.dart';
import 'package:TripApp/widgets/facebookSignin.dart';
import 'package:TripApp/widgets/googleSignin.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TripApp',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Loginscreen(),
    );
  }
}

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  FirebaseAuth auth = FirebaseAuth.instance;
  String email;
  String password;
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Username'),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                    shape: BoxShape.rectangle),
                child: Form(
                  key: _formkey,
                  child: TextFormField(
                    validator: (text) {
                      if (text.isEmpty) return 'Press enter valid email';
                      if (!text.contains('@')) return 'Invalid email';
                      return null;
                    },
                    onSaved: (text) {
                      setState(
                        () {
                          email = text;
                          print(email);
                        },
                      );
                    },
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
              ),
              Text('Password'),
              Container(
                width: 300,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                    shape: BoxShape.rectangle),
                child: TextFormField(
                  onSaved: (text) {
                    setState(() {
                      password = text;
                    });
                  },
                  decoration: InputDecoration(border: InputBorder.none),
                ),
              ),
              Container(
                width: 300,
                child: Container(
                    child: SignInButtonBuilder(
                  key: ValueKey("Email"),
                  text: 'Sign in with Email',
                  icon: Icons.email,
                  backgroundColor: Colors.grey[700],
                  onPressed: () {
                    if (_formkey.currentState.validate()) {
                      _formkey.currentState.save();
                      signup(email, password);
                    }
                  },
                )),
              ),
              Container(width: 300, child: buildButtonFacebook()),
              Container(width: 300, child: buildButtonGoogle()),
            ],
          ),
        ),
      ),
    );
  }
}
