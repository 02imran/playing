import 'dart:developer';  // Import for logging
import 'package:flutter/foundation.dart';

class AppLogs {
  AppLogs._();

  static String get _getCurrentTime {
    final DateTime now = DateTime.now();
    return "${now.minute}:${now.second}:${now.millisecond}";
  }


  static void successLog(String message, [String tag = 'success']) {
    if (kDebugMode) {
      log(
          '\x1B[37m$tag ✅✅✅✅✅✅✅✅✅: $message\x1B[0m',
          name: 'Success $_getCurrentTime',
          level: 0
      );
    }
  }

  // Debug Log
  static void debugLog(String message, [String tag = 'debug']) {
    if (kDebugMode) {
      log(
          '\x1B[36m$tag 🪈🪈🪈🪈🪈🪈🪈🪈🪈: $message\x1B[0m',
          name: 'Debug $_getCurrentTime',
          level: 700
      );
    }
  }

  // Info Log
  static void infoLog(String message, [String tag = 'info']) {
    log(
        '\x1B[34m$tag : $message\x1B[0m',
        name: 'Info $_getCurrentTime',
        level: 800
    );
  }

  // Error Log
  static void errorLog(String message, [String tag = 'error']) {
    log(
        '\x1B[31m$tag : $message\x1B[0m',  // Red color for errors
        name: 'Error $_getCurrentTime',
        level: 1000  // Level 1000 for error logs
    );
  }
}
