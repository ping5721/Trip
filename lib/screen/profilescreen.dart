import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future getPhoto() async {
  var response = await http.get('https://jsonplaceholder.typicode.com/photos');
  var data = json.decode(response.body.toString());

  print(data);
  return response;
}

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
            InkWell(
              onTap: () async {
                await getPhoto();
              },
              child: CircleAvatar(
                radius: 30,
              ),
            ),
            InkWell(
              child: Text('Possawat Wongwikrom'),
              onTap: () {
                print('Tapped');
              },
            )
          ],
        ),
      ),
    ));
  }
}
