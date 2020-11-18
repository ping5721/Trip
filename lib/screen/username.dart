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
                      color: Color(0xff56C596),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  'Create username',
                  style: TextStyle(
                      color: Color(0xff56C596),
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
                padding: EdgeInsets.only(left: 10, bottom: 5),
                height: 40,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: TextField(
                  textAlign: TextAlign.start,
                  onChanged: (text) {
                    userid = text.toLowerCase();
                  },
                  textCapitalization: TextCapitalization.none,
                  maxLines: 1,
                  decoration: InputDecoration(border: InputBorder.none),
                ),
                width: MediaQuery.of(context).size.width * 0.8,
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width * 0.8,
                child: RaisedButton(
                  color: Color(0xff56C596),
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
      ),
    );
  }
}
