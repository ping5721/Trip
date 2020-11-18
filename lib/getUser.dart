import 'dart:convert';

import 'package:http/http.dart' as http;

Future getUser() async {
  var response = await http.get(
      "https://us-central1-travel-app-dbeff.cloudfunctions.net/widgets/test4");
  var result = Map<dynamic, dynamic>.from(jsonDecode(response.body));

  print(result);
  return result;
}
