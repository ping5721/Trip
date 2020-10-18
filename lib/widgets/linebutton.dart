import 'package:TripApp/services/linelogin.dart';
import 'package:flutter/material.dart';

class LineButton extends StatelessWidget {
  const LineButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: RaisedButton(
        onPressed: () {
          loginwithline().whenComplete(
              () => Navigator.pushReplacementNamed(context, '/usernamecreate'));
        },
        color: Colors.green,
        child: Text(
          'Log in with LINE',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
