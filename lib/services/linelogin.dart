import 'package:flutter/services.dart';
import 'package:flutter_line_sdk/flutter_line_sdk.dart';

Future<void> loginwithline() async {
  try {
    LineSDK.instance.setup("${1655103599}");
  } on PlatformException catch (e) {
    print(e.message);
  }
}
