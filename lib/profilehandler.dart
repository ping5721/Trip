import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProfileHandler extends ChangeNotifier {
  String profileurl;
  Future getPhoto() async {
    var response =
        await http.get('https://jsonplaceholder.typicode.com/photos');
    var profileurl = json.decode(response.body);
    return profileurl[0]["url"];
  }
}
