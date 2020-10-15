import 'package:flutter/services.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';

Future<void> loginwithline() async {
  try {
    final result = await LineSDK.instance.login();
    LineSDK.instance.setup("${1655103599}").then((_) {
      print("LineSDK Prepared");
    });
  } on PlatformException catch (e) {
    print(e.message);
  }
}
