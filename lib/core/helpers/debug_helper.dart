import 'dart:developer';
import 'package:flutter/foundation.dart';

class DebugHelper {
  static debugPrint(Object? object, [bool isLongMessage = false]) {
    if (kDebugMode) {
      if (isLongMessage) {
        log(object.toString());
      } else {
        print(object);
      }
    }
  }
}
