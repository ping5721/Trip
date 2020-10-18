import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

String userid;
bool disableButton;

class UsernameCrate extends StatelessWidget {
  const UsernameCrate({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Sign up',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text(
                'Create username',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              width: MediaQuery.of(context).size.width * 0.8,
              child: Text('You can always change this later.',
                  style: TextStyle(color: Colors.grey, fontSize: 14)),
            ),
            Container(
              child: TextField(
                onChanged: (text) {
                  userid = text.toLowerCase();
                },
                textCapitalization: TextCapitalization.none,
                maxLength: 10,
                maxLines: 1,
                decoration: InputDecoration(border: InputBorder.none),
              ),
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width * 0.8,
              child: RaisedButton(
                color: Colors.redAccent,
                disabledColor: Colors.grey[300],
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/homepage');
                },
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
