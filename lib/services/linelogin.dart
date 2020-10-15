import 'package:flutter/services.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';

linesdkinit() {
  LineSDK.instance.setup("${1655103599}");
}

Future linesignin() async {
  try {
    final result = await LineSDK.instance.login();
  } on PlatformException catch (e) {
    print(e.message);
  }
}

Future linelogout() async {
  try {
    await LineSDK.instance.logout();
    
  } on PlatformException catch (e) {
    print(e.message);
  }
}
