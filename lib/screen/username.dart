import 'package:flutter/material.dart';

class UsernameCrate extends StatelessWidget {
  const UsernameCrate({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Create username'),
            Text('You can always change this later.'),
            Container(
              child: TextField(),
              width: MediaQuery.of(context).size.width * 0.5,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
              child: Text('Sign up'),
            )
          ],
        ),
      ),
    ));
  }
}
