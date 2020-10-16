import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
            ),
            Text('Possawat Wongwikrom')
          ],
        ),
      ),
    ));
  }
}
