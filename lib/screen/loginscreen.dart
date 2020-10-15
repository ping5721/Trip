import 'package:TripApp/widgets/facebookbutton.dart';
import 'package:TripApp/widgets/googlebutton.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key key}) : super(key: key);

  @override
  _LoginscreenState createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
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
              Container(width: 300, child: buildButtonFacebook()),
              Container(width: 300, child: buildButtonGoogle()),
            ],
          ),
        ),
      ),
    );
  }
}
